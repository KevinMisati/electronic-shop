

from django.conf.urls import url
from django.urls.conf import path
from .views import index_view


urlpatterns = [
    path('', index_view),
    path('checkout/', index_view),
    path('store/', index_view),
    path('cart/', index_view),
    path('account/login', index_view),
    path('account/signup', index_view),
    #url(r'^.*/$', index_view), # for all other urls
]