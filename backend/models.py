from django.db import models
import string
import random

# Create your models here.

def generate_unique_code():
    length = 6

    while True:
        code = ''.join(random.choices(string.ascii_uppercase, k=length))
        if Products.objects.filter(code=code).count() == 0:
            break

    return code

class Products(models.Model):
    code = models.CharField(
        max_length=8, default=generate_unique_code, unique=True)
    title = models.CharField(max_length=200)
    new_price = models.DecimalField(decimal_places=2,max_digits=15)
    old_price = models.DecimalField(decimal_places=2,max_digits=15)
    company = models.CharField(max_length=150)
    info = models.TextField()
    top_selling = models.BooleanField(default=False)
    favourite = models.BooleanField(default=False)
    img = models.ImageField(upload_to='images/',default='../img/29118.jpg')

    def __str__(self):
        return self.title