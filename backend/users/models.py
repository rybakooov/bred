import uuid

from django.conf import settings
from django.contrib.auth.base_user import BaseUserManager
from django.contrib.auth.models import AbstractUser
from django.core.exceptions import ValidationError
from django.db import models
from django.utils import timezone
from django.utils.translation import gettext_lazy as _

from learning.models import Lesson, Subject, TestAssignment
from utils.email import send_email


class UserManager(BaseUserManager):
    """
    Override default manager to create users without username
    """
    use_in_migration = True

    def _create_user(self, email, password, **extra_fields):
        """
        Create and save Use with the given email and password
        """
        if not email:
            raise ValueError('Email must be set')
        email = self.normalize_email(email)
        user = self.model(email=email, **extra_fields)
        user.set_password(password)
        user.save(using=self.db)
        return user

    def create_user(self, email, password=None, **extra_fields):
        """
        Create and save regular user with given email and password
        """
        extra_fields.setdefault('is_staff', False)
        extra_fields.setdefault('is_superuser', False)
        return self._create_user(email, password, **extra_fields)

    def create_superuser(self, email, password, **extra_fields):
        """
        Create and save a superuser with given email and password
        """
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)

        if not extra_fields.get('is_staff'):
            raise ValueError('Superuser must have is_staff=True')
        if not extra_fields.get('is_superuser'):
            raise ValueError('Superuser must have is_superuser=True')

        return self._create_user(email, password, **extra_fields)


class User(AbstractUser):
    uuid = models.EmailField(unique=True, default=uuid.uuid4, blank=True, editable=False)
    email = models.EmailField(verbose_name='email address', max_length=255, unique=True, blank=False, null=False)
    date_joined = models.DateField(_('date joined'), auto_now_add=True)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []
    objects = UserManager()

    def save(self, *args, **kwargs):
        if not self.pk:
            self.username = self.uuid
        super().save(*args, **kwargs)

    def get_name_or_email(self):
        if full_name := self.get_full_name():
            return full_name
        else:
            return self.email.split('@')[0]

    def get_first_incomplete_lesson(self):
        subjects = Subject.objects.filter(is_visible=True)
        for subject in subjects:
            if subject.get_complete_lessons_count(self) != subject.lessons_count:
                return subject.get_incomplete_lessons(self).first()
        return None

    def create_new_password_token(self):
        password_key = PasswordKey.objects.create(user=self)
        password_key.send_password_token()

    def send_registration_email(self, raw_password):
        # Send mail using SMTP
        send_email(
            'Добро пожаловать!',
            'users/registration_template.html',
            {'name': self.get_name_or_email(), 'password': raw_password},
            'friends@sth-edu.ru',
            [self.email]
        )

    def send_new_password(self, raw_password):
        # Send mail using SMTP
        send_email(
            'Сброс пароля',
            'users/password_reset_template.html',
            {'name': self.get_name_or_email(), 'password': raw_password},
            'friends@sth-edu.ru',
            [self.email]
        )

    def __str__(self):
        return f"{self.__class__.__name__} {self.email}"


class CompletedTest(models.Model):
    uuid = models.UUIDField(unique=True, default=uuid.uuid4, blank=True, editable=False)
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=False, blank=False, related_name='completed_tests')
    test = models.ForeignKey(TestAssignment, on_delete=models.CASCADE, null=True)
    completed_at = models.DateTimeField(blank=True, auto_now_add=True, help_text="DateTime when test was completed")

    def __str__(self):
        return f"{self.__class__.__name__} of {self.user} ({self.test.get_master_model().slug})"

    def save(self, *args, **kwargs):
        if not self.pk:
            if not self.test.get_master_model():
                raise ValidationError('test-does-not-belong-to-lesson-nor-subject')
        super().save(*args, **kwargs)


class PasswordKey(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, blank=False, null=False)
    password_key = models.UUIDField(default=uuid.uuid4, editable=False, unique=True)
    expires_at = models.DateTimeField(blank=False, null=False)

    def renew_expiration(self):
        self.expires_at = timezone.now() + timezone.timedelta(hours=settings.PASSWORD_TOKEN_EXPIRATION_PERIOD)
        self.save()

    def save(self, *args, **kwargs):
        self.expires_at = timezone.now() + timezone.timedelta(hours=settings.PASSWORD_TOKEN_EXPIRATION_PERIOD)
        super().save(*args, **kwargs)

    # def send_password_token(self):
    #     user = self.user
    #     name = user.first_name or user.email.split('@')[0]
    #     html_message = render_to_string(
    #         'users/password_reset_template.html',
    #         {'reset_key': self.password_key, 'name': name}
    #     )
    #     # Send mail with template using SMTP
    #     email = {
    #         'subject': 'Сброс пароля',
    #         'html': html_message,
    #         'text': strip_tags(html_message),
    #         'from': {'name': 'Start The History', 'email': 'friends@sth-edu.ru'},
    #         'to': [
    #             {'name': user.email, 'email': user.email}
    #         ],
    #     }
    #     sp_api_proxy = PySendPulse(settings.REST_API_ID, settings.REST_API_SECRET, settings.TOKEN_STORAGE,
    #                                memcached_host=settings.MEMCACHED_HOST)
    #     sp_api_proxy.smtp_send_mail(email)
