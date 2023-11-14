from rest_framework import permissions, authentication


class BearerAuthentication(authentication.TokenAuthentication):
    """
    Simple token based authentication using generated token.

    Clients should authenticate by passing the token key in the 'Authorization'
    HTTP header, prepended with the string 'Bearer '.  For example:

        Authorization: Bearer 956e252a-513c-48c5-92dd-bfddc364e812
    """
    keyword = 'Bearer'


class UserPermission(permissions.IsAdminUser):
    """
    Create and List action only for admin.

    Users can retrieve only info about themselves.
    """
    def has_permission(self, request, view):
        if view.action in ('change_password', 'me', 'user_progress', 'partial_update', 'update'):
            return bool(
                request.user.is_authenticated and
                request.user.is_staff or
                view.get_object() == request.user
            )
        return super().has_permission(request, view)

    def has_object_permission(self, request, view, obj):
        return request.user.is_authenticated and (obj == request.user or request.user.is_staff)


class FilePermission(permissions.BasePermission):
    def has_permission(self, request, view):
        return request.user.is_staff

    def has_object_permission(self, request, view, obj):
        if request.method in permissions.SAFE_METHODS:
            return request.user.is_authenticated
        else:
            return request.user.is_staff


class SubjectPermission(permissions.IsAuthenticated):
    pass


class LessonPermission(permissions.IsAuthenticated):
    pass
