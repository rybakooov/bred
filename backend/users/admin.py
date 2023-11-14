from django.contrib import admin

from users.models import User, CompletedTest


class CompletedTestInline(admin.TabularInline):
    model = CompletedTest
    fields = ('completed_at',)


@admin.register(User)
class UserAdmin(admin.ModelAdmin):
    list_display = ('uuid', 'id', 'email', 'is_staff', 'is_superuser')
    fields = ('email', 'is_staff', 'is_superuser')
    inlines = (CompletedTestInline,)
