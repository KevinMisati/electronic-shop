from django.contrib import admin
from .models import Product

# Register your models here.


class ProductAdmin(admin.ModelAdmin):
    fields = ['code','title', 'new_price', 'old_price', 'company',
            'info', 'top_selling', 'favourite','category','img']
    


admin.site.register(Product,ProductAdmin)
