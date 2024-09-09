from rest_framework import serializers

from core.serializers import CuisineSerializer
from restaurant.models import Restaurant, RestaurantImage


class RestaurantImageSerializer(serializers.ModelSerializer):
    image_url = serializers.ReadOnlyField(source='image.url')
    class Meta:
        model = RestaurantImage
        fields = ['id', 'restaurant', 'image', 'image_url']


class RestaurantSerializer(serializers.ModelSerializer):
    city_name = serializers.ReadOnlyField(source='city.name')
    cuisines = CuisineSerializer(many=True, read_only=True)
    images = RestaurantImageSerializer(many=True, read_only=True)

    class Meta:
        model = Restaurant
        fields = ['id', 'name', 'slug', 'description', 'address', 'city', 'cuisines', 'status', 'owner', 'menu',
                  'created_on', 'updated_on', 'city_name', 'images']
