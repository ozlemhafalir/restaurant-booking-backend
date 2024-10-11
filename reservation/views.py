
from rest_framework import viewsets, filters
from django_filters.rest_framework import DjangoFilterBackend

from reservation.models import Reservation
from reservation.serializers import ReservationSerializer


class ReservationViewSet(viewsets.ModelViewSet):
    queryset = Reservation.objects.all()
    serializer_class = ReservationSerializer

    def perform_create(self, serializer):
        serializer.save(user=self.request.user)
