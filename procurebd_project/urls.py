"""procurebd_project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
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
from django.contrib import admin
from django.urls import path
from django.conf.urls import url
from procurebd_api.views import *

urlpatterns = [
    path('admin/', admin.site.urls),
    url(r'views/profileuser_list/$', UserList.as_view(), name='user_list'),
    url(r'views/profileuser_list/(?P<id>\d+)$', UserDetail.as_view(), name='user_list'),
    url(r'views/auth/$', UserAuthentication.as_view(), name='User Authentication API'),
    
    #Item URLS
    url(r'views/item_list/$', ItemList.as_view(), name='item_list'),
    url(r'views/item_list/(?P<item_name>\w+)$', ItemDetail.as_view(), name='item_by_name'),
    
    #Vendor URLS
    url(r'views/vendor_list/$', VendorList.as_view(), name='vendor_list'),
    url(r'views/vendor_list/(?P<vendor_name>\w+)$', VendorDetail.as_view(), name='vendor_by_name'),
]
