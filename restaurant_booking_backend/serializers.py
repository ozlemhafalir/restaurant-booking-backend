from django.contrib.auth.models import User
from rest_framework import serializers, validators
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer


class CustomTokenObtainPairSerializer(TokenObtainPairSerializer):
    @classmethod
    def get_token(cls, user):
        token = super().get_token(user)
        token['name'] = user.username
        # you can put any other fields you wish and within the user object
        return token


class RegisterSerializer(serializers.Serializer):
    username = serializers.CharField(
        required=True,
        validators=[validators.UniqueValidator(queryset=User.objects.all())])
    password = serializers.CharField(required=True)