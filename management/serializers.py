from rest_framework import serializers

from django.contrib.auth import get_user_model

from core.serializers import UserSerializer
from reservation.models import Reservation
from restaurant.models import Restaurant


class ProfileSerializer(serializers.ModelSerializer):
    class Meta:
        model = get_user_model()
        fields = ['id', 'username', 'email', 'first_name', 'last_name']
        read_only_fields = ['id', 'username', 'email']


class RestaurantSerializer(serializers.ModelSerializer):
    class Meta:
        model = Restaurant
        fields = ['id', 'name', 'slug', 'description', 'address', 'city', 'cuisines', 'status', 'owner', 'menu',
                  'created_on', 'updated_on']
        read_only_fields = ['owner']


class ReservationSerializer(serializers.ModelSerializer):
    restaurant = RestaurantSerializer(read_only=True)
    user = UserSerializer(read_only=True)
    username = serializers.ReadOnlyField(source="user.username")

    class Meta:
        model = Reservation
        fields = ['id', 'date', 'guests', 'note', 'restaurant', 'user', 'status', 'created_on', 'username']