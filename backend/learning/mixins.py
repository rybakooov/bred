from typing import Union

from drf_yasg.utils import swagger_auto_schema, no_body
from rest_framework.decorators import action
from rest_framework.generics import get_object_or_404
from rest_framework import mixins

from learning.models import Lesson, Subject


class SwapPositionMixin(mixins.ListModelMixin):
    swap_lookup = 'second_id'

    @action(detail=True, methods=['patch'], name='swap', url_path=f'swap/(?P<{swap_lookup}>[^/.]+)')
    @swagger_auto_schema(request_body=no_body)
    def swap(self, request, *args, **kwargs):
        """
        Swap instances positions.
        _Note_: Swap nested instances **within the same parent instance**.
        """
        instance_1: Union[Subject, Lesson] = self.get_object()
        instance_2: Union[Subject, Lesson] = get_object_or_404(self.get_queryset(), pk=kwargs[self.swap_lookup])
        instance_1.swap(instance_2)

        return super().list(request, *args, **kwargs)


class MovePositionMixin(mixins.RetrieveModelMixin):
    move_position_lookup = 'position'

    @action(detail=True, methods=['patch'], url_path=f'to/(?P<{move_position_lookup}>[^/.]+)')
    @swagger_auto_schema(request_body=no_body)
    def move_to(self, request, *args, **kwargs):
        """
        Move instance to specified position, if it's greater than `get_max_order()` - move to max order instead.
        _Note_: Move nested instances **within the same parent instance**.
        """
        instance: Union[Subject, Lesson] = self.get_object()
        position = int(kwargs[self.move_position_lookup])
        position = max_o if position > (max_o := self.get_queryset().get_max_order()) else position
        instance.to(position)

        return super().retrieve(request, *args, **kwargs)


class NextPreviousMixin(mixins.RetrieveModelMixin):
    instance_lookup = 'instance_pk'

    @action(detail=True, methods=['get'])
    def next(self, request, *args, **kwargs):
        """
        Return instance going after specified one.
        """
        return super().retrieve(request, *args, **kwargs)

    @action(detail=True, methods=['get'])
    def previous(self, request, *args, **kwargs):
        """
        Return instance going before specified one.
        """
        return super().retrieve(request, *args, **kwargs)
