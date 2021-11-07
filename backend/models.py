from django.db import models
import string
import random

# Create your models here.

def random_string():
    code =  str(random.randint(100000, 999999))
    products = Product.objects.filter(code=code)
    if products.count() >= 1:
        code = str(random.randint(100000, 999999))
    return code

class Product(models.Model):
    CATEGORY_CHOICES = (
        ("laptops","laptops"),
        ("phones","phones"),
        ("accessories","accessories")
    )
    code = models.CharField(
        max_length=8, default=random_string, unique=True,null=False,blank=True)
    title = models.CharField(max_length=200)
    new_price = models.DecimalField(decimal_places=2,max_digits=15)
    old_price = models.DecimalField(decimal_places=2,max_digits=15)
    company = models.CharField(max_length=150)
    info = models.TextField()
    top_selling = models.BooleanField(default=False)
    favourite = models.BooleanField(default=False)
    img = models.ImageField(upload_to='images/',default='../img/29118.jpg')
    category = models.CharField(max_length=200,choices=CATEGORY_CHOICES,default="laptops")

    def __str__(self):
        return self.title