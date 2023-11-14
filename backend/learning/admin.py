from django.contrib import admin
from nested_inline.admin import NestedTabularInline, NestedModelAdmin

from learning.models import Subject, Lesson, TestAssignment, TestAssignmentQuestion, QuestionAnswer


class QuestionAnswerInline(NestedTabularInline):
    model = QuestionAnswer
    fk_name = 'question'


class TestAssignmentQuestionInline(NestedTabularInline):
    model = TestAssignmentQuestion
    fk_name = 'test'
    inlines = (QuestionAnswerInline,)


@admin.register(TestAssignment)
class TestAssignmentInline(NestedModelAdmin):
    list_display = ('uuid', 'id',)
    inlines = (TestAssignmentQuestionInline,)


@admin.register(Lesson)
class LessonAdmin(admin.ModelAdmin):
    search_fields = ('name',)
    list_display = ('uuid', 'id', 'name', 'subject', 'test')
    fields = ('name', 'slug', 'subject', 'outline', 'video', 'image', 'document', 'test', 'is_visible')


@admin.register(Subject)
class SubjectAdmin(admin.ModelAdmin):
    list_display = ('uuid', 'id', 'name', 'test')
    fields = ('name', 'test', 'slug', 'summary', 'is_visible')
