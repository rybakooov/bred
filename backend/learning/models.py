from datetime import datetime
from typing import Optional, Union

from django.core.exceptions import ValidationError
from django.core.validators import MinValueValidator, MaxValueValidator
from django.db import models
from ordered_model.models import OrderedModel
import uuid

from transliterate import slugify

from files.models import VideoFile, ImageFile, DocumentFile


class Subject(OrderedModel):
    uuid = models.UUIDField(unique=True, blank=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=128, help_text="Name of the subject to learn")
    slug = models.SlugField(unique=True, max_length=128, blank=True, null=True, help_text="Unique slug")
    summary = models.CharField(max_length=512, blank=True, null=True, help_text="Short summary of current Subject")
    test = models.OneToOneField('TestAssignment', on_delete=models.SET_NULL, blank=True, null=True)
    is_visible = models.BooleanField(help_text="Define if subject (with corresponding lessons) is visible to students",
                                     default=False, null=False)
    image = models.OneToOneField(ImageFile, blank=True, null=True, on_delete=models.SET_NULL)

    def save(self, force_insert=False, force_update=False, using=None, update_fields=None):
        if not self.slug:
            self.slug = slugify(self.name, language_code='ru')
        if self.is_visible:
            if not self.test:
                raise ValidationError('msg_error_no_test_assigned')
            if not self.lessons.filter(is_visible=True).exists():
                raise ValidationError('msg_error_no_visible_lessons')
        return super().save(force_insert, force_update, using, update_fields)

    @property
    def lessons_count(self):
        return self.lessons.filter(is_visible=True).count()

    def get_complete_lessons(self, user):
        complete_ids = [lesson.pk for lesson in self.lessons.prefetch_related('test').filter(is_visible=True)
                        if bool(lesson.lesson_user_progress(user))]
        return self.lessons.filter(id__in=complete_ids)

    def get_incomplete_lessons(self, user):
        complete_ids = self.get_complete_lessons(user).values_list('pk', flat=True)
        return self.lessons.exclude(id__in=complete_ids)

    def get_complete_lessons_count(self, user) -> int:
        return self.get_complete_lessons(user).count()

    def get_incomplete_lessons_count(self, user) -> int:
        return self.get_incomplete_lessons(user).count()

    def mark_completed_for_user(self, user):
        self.test.mark_completed_for_user(user)

    def subject_user_progress(self, user) -> Optional['CompletedTest']:
        if self.test:
            return self.test.get_user_progress(user)
        else:
            return None

    def user_completion_date(self, user) -> Optional[datetime]:
        return user_progress.completed_at if (user_progress := self.subject_user_progress(user)) else None

    def user_completion_percent(self, user):
        completed_lessons = self.get_complete_lessons(user).count()
        subject_test_completion = int(bool(self.subject_user_progress(user)))

        return round((completed_lessons + subject_test_completion) / (self.lessons_count + 1), 2)

    def __str__(self):
        return f"Subject {self.slug}"


class Lesson(OrderedModel):
    uuid = models.UUIDField(unique=True, blank=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=128, blank=False, null=False)
    slug = models.SlugField(unique=True, max_length=128, blank=True, null=True)
    subject = models.ForeignKey(Subject, on_delete=models.SET_NULL, null=True,
                                blank=True, related_name='lessons')
    outline = models.TextField(help_text="Lesson outline", blank=True, null=True)
    video = models.OneToOneField(VideoFile, blank=True, null=True, on_delete=models.SET_NULL)
    image = models.OneToOneField(ImageFile, blank=True, null=True, on_delete=models.SET_NULL)
    document = models.OneToOneField(DocumentFile, blank=True, null=True, on_delete=models.SET_NULL)
    test = models.OneToOneField('TestAssignment', blank=True, null=True, on_delete=models.SET_NULL)
    is_visible = models.BooleanField(default=False, null=False)
    order_with_respect_to = 'subject'

    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.name, language_code='ru')
        if self.is_visible:
            if not self.test:
                raise ValidationError('msg_error_no_test_assigned')
        super().save(*args, **kwargs)

    def delete(self, *args, **kwargs):
        if self.is_visible and self.subject.lessons.filter(is_visible=True).count() == 1:
            self.subject.is_visible = False
            self.subject.save()
        return super().delete(*args, **kwargs)

    def next_lesson(self, user):
        """
        Get next lesson in corresponding subject or first incomplete lesson.
        """
        lesson: Lesson = self.next()
        if lesson:
            return lesson.next_lesson(user) if not lesson.is_visible else lesson
        else:
            return user.get_first_incomplete_lesson()

    def is_accessible_for_user(self, user):
        if self.order == self.subject.lessons.get_min_order() or \
                self.previous() == user.completed_tests.filter(test__lesson__subject=self.subject).latest().lesson:
            return True
        else:
            return False

    def mark_completed_for_user(self, user):
        return self.test.mark_completed_for_user(user)

    def lesson_user_progress(self, user):
        if self.test:
            return self.test.get_user_progress(user)
        else:
            return None

    def user_completion_date(self, user) -> Optional[datetime]:
        return user_progress.completed_at if (user_progress := self.lesson_user_progress(user)) else None

    def user_review(self, user) -> Optional[int]:
        return rating.rate if (rating := LessonRating.objects.filter(lesson=self, user=user).first()) else None

    def __str__(self):
        if hasattr(self, 'subject') and self.subject:
            return f"{self.slug} ({self.order + 1}/{self.subject.lessons.count()}) ({self.subject.slug})"
        else:
            return super().__str__()


class LessonRating(models.Model):
    uuid = models.UUIDField(unique=True, default=uuid.uuid4, blank=True, editable=False)
    user = models.ForeignKey('users.User', on_delete=models.CASCADE)
    lesson = models.ForeignKey(Lesson, on_delete=models.CASCADE)
    rate = models.SmallIntegerField(validators=(MinValueValidator(1), MaxValueValidator(5)))


class TestAssignment(models.Model):
    uuid = models.UUIDField(unique=True, default=uuid.uuid4, blank=True, editable=False)
    threshold = 0.5

    def __str__(self):
        if instance := self.get_master_model():
            temp_str = f"of {instance.__class__.__name__} {instance.slug}"
        else:
            temp_str = self.uuid
        return f"Test of {temp_str}"

    def delete(self, using=None, keep_parents=False, posting_test=False):
        parent = self.get_master_model()
        if isinstance(parent, Lesson) and not posting_test:
            parent.is_visible = False
            parent.save()
        elif isinstance(parent, Subject) and not posting_test:
            parent.is_visible = False
            parent.save()
            hidden_lessons = []
            for lesson in parent.lessons.filter(is_visible=True):
                lesson.is_visible = False
                hidden_lessons.append(lesson)
            Lesson.objects.bulk_update(hidden_lessons, ['is_visible'])
        return super().delete(using, keep_parents)

    @property
    def questions_amount(self) -> int:
        return self.questions.count()

    def get_master_model(self) -> Optional[Union[Subject, Lesson]]:
        try:
            return self.lesson
        except Lesson.DoesNotExist:
            pass
        try:
            return self.subject
        except Subject.DoesNotExist:
            return None

    def get_user_progress(self, user):
        return user.completed_tests.filter(test=self).first()

    def mark_completed_for_user(self, user):
        user.completed_tests.create(test=self)

    def get_correct_answer_for_question(self, question_id) -> 'QuestionAnswer':
        """
        Return correct (is_correct=True) answer for specified question
        """
        return self.questions.get(pk=question_id).answers.get(is_correct=True)

    def is_correct_answer(self, question_id, answer_id) -> bool:
        """
        Based on Question PK ans Answer PK decide if user answer is correct
        """
        correct_answer = self.get_correct_answer_for_question(question_id)
        return correct_answer.pk == answer_id

    def is_successful_attempt(self, results: list[dict[int, int]]) -> bool:
        """
        Get list of answers: dict (question_id, answer_id) and check
        if percentage of correct answer is greater then `threshold`.
        """
        correct_answers = sum(self.is_correct_answer(**answer) for answer in results)
        return correct_answers / self.questions_amount >= self.threshold


class TestAssignmentQuestion(OrderedModel):
    uuid = models.UUIDField(unique=True, default=uuid.uuid4, blank=True, editable=False)
    test = models.ForeignKey(TestAssignment, on_delete=models.CASCADE, related_name='questions')
    question_text = models.TextField()
    image = models.OneToOneField(ImageFile, blank=True, null=True, on_delete=models.SET_NULL)

    def __str__(self):
        return f"{self.test} >> Question ({self.order + 1}/{self.test.questions.count()})"


class QuestionAnswer(OrderedModel):
    uuid = models.UUIDField(unique=True, default=uuid.uuid4, blank=True, editable=False)
    question = models.ForeignKey(TestAssignmentQuestion, on_delete=models.CASCADE, related_name='answers')
    answer_text = models.CharField(max_length=64)
    is_correct = models.BooleanField(default=False)
    explanation = models.CharField(max_length=255, null=True, blank=True)

    def __str__(self):
        return f"{self.question} >> Answer {self.order + 1}/{self.question.answers.count()}"
