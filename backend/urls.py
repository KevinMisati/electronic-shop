from django.conf.urls import include
from django.urls.conf import path
from .views import ProductViewSet
from rest_framework import routers

router = routers.DefaultRouter()
router.register("products",ProductViewSet,basename='products')

urlpatterns = [
    path("",include(router.urls)),
]
