from rest_framework.mixins import CreateModelMixin, DestroyModelMixin, RetrieveModelMixin, UpdateModelMixin
from rest_framework.parsers import MultiPartParser
from rest_framework.viewsets import GenericViewSet

from files.mixins import DeleteAllFilesMixin
from files.models import DocumentFile, ImageFile, VideoFile
from files.serializers import DocumentFileSerializer, ImageFileSerializer, VideoFileSerializer
from utils.authentication import FilePermission

"""
create:
Uploads file to storage

read:
Fetches file from storage

update:
Updates existing file

partial_update:
Updates existing file

delete:
Deletes file from storage
"""


class ImageFileViewSet(CreateModelMixin, RetrieveModelMixin, UpdateModelMixin,
                       DestroyModelMixin, GenericViewSet, DeleteAllFilesMixin):
    serializer_class = ImageFileSerializer
    permission_classes = (FilePermission,)
    lookup_field = 'uuid'
    parser_classes = [MultiPartParser]

    def get_queryset(self):
        return ImageFile.objects.all()


class DocumentFileViewSet(CreateModelMixin, RetrieveModelMixin, UpdateModelMixin,
                          DestroyModelMixin, GenericViewSet, DeleteAllFilesMixin):
    serializer_class = DocumentFileSerializer
    permission_classes = (FilePermission,)
    lookup_field = 'uuid'
    parser_classes = [MultiPartParser]

    def get_queryset(self):
        return DocumentFile.objects.all()


class VideoFileViewSet(CreateModelMixin, RetrieveModelMixin, UpdateModelMixin,
                       DestroyModelMixin, GenericViewSet, DeleteAllFilesMixin):
    serializer_class = VideoFileSerializer
    permission_classes = (FilePermission,)
    lookup_field = 'uuid'
    parser_classes = [MultiPartParser]

    def get_queryset(self):
        return VideoFile.objects.all()
