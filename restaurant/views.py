from django.db.models import Count

from rest_framework import viewsets, filters
from django_filters.rest_framework import DjangoFilterBackend

from restaurant.models import Restaurant
from restaurant.serializers import RestaurantSerializer
from restaurant_booking_backend.permissions import IsOwnerOrReadOnly


class RestaurantViewSet(viewsets.ModelViewSet):
    queryset = Restaurant.objects.annotate(popularity=Count('reservations')).all()
    serializer_class = RestaurantSerializer
    lookup_field = 'slug'
    permission_classes = [IsOwnerOrReadOnly]
    filter_backends = [DjangoFilterBackend, filters.OrderingFilter]
    ordering_fields = ['name', 'created_on', 'popularity']
    filterset_fields = ['city', 'cuisines']

