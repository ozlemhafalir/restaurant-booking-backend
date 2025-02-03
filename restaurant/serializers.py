from rest_framework import serializers
from cloudinary import CloudinaryImage

from core.serializers import CuisineSerializer
from restaurant.models import Restaurant, RestaurantImage


class RestaurantImageSerializer(serializers.ModelSerializer):
    image_url = serializers.SerializerMethodField()
    thumbnail_url = serializers.SerializerMethodField()

    def get_image_url(self, obj):
        return obj.image.build_url(secure=True)

    def get_thumbnail_url(self, obj):
        return obj.image.build_url(height=300, secure=True)
    class Meta:
        model = RestaurantImage
        fields = ['id', 'restaurant', 'image', 'image_url', 'thumbnail_url']


class RestaurantSerializer(serializers.ModelSerializer):
    city_name = serializers.ReadOnlyField(source='city.name')
    cuisines = CuisineSerializer(many=True, read_only=True)
    images = RestaurantImageSerializer(many=True, read_only=True)
    menu_url = serializers.ReadOnlyField(source='menu.url')

    class Meta:
        model = Restaurant
        fields = ['id', 'name', 'slug', 'description', 'address', 'city', 'cuisines', 'status', 'owner', 'menu',
                  'created_on', 'updated_on', 'city_name', 'images', 'menu_url']


class RegisterRestaurantSerializer(serializers.ModelSerializer):
    class Meta:
        model = Restaurant
        fields = ['name', 'description', 'address', 'city', 'cuisines']
