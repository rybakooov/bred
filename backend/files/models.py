import uuid

from django.db import models


class ImageFile(models.Model):
    file = models.ImageField(upload_to='images')
    uuid = models.UUIDField(editable=False, blank=True, default=uuid.uuid4, unique=True)

    class Meta:
        db_table = 'files_image_file'

    def __str__(self):
        return self.file.name

    def delete(self, using=None, keep_parents=False):
        file = self.file
        file.storage.delete(file.name)
        return super().delete(using, keep_parents)


class DocumentFile(models.Model):
    file = models.FileField(upload_to='documents')
    uuid = models.UUIDField(editable=False, blank=True, default=uuid.uuid4, unique=True)

    class Meta:
        db_table = 'files_document_file'

    def __str__(self):
        return self.file.name

    def delete(self, using=None, keep_parents=False):
        file = self.file
        file.storage.delete(file.name)
        return super().delete(using, keep_parents)


class VideoFile(models.Model):
    file = models.FileField(upload_to='videos', null=True, blank=True, default=None)
    uuid = models.UUIDField(editable=False, blank=True, default=uuid.uuid4, unique=True)
    url = models.URLField(null=True, blank=True, default=None)

    class Meta:
        db_table = 'files_video_file'

    def __str__(self):
        return self.file.name

    def delete(self, using=None, keep_parents=False):
        file = self.file
        # we delete physical file from storage
        if not file.instance.url:
            file.storage.delete(file.name)
        return super().delete(using, keep_parents)
