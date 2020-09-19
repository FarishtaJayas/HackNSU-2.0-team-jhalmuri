from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from .serializers import *
# Create your views here.


class UserList(APIView):
    def get(self, request):
        
        model = ProfileUser.objects.all()
        serializer = UserSerializer(model, many=True)
        return Response(serializer.data)