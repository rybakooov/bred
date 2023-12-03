from django.contrib.auth import authenticate
from rest_framework import serializers
from rest_framework.authtoken.models import Token
from rest_framework.generics import get_object_or_404

from learning.models import Lesson, Subject
from users.models import User, PasswordKey


class UserSerializer(serializers.ModelSerializer):
    email = serializers.EmailField(required=True, max_length=255)
    password = serializers.CharField(required=False, write_only=True,
                                     max_length=255, style={'input_type': 'password'})
    is_staff = serializers.BooleanField(default=False, required=False)

    class Meta:
        model = User
        fields = ('id', 'email', 'first_name', 'last_name', 'password', 'is_staff', 'date_joined')

    def validate(self, attrs):
        attrs['email'] = attrs['email'].lower()
        return attrs

    def create(self, validated_data):
        user = super().create(validated_data)
        raw_password = val if (val := validated_data.get('password')) else User.objects.make_random_password(length=16)
        user.set_password(raw_password)
        user.save()
        Token.objects.create(user=user)
        user.send_registration_email(name=user, raw_password)

        return user

    def update(self, instance: User, validated_data):
        if password := validated_data.get('password'):
            validated_data.pop('password')
            instance.set_password(password)
        return super().update(instance, validated_data)


class AuthTokenSerializer(serializers.Serializer):
    email = serializers.EmailField(label="email", max_length=255, required=True,
                                   error_messages={'max_length': 'msg_error_invalid_email_length'})
    password = serializers.CharField(label="password", max_length=255, required=True, style={'input_type': 'password'},
                                     error_messages={'max_length': 'msg_error_invalid_password_length'})

    def validate(self, attrs):
        attrs['email'] = attrs['email'].lower()
        user = authenticate(email=attrs['email'], password=attrs['password'])

        if not user:
            raise serializers.ValidationError('msg_error_bad_credentials', code='authorization')
        if not user.is_active:
            raise serializers.ValidationError('msg_error_account_disabled', code='authorization')

        attrs['user'] = user
        return attrs


class UserEmailSerializer(serializers.Serializer):
    email = serializers.EmailField(max_length=255, required=True)

    def validate(self, attrs):
        attrs['email'] = attrs['email'].lower()
        user = get_object_or_404(User, email=attrs['email'])
        attrs['user'] = user
        return attrs


class ForgottenPasswordSerializer(UserEmailSerializer):
    def create(self, validated_data):
        user = validated_data['user']

        raw_password = User.objects.make_random_password(length=16)
        user.set_password(raw_password)
        user.save()
        user.send_new_password(raw_password)

        return dict()


class ResetPasswordSerializer(serializers.Serializer):
    new_password = serializers.CharField(required=True, style={'input_type': 'password'})
    confirm_new_password = serializers.CharField(required=True, style={'input_type': 'password'})

    def validate(self, attrs):
        if attrs['new_password'] != attrs['confirm_new_password']:
            raise serializers.ValidationError('msg_error_passwords_not_equal')
        return attrs


class ChangePasswordSerializer(ResetPasswordSerializer):
    current_password = serializers.CharField(required=True, style={'input_type': 'password'})

    def validate(self, attrs):
        if not self.context['request'].user.check_password(attrs['current_password']):
            raise serializers.ValidationError('msg_error_wrong_current_password')
        return super().validate(attrs)


class LessonProgressSerializer(serializers.ModelSerializer):
    is_completed = serializers.SerializerMethodField()
    completed_at = serializers.SerializerMethodField()
    user_review = serializers.SerializerMethodField()

    class Meta:
        model = Lesson
        fields = ('slug', 'id', 'order', 'is_completed', 'completed_at', 'user_review')

    def get_is_completed(self, obj: Lesson) -> bool:
        return bool(obj.lesson_user_progress(self.context['user']))

    def get_completed_at(self, obj: Lesson):
        return obj.user_completion_date(self.context['user'])

    def get_user_review(self, obj: Lesson):
        return obj.user_review(self.context['user'])


class SubjectAssignmentProgressSerializer(serializers.ModelSerializer):
    is_complete = serializers.SerializerMethodField()
    user_completion_date = serializers.SerializerMethodField()

    class Meta:
        model = Subject
        fields = ('is_complete', 'user_completion_date')

    def get_is_complete(self, obj: Subject):
        return bool(obj.subject_user_progress(self.context['user']))

    def get_user_completion_date(self, obj: Subject):
        return obj.user_completion_date(self.context['user'])


class SubjectProgressSerializer(serializers.ModelSerializer):
    lessons_progress = serializers.SerializerMethodField()
    lesson_counter = serializers.IntegerField(source='lessons_count', read_only=True)
    subject_assignment_progress = SubjectAssignmentProgressSerializer(read_only=True, source='*')
    user_percentage = serializers.SerializerMethodField()

    class Meta:
        model = Subject
        fields = ('slug', 'id', 'lessons_progress', 'subject_assignment_progress', 'lesson_counter', 'user_percentage')

    def get_lessons_progress(self, obj: Subject):
        return LessonProgressSerializer(obj.lessons, read_only=True, many=True,
                                        context={**self.context, 'subject': obj}).data

    def get_user_percentage(self, obj: Subject):
        return obj.user_completion_percent(self.context['user'])


class UserProgress(serializers.ModelSerializer):
    subjects_progress = serializers.SerializerMethodField()
    total_progress = serializers.SerializerMethodField()

    class Meta:
        model = User
        fields = ('email', 'subjects_progress', 'total_progress')

    def get_subjects_progress(self, obj: User):
        return SubjectProgressSerializer(self.context['subjects'], read_only=True, many=True,
                                         context={'user': obj}).data

    def get_total_progress(self, obj: User):
        subjects_count = self.context['subjects'].count()
        if subjects_count:
            subjects_percents = sum(subject.user_completion_percent(obj) for subject in self.context['subjects'])
            return round(subjects_percents/subjects_count, 2)
        else:
            return 0
