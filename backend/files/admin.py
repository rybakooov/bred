from django.contrib import admin

from files.models import VideoFile, ImageFile, DocumentFile


@admin.register(VideoFile)
class VideoFileAdmin(admin.ModelAdmin):
    list_display = ('file', 'uuid')


@admin.register(DocumentFile)
class DocumentFileAdmin(admin.ModelAdmin):
    list_display = ('file', 'uuid')


@admin.register(ImageFile)
class ImageFileAdmin(admin.ModelAdmin):
    list_display = ('file', 'uuid')
