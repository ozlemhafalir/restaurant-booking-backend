from .serializers import CustomTokenObtainPairSerializer
from rest_framework_simplejwt.views import TokenObtainPairView

class CustomTokenObtainpairView(TokenObtainPairView):
    serializer_class = CustomTokenObtainPairSerializer
