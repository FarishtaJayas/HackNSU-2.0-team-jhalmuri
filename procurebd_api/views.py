from django.shortcuts import render
from rest_framework.authtoken.views import ObtainAuthToken
from rest_framework.authtoken.models import Token
from rest_framework.views import APIView
from rest_framework.response import Response
from .serializers import *
# Create your views here.


class UserAuthentication(ObtainAuthToken):
    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data, context={'request': request})
        serializer.is_valid(raise_exception=True)
        user = serializer.validated_data['user']
        token, created = Token.objects.get_or_create(user=user)
        return Response(token.key)

#User Functions
class UserList(APIView):
    def get(self, request):
        
        model = ProfileUser.objects.all()
        serializer = UserSerializer(model, many=True)
        return Response(serializer.data)
    
    
    def post(self, request):
        
        
        model = ProfileUser.objects.all()
        serializer = UserSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    
class UserDetail(APIView):
    
    
    def get_user(self, id):
        try:
            model = ProfileUser.objects.get(id=id)
            return model
        except ProfileUser.DoesNotExist:
            return 
        
        
    def get(self, request, id):
        
        
        if not self.get_user(id): 
            return Response(f'User with {id} is NOT in the DATABASE')
        serializer = UserSerializer(self.get_user(id))  
        return Response(serializer.data)
    
    
    def put(self, request, id):
        
        
        serializer = UserSerializer(self.get_user(id), data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    
    def delete(self, request, id):
        
        
        model = self.get_user(id)
        model.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
#Item Functions are here

class ItemList(APIView):
    
    
    def get(self, request):
        
        model = Item.objects.all()
        serializer = ItemSerializer(model, many=True)
        return Response(serializer.data)
    
    def post(self, request):
        
        
        model = Item.objects.all()
        serializer = ItemSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
class ItemDetail(APIView):
    
    
    def get_item(self, item_name):
        try:
            model = Item.objects.get(item_name=item_name)
            return model
        except Item.DoesNotExist:
            return 
        
        
    def get(self, request, item_name):
        
        
        if not self.get_item(item_name): 
            return Response(f'{item_name} is NOT in the DATABASE')
        serializer = ItemSerializer(self.get_item(item_name))  
        return Response(serializer.data)
    
    
    def put(self, request, item_name):
        
        
        serializer = ItemSerializer(self.get_item(item_name), data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    
    def delete(self, request, item_name):
        
        
        model = self.get_item(item_name)
        model.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    


