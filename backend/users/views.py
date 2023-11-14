import time

import requests

from typing import Tuple

from django.db import transaction
from django.db.models import Prefetch
from rest_framework import viewsets, permissions, status, mixins, generics
from rest_framework.authtoken.models import Token
from rest_framework.authtoken.views import ObtainAuthToken
from rest_framework.decorators import action
from rest_framework.generics import get_object_or_404
from rest_framework.response import Response
from rest_framework.views import APIView
from drf_yasg import openapi
from drf_yasg.utils import swagger_auto_schema


from learning.models import Subject, Lesson, LessonRating
from utils.authentication import UserPermission
from users.models import User, PasswordKey, CompletedTest
from users.serializers import UserSerializer, ForgottenPasswordSerializer, ResetPasswordSerializer, \
    ChangePasswordSerializer, AuthTokenSerializer, UserProgress, UserEmailSerializer
from django.conf import settings

from utils.email import send_email


class UserViewSet(viewsets.ModelViewSet):
    permission_classes = (UserPermission,)
    serializer_class = UserSerializer

    def get_queryset(self):
        qs = User.objects.all()
        if getattr(self, 'swagger_fake_view', False):
            return qs
        if not self.request.user.is_staff:
            qs = qs.filter(is_active=True)
        if self.action == 'user_progress':
            qs = qs.prefetch_related('completed_tests', 'completed_tests__test__lesson',
                                     'completed_tests__test__subject')
        return qs

    def get_object(self):
        if self.action == 'me':
            return get_object_or_404(User, id=self.request.user.id)
        return super().get_object()

    def get_serializer_context(self):
        context = super().get_serializer_context()
        if getattr(self, 'swagger_fake_view', False):
            return context
        if self.action == 'user_progress':
            context['subjects'] = Subject.objects.prefetch_related(
                Prefetch('lessons', queryset=Lesson.objects.filter(is_visible=True))
            ).filter(is_visible=True)
        context['user'] = self.request.user
        return context

    @action(detail=False, methods=['get'])
    def me(self, request, *args, **kwargs):
        return super().retrieve(request, *args, **kwargs)

    @action(detail=True, methods=['get'], serializer_class=UserProgress, url_path='progress')
    def user_progress(self, request, *args, **kwargs):
        """
        Return detailed progress of specified user
        """
        return super().retrieve(request, *args, **kwargs)

    @action(detail=False, methods=['post'], serializer_class=ForgottenPasswordSerializer,
            permission_classes=(permissions.AllowAny,))
    def forgot(self, request):
        """
        User forgot his password
        """
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        return Response({'message': 'msg_info_successfully_sent_password_token'}, status=status.HTTP_200_OK)

    @action(detail=False, methods=['put'], serializer_class=ResetPasswordSerializer,
            permission_classes=(permissions.AllowAny,), url_path='reset-password/(?P<password_key>[^/.]+)')
    def reset_password(self, request, password_key):
        """
        Reset password of user based on PasswordKey (created from email)
        """
        password_key = get_object_or_404(PasswordKey, password_key=str(password_key))
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = password_key.user
        user.set_password(serializer.data['new_password'])
        user.save()
        password_key.delete()
        return Response(status=status.HTTP_200_OK)

    @action(detail=True, methods=['put'], url_path='change-password', serializer_class=ChangePasswordSerializer)
    def change_password(self, request, *args, **kwargs):
        """
        Change authed user's password to new one
        """
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        request.user.set_password(serializer.data['new_password'])
        request.user.save()
        return Response(status=status.HTTP_204_NO_CONTENT)

    # todo: remove
    @action(detail=False, methods=['post'], url_path='lower-emails', permission_classes=(permissions.IsAdminUser,))
    def lower_users_emails(self, request, *args, **kwargs):
        bulk = []
        for user in User.objects.all():
            user.email = user.email.lower()
            bulk.append(user)
        User.objects.bulk_update(bulk, ['email'])
        return Response(data={'count': len(bulk)}, status=status.HTTP_202_ACCEPTED)

    # todo: remove
    @action(detail=False, methods=['delete'], url_path='progress', permission_classes=(permissions.IsAdminUser,),
            serializer_class=None)
    def reset_users_progress(self, request, *args, **kwargs):
        lessons_ratings = LessonRating.objects.all().delete()
        completed_tests = CompletedTest.objects.all().delete()

        return Response(
            data={'lessons_rating': lessons_ratings, 'completed_tests': completed_tests},
            status=status.HTTP_202_ACCEPTED
        )

    # todo: remove
    @action(detail=False, methods=['delete'], url_path='delete-duplicates',
            permission_classes=(permissions.IsAdminUser,), serializer_class=None)
    def delete_duplicate_users(self, request, *args, **kwargs):
        to_delete = set()
        users = self.get_queryset()
        for user in users:
            for same_user in users.filter(email__iexact=user.email).exclude(pk=user.pk):
                if not same_user.email.islower():
                    to_delete.add(same_user.pk)
        to_delete_users = users.filter(pk__in=to_delete)
        to_delete_users_emails = list(to_delete_users.values_list('email', flat=True))
        delete_resp = to_delete_users.delete()
        return Response(
            {'status': delete_resp, 'deleted_emails': to_delete_users_emails},
            status=status.HTTP_200_OK
        )


class CustomObtainAuthToken(ObtainAuthToken):
    permission_classes = (permissions.AllowAny,)
    serializer_class = AuthTokenSerializer

    def obtain_token_and_user(self, request, *args, **kwargs) -> Tuple[Token, bool, User]:
        """
        Return token, bool value if it was created and User
        """
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = serializer.validated_data['user']
        token, created = Token.objects.get_or_create(user=user)
        return token, created, user

    def post(self, request, *args, **kwargs):
        token, *_ = self.obtain_token_and_user(request, *args, **kwargs)
        return Response({'token': token.key})


class AdminCustomObtainAuthToken(CustomObtainAuthToken):
    """
    View for admin/auth/
    """
    def post(self, request, *args, **kwargs):
        token, created, user = self.obtain_token_and_user(request, *args, **kwargs)
        # Allow only admins
        if created or not user.is_staff:
            return Response(status=status.HTTP_403_FORBIDDEN)
        else:
            return Response({'token': token.key})


class CheckStatusPayment(APIView):
    permission_classes = (permissions.AllowAny,)
    serializer_class = UserSerializer
    @swagger_auto_schema(
        request_body=openapi.Schema(
            title='payload',
            type=openapi.TYPE_OBJECT,
            properties={
                'email': openapi.Schema(type=openapi.TYPE_STRING,),
                'first_name': openapi.Schema(type=openapi.TYPE_STRING,),
                'token': openapi.Schema(type=openapi.TYPE_STRING,),
            }
        ),
        responses={
            status.HTTP_200_OK: 'Данные переданы успешно.',
            status.HTTP_400_BAD_REQUEST: 'Произошла ошибка.',
        }
    )
    def post(self, request):
        email = request.data.get('email', None)
        if email:
            email = email.lower()
        first_name = request.data.get('first_name', None)
        token = request.data.get('token', None)
        if not email or not first_name or not token:
            return Response({'success': False}, status=status.HTTP_400_BAD_REQUEST)
            
        try:
            # Запрос к сервису для проверки статуса платежа
            result = requests.post(
                'https://api.cloudpayments.ru/v2/payments/find',
                auth=(settings.CLOUDPAYMENTS_PRODUCT_ID, settings.CLOUDPAYMENTS_API_SECRET),
                data={
                    'InvoiceId': token,
                }
            )
            data = result.json()
        except Exception:
            data = None

        # Проверка наличия необходимых параметров в ответе о статусе платежа
        if 'Success' in data and data['Success'] and 'Model' in data and \
            'Status' in data['Model'] and data['Model']['Status'] == 'Completed':

            # Проверка на существование человека в базе данных
            if User.objects.filter(email=email).exists():
                return Response({'success': False}, status=status.HTTP_400_BAD_REQUEST)
                
            serializer = UserSerializer(data={
                'email': email,
                'first_name': first_name
            })
            if serializer.is_valid():
                user = serializer.save()
                return Response({'success': True}, status=status.HTTP_200_OK)

        return Response({'success': False}, status=status.HTTP_400_BAD_REQUEST)


class ExistsUserView(APIView):
    permission_classes = (permissions.AllowAny,)
    
    @swagger_auto_schema(
        request_body=openapi.Schema(
            title='payload',
            type=openapi.TYPE_OBJECT,
            properties={
                'email': openapi.Schema(type=openapi.TYPE_STRING,),
            }
        ),
    )
    def post(self, request):
        email = request.data.get('email', None)
        if email and User.objects.filter(email=email.lower()).exists():
            return Response({'success': True}, status=status.HTTP_200_OK)
        return Response({'success': False}, status=status.HTTP_200_OK)


class RegeneratePasswords(generics.GenericAPIView):
    permission_classes = (permissions.IsAdminUser,)
    serializer_class = UserEmailSerializer

    def put(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        successful, failed = [], []
        for user_data in serializer.validated_data:
            user = user_data['user']

            raw_password = User.objects.make_random_password(length=16)
            with transaction.atomic():
                user.set_password(raw_password)
                user.save()
            try:
                user.send_new_password(raw_password)
                successful.append(user.email)
            except Exception as e:
                failed.append(user.email)
            time.sleep(0.7)
        return Response({
            'msg': f'send new passwords to {len(successful)}/{len(serializer.validated_data)}',
            'errors': failed or None
        })


class MailAllUsers(APIView):
    permission_classes = (permissions.AllowAny,)
    # todo: add ability to choose template

    def post(self, request, *args, **kwargs):
        emails = list(User.objects.values_list('email', flat=True))
        send_email(
            'Информация о канале в Telegram',
            'users/mailing_tg_subscription.html',
            {},
            'friends@sth-edu.ru',
            emails
        )
        return Response(data={'count': len(emails)}, status=status.HTTP_202_ACCEPTED)
