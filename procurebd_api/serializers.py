from rest_framework import serializers
from procurebd_api.models import ProfileUser
from procurebd_api.models import Item



class UserSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = ProfileUser
        #fields = ('name', 'ranking')
        fields = '__all__'
        
class ItemSerializer(serializers.ModelSerializer):
    
        
    class Meta:
        model = Item
        fields ='__all__'