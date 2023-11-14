"""backend URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.conf.urls import url
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include
from django.views.decorators.csrf import csrf_exempt
from drf_yasg import openapi
from drf_yasg.views import get_schema_view
from rest_framework import permissions
from rest_framework.routers import DefaultRouter

from files.views import VideoFileViewSet, DocumentFileViewSet, ImageFileViewSet
from learning.views import LessonViewSet, SubjectViewSet, AdminSubjectViewSet, AdminLessonViewSet
from stocks.views import FeedView, TickerView
from users.views import UserViewSet, CustomObtainAuthToken, AdminCustomObtainAuthToken, CheckStatusPayment, \
    ExistsUserView, RegeneratePasswords, MailAllUsers

schema_view = get_schema_view(
    openapi.Info(
        title='StartTheHistory API',
        default_version='v1',
        description='This is the base API for trade-study project.',
        license=openapi.License(name="BSD License"),
    ),
    public=True,
    permission_classes=(permissions.AllowAny,)
)

admin_subject_router = DefaultRouter()
admin_subject_router.register('subjects', AdminSubjectViewSet, 'adminSubjects')

admin_lesson_router = DefaultRouter()
admin_lesson_router.register('lessons', AdminLessonViewSet, 'adminLessons')

router = DefaultRouter()
router.register('users', UserViewSet, 'users')
router.register('subjects', SubjectViewSet, 'subject')

lesson_router = DefaultRouter()
lesson_router.register('lessons', LessonViewSet, 'lessons')

files_router = DefaultRouter()
files_router.register('images', ImageFileViewSet, 'imageFiles')
files_router.register('documents', DocumentFileViewSet, 'documentFiles')
files_router.register('videos', VideoFileViewSet, 'videoFiles')

urlpatterns = [
    path('api/', include(router.urls)),
    path('api/admin/', include(admin_subject_router.urls)),
    path('api/admin/subjects/<int:subject_id>/', include(admin_lesson_router.urls)),
    path('api/subjects/<int:subject_id>/', include(lesson_router.urls)),
    path('api/files/', include(files_router.urls)),
    path('api/stocks/news/', FeedView.as_view()),
    path('api/stocks/<str:code>/<str:ticker>/', TickerView.as_view()),
    path('api/auth/', csrf_exempt(CustomObtainAuthToken.as_view()), name='obtain-token'),
    path('api/auth/admin/', csrf_exempt(AdminCustomObtainAuthToken.as_view()), name='admin-obtain-token'),
    path('api/check_payments', CheckStatusPayment.as_view()),
    path('api/exists', ExistsUserView.as_view()),
    path('api/admin/regenerate-passwords/', RegeneratePasswords.as_view()),
    path('api/admin/mail-all/', MailAllUsers.as_view()),
]

if settings.DEBUG:
    urlpatterns += [
        path('admin/', admin.site.urls),
        url(r'^swagger(?P<format>\.json|\.yaml)$', schema_view.without_ui(cache_timeout=0), name='schema-json'),
        url(r'^swagger/$', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),
        url(r'^redoc/$', schema_view.with_ui('redoc', cache_timeout=0), name='schema-redoc'),
    ] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
