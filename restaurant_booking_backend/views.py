from django.contrib.auth.models import User
from rest_framework import viewsets, permissions, status
from rest_framework.response import Response
from .serializers import CustomTokenObtainPairSerializer, RegisterSerializer
from rest_framework_simplejwt.views import TokenObtainPairView

class CustomTokenObtainpairView(TokenObtainPairView):
    serializer_class = CustomTokenObtainPairSerializer

class RegisterViewSet(viewsets.ViewSet):
    permission_classes = [permissions.AllowAny]
    serializer_class = RegisterSerializer
    def create(self, request):
        serializer = self.serializer_class(data=request.data)
        serializer.is_valid(raise_exception=True)
        username = serializer.validated_data['username']
        password = serializer.validated_data['password']
        User.objects.create_user(username, password=password)
        return Response(serializer.data, status=status.HTTP_201_CREATED)