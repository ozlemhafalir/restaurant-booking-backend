from rest_framework import serializers

from django.contrib.auth import get_user_model

from reservation.models import Reservation


class ProfileSerializer(serializers.ModelSerializer):
    class Meta:
        model = get_user_model()
        fields = ['id', 'username', 'email', 'first_name', 'last_name']
        read_only_fields = ['id', 'username', 'email']


class ReservationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Reservation
        fields = ['id', 'date', 'guests', 'note', 'restaurant', 'user', 'status', 'created_on']
