from django.conf.urls import include
from django.urls.conf import path
from rest_framework_simplejwt import views as jwt_views

from .views import CustomUserCreate, LogoutAndBlacklistRefreshTokenForUserView


urlpatterns = [
    path('token/obtain/', jwt_views.TokenObtainPairView.as_view(),
        name='token_create'), 
    path('token/refresh/', jwt_views.TokenRefreshView.as_view(), name='token_refresh'),
    path('user/create/',CustomUserCreate.as_view(),name='create_user'),
    path('token/blacklist/', LogoutAndBlacklistRefreshTokenForUserView.as_view(),
        name='blacklist')
]
