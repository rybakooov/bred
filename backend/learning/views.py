from django.http import Http404
from drf_yasg.utils import swagger_auto_schema
from rest_framework import viewsets, permissions, status, mixins
from rest_framework.decorators import action
from rest_framework.generics import get_object_or_404
from rest_framework.response import Response

from learning.mixins import MovePositionMixin, SwapPositionMixin, NextPreviousMixin
from learning.models import Lesson, Subject, TestAssignment
from learning.serializers import LessonSerializer, SubjectSerializer, LessonDetailSerializer, SubjectDetailSerializer, \
    TestAssignmentSerializer, LessonRatingSerializer, TestAssignmentResultSerializer


class AdminLessonViewSet(viewsets.ModelViewSet, MovePositionMixin, SwapPositionMixin):
    permission_classes = (permissions.IsAdminUser,)
    lookup_field = 'pk'
    lookup_url_kwarg = 'lesson_id'

    def get_queryset(self):
        queryset = Lesson.objects.all()

        if getattr(self, 'swagger_fake_view', False):
            return queryset

        return queryset.select_related(
            'subject'
        ).prefetch_related(
            'subject__lessons'
        ).filter(
            subject_id=self.kwargs['subject_id']
        )

    def get_object(self):
        if getattr(self, 'swagger_fake_view', False):
            return None

        lesson = super().get_object()

        if self.action == 'test' and not self.request.method.lower() == 'post':
            if test := lesson.test:
                return test
            else:
                raise Http404
        return lesson

    def get_serializer_class(self):
        if self.action == 'retrieve':
            return LessonDetailSerializer
        elif self.action == 'test':
            return TestAssignmentSerializer
        return LessonSerializer

    def get_serializer_context(self):
        context = super().get_serializer_context()
        if self.action == 'retrieve':
            context['lesson'] = self.get_object()
        if self.action == 'create' and not getattr(self, 'swagger_fake_view', False):
            context['subject'] = get_object_or_404(Subject.objects.all(), pk=self.kwargs['subject_id'])
        if self.action == 'test' and not getattr(self, 'swagger_fake_view', False):
            context['subject'] = self.get_object()
        context['user'] = self.request.user
        return context

    @swagger_auto_schema(methods=['post'], request_body=TestAssignmentSerializer)
    @action(methods=['post', 'get'], detail=True)
    def test(self, request, *args, **kwargs):
        if self.request.method.lower() == 'get':
            return super().retrieve(request, *args, **kwargs)
        elif self.request.method.lower() == 'post':
            prev_test: TestAssignment = self.get_object().test
            if prev_test:
                prev_test.delete(posting_test=True)
            return super().create(request, *args, **kwargs)


class AdminSubjectViewSet(viewsets.ModelViewSet, MovePositionMixin, SwapPositionMixin):
    permission_classes = (permissions.IsAdminUser,)
    lookup_field = 'pk'
    lookup_url_kwarg = 'subject_id'

    def get_queryset(self):
        return Subject.objects.prefetch_related('lessons').order_by('order')

    def get_object(self):
        subject = super().get_object()
        if self.action == 'test' and not self.request.method.lower() == 'post':
            if test := subject.test:
                return test
            else:
                raise Http404
        return subject

    def get_serializer_class(self):
        if self.action == 'retrieve':
            return SubjectDetailSerializer
        elif self.action == 'test':
            return TestAssignmentSerializer
        return SubjectSerializer

    def get_serializer_context(self):
        context = super().get_serializer_context()
        context['user'] = self.request.user
        if self.action == 'test' and not getattr(self, 'swagger_fake_view', False):
            context['subject'] = self.get_object()
        return context

    @action(methods=['post', 'get'], detail=True)
    def test(self, request, *args, **kwargs):
        if self.request.method.lower() == 'get':
            return super().retrieve(request, *args, **kwargs)
        elif self.request.method.lower() == 'post':
            prev_test: TestAssignment = self.get_object().test
            if prev_test:
                prev_test.delete(posting_test=True)
            return super().create(request, *args, **kwargs)


class LessonViewSet(viewsets.ReadOnlyModelViewSet, NextPreviousMixin, mixins.CreateModelMixin):
    permission_classes = (permissions.IsAuthenticated,)
    lookup_url_kwarg = 'lesson_id'

    retrieve_actions = {
        'previous': lambda instance: instance.previous(),
        'next': lambda instance: instance.next(),
    }

    def get_queryset(self):
        queryset = Lesson.objects.filter(is_visible=True, subject__is_visible=True)

        if getattr(self, 'swagger_fake_view', False):
            return queryset

        return queryset.filter(subject_id=self.kwargs['subject_id'])

    def get_object(self):
        if getattr(self, 'swagger_fake_view', False):
            return None

        lesson = super().get_object()

        if self.action in ('previous', 'next'):
            lesson = self.retrieve_actions[self.action](lesson)
            if not lesson:
                raise Http404
        elif self.action == 'test':
            if test := lesson.test:
                return test
            else:
                raise Http404
        return lesson

    def get_serializer_class(self):
        if self.action == 'retrieve':
            return LessonDetailSerializer
        elif self.action == 'rate':
            return LessonRatingSerializer
        elif self.action == 'test':
            return TestAssignmentSerializer
        elif self.action == 'check_test':
            return TestAssignmentResultSerializer
        return LessonSerializer

    def get_serializer_context(self):
        context = super().get_serializer_context()
        context['user'] = self.request.user
        if self.action not in ('list',):
            context['lesson'] = self.get_object()
        if self.action == 'check_test':
            context['test']: TestAssignment = self.get_object().test
        return context

    @swagger_auto_schema(auto_schema=None)
    def create(self, request, *args, **kwargs):
        return self.http_method_not_allowed(request, *args, **kwargs)

    @action(detail=True, methods=['post'])
    def rate(self, request, *args, **kwargs):
        return super().create(request, *args, **kwargs)

    @action(methods=['get'], detail=True)
    def test(self, request, *args, **kwargs):
        return super().retrieve(request, *args, **kwargs)

    @swagger_auto_schema(methods=['put'], request_body=TestAssignmentResultSerializer)
    @action(methods=['put'], detail=True, url_path='test/check')
    def check_test(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        success = serializer.is_valid()
        if success:
            self.get_object().mark_completed_for_user(self.request.user)

        return Response(
            data={'success': success},
            status=status.HTTP_202_ACCEPTED
        )


class SubjectViewSet(viewsets.ReadOnlyModelViewSet, NextPreviousMixin):
    serializer_class = SubjectSerializer
    permission_classes = (permissions.IsAuthenticated,)
    lookup_url_kwarg = 'subject_id'

    # OrderedModelBase methods
    retrieve_actions = {
        'previous': lambda instance: instance.previous(),
        'next': lambda instance: instance.next(),
    }

    def get_queryset(self):
        return Subject.objects.filter(is_visible=True).prefetch_related('lessons').order_by('order')

    def get_object(self):
        if getattr(self, 'swagger_fake_view', False):
            return None

        subject = super().get_object()

        if self.action in ('previous', 'next'):
            subject = self.retrieve_actions[self.action](subject)
            if not subject:
                raise Http404
        elif self.action == 'test':
            if test := subject.test:
                return test
            else:
                raise Http404

        return subject

    def get_serializer_context(self):
        context = super().get_serializer_context()
        if getattr(self, 'swagger_fake_view', False):
            return context
        if self.action == 'check_test':
            context['test']: TestAssignment = self.get_object().test
        context['user'] = self.request.user

        return context

    def get_serializer_class(self):
        if self.action == 'retrieve':
            return SubjectDetailSerializer
        elif self.action == 'test':
            return TestAssignmentSerializer
        elif self.action == 'check_test':
            return TestAssignmentResultSerializer
        return SubjectSerializer

    @action(methods=['get'], detail=True)
    def test(self, request, *args, **kwargs):
        return super().retrieve(request, *args, **kwargs)

    @swagger_auto_schema(methods=['put'], request_body=TestAssignmentResultSerializer)
    @action(methods=['put'], detail=True, url_path='test/check')
    def check_test(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        success = serializer.is_valid()
        if success:
            self.get_object().mark_completed_for_user(self.request.user)

        return Response(
            data={'success': success},
            status=status.HTTP_202_ACCEPTED
        )
