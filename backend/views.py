from django.db.models.query import QuerySet
from django.shortcuts import render
from rest_framework import viewsets,permissions
from .serializers import ProductsSerializer
from .models import Products

# Create your views here.
class ProductViewSet(viewsets.ModelViewSet):
    permission_classes = [permissions.AllowAny]
    queryset = Products.objects.all()
    serializer_class = ProductsSerializer