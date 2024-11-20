from django.db.models import Count

from rest_framework import viewsets, filters, status
from rest_framework.response import Response
from rest_framework.parsers import JSONParser, MultiPartParser
from django_filters.rest_framework import DjangoFilterBackend

from restaurant.models import Restaurant
from restaurant.serializers import RestaurantSerializer, RegisterRestaurantSerializer
from restaurant_booking_backend.permissions import IsOwnerOrReadOnly
from slugify import slugify


class RestaurantViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = Restaurant.objects.annotate(popularity=Count('reservations')).all()
    serializer_class = RestaurantSerializer
    lookup_field = 'slug'
    permission_classes = [IsOwnerOrReadOnly]
    filter_backends = [DjangoFilterBackend, filters.OrderingFilter, filters.SearchFilter]
    ordering_fields = ['name', 'created_on', 'popularity']
    filterset_fields = ['city', 'cuisines']
    search_fields = ['name']

class RegisterRestaurantViewSet(viewsets.ViewSet):
    queryset = Restaurant.objects.all()
    serializer_class = RegisterRestaurantSerializer
    def create(self, request):
        serializer = self.serializer_class(data=request.data)
        serializer.is_valid(raise_exception=True)
        slug = slugify(serializer.validated_data['name'])
        serializer.save(owner=self.request.user, slug=slug)
        return Response(serializer.data, status=status.HTTP_201_CREATED)
