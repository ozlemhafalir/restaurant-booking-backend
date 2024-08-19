from rest_framework import serializers

from restaurant.models import Restaurant


class RestaurantSerializer(serializers.ModelSerializer):
    city_name = serializers.ReadOnlyField(source='city.name')
    class Meta:
        model = Restaurant
        fields = ['id', 'name', 'slug', 'description', 'address', 'city', 'cuisines', 'status', 'owner', 'menu',
                  'created_on', 'updated_on', 'city_name']
