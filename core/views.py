from rest_framework import viewsets

from core.models import City
from core.models import Cuisine
from core.serializers import CitySerializer
from core.serializers import CuisineSerializer
from restaurant_booking_backend.permissions import IsAdminOrReadOnly


class CityViewSet(viewsets.ModelViewSet):
    queryset = City.objects.all()
    serializer_class = CitySerializer
    permission_classes = [IsAdminOrReadOnly]
    pagination_class = None

class CuisineViewSet(viewsets.ModelViewSet):
    queryset = Cuisine.objects.all()
    serializer_class = CuisineSerializer
    permission_classes = [IsAdminOrReadOnly]
    pagination_class = None