from rest_framework import serializers
from procurebd_api.models import ProfileUser


class UserSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = ProfileUser
        #fields = ('name', 'ranking')
        fields = '__all__'
        
        
        