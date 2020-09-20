from rest_framework import serializers
from procurebd_api.models import *




class UserSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = ProfileUser
        #fields = ('name', 'ranking')
        fields = '__all__'
        
class ItemSerializer(serializers.ModelSerializer):
    
        
    class Meta:
        model = Item
        fields ='__all__'
        
class VendorSerializer(serializers.ModelSerializer):
    
        
    class Meta:
        model = Vendor
        fields ='__all__'