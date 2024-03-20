from rest_framework import viewsets

from core.models import City
from core.models import Cuisine
from core.serializers import CitySerializer
from core.serializers import CuisineSerializer


class CityViewSet(viewsets.ModelViewSet):
    queryset = City.objects.all()
    serializer_class = CitySerializer


class CuisineViewSet(viewsets.ModelViewSet):
    queryset = Cuisine.objects.all()
    serializer_class = CuisineSerializer
