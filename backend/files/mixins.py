from rest_framework import status
from rest_framework.decorators import action
from rest_framework.response import Response


class DeleteAllFilesMixin:
    """
    Retrieve a model instance.
    """
    @action(detail=False, methods=['delete'], serializer_class=None, url_path='delete')
    def delete_all(self, request, *args, **kwargs):
        resp = self.get_queryset().delete()
        return Response(data={'status': resp}, status=status.HTTP_200_OK)
