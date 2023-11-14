from rest_framework import serializers

from files.models import DocumentFile, ImageFile, VideoFile


class DocumentFileSerializer(serializers.ModelSerializer):
    class Meta:
        model = DocumentFile
        fields = ('file', 'uuid')

    def to_representation(self, instance: DocumentFile):
        ret = super().to_representation(instance)
        ret['file'] = instance.file.url
        return ret


class VideoFileSerializer(serializers.ModelSerializer):
    class Meta(DocumentFileSerializer.Meta):
        model = VideoFile
        fields = ('file', 'uuid', 'url',)

    def validate(self, attrs):
        if bool(attrs.get('url')) == bool(attrs.get('file')):
            raise serializers.ValidationError('specify_exactly_one_field_url_or_file')
        return attrs

    def to_representation(self, instance: DocumentFile):
        ret = super().to_representation(instance)
        if instance.file:
            ret['file'] = instance.file.url
        return ret


class ImageFileSerializer(serializers.ModelSerializer):
    class Meta:
        model = ImageFile
        fields = ('file', 'uuid')

    def to_representation(self, instance: ImageFile):
        ret = super().to_representation(instance)
        ret['image'] = instance.file.url
        return ret
