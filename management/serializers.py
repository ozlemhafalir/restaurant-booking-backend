from rest_framework import serializers

from django.contrib.auth import get_user_model
from rest_framework import serializers

from core.serializers import UserSerializer
from reservation.models import Reservation
from restaurant.models import RestaurantImage
from restaurant.serializers import RestaurantSerializer


class ProfileSerializer(serializers.ModelSerializer):
    class Meta:
        model = get_user_model()
        fields = ['id', 'username', 'email', 'first_name', 'last_name']
        read_only_fields = ['id', 'username', 'email']


class ReservationSerializer(serializers.ModelSerializer):
    restaurant = RestaurantSerializer(read_only=True)
    user = UserSerializer(read_only=True)
    username = serializers.ReadOnlyField(source="user.username")

    class Meta:
        model = Reservation
        fields = ['id', 'date', 'guests', 'note', 'restaurant', 'user', 'status', 'created_on', 'username']


class RestaurantImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = RestaurantImage
        fields = ['id', 'restaurant', 'image']
