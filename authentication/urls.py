from django.conf.urls import include
from django.urls.conf import path
from rest_framework_simplejwt import views as jwt_views

from authentication.views import CustomUserCreate, HelloWorldView


urlpatterns = [
    path('token/obtain/', jwt_views.TokenObtainPairView.as_view(),
        name='token_create'),  # override sjwt stock token
    path('token/refresh/', jwt_views.TokenRefreshView.as_view(), name='token_refresh'),
    path('user/create/',CustomUserCreate.as_view(),name='create_user'),
    path('hello/',HelloWorldView.as_view(),name="hello")
]
