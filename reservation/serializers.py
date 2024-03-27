from rest_framework import serializers

from reservation.models import Reservation


class ReservationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Reservation
        fields = ['date', 'guests', 'note', 'restaurant', 'user', 'status']
