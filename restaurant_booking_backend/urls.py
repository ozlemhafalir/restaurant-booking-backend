"""
URL configuration for restaurant_booking_backend project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from rest_framework import routers
from rest_framework_simplejwt import views as jwt_views

from core.views import CityViewSet, CuisineViewSet
from management.views import ProfileViewSet, ProfileReservationViewSet, OwnerRestaurantViewSet, \
    OwnerRestaurantReservationViewSet
from reservation.views import ReservationViewSet
from restaurant.views import RestaurantViewSet, RegisterRestaurantViewSet
from restaurant_booking_backend.views import RegisterViewSet

router = routers.DefaultRouter()
router.register(r'city', CityViewSet)
router.register(r'cuisine', CuisineViewSet)
router.register(r'restaurant', RestaurantViewSet)
router.register(r'register-restaurant', RegisterRestaurantViewSet, basename='register_restaurant')
router.register(r'reservation', ReservationViewSet)
router.register(r'profile', ProfileViewSet, basename='profile')
router.register(r'profile-reservation', ProfileReservationViewSet, basename='profile_reservation')
router.register(r'owner-restaurant', OwnerRestaurantViewSet, basename='owner_restaurant')
router.register(r'owner-restaurant/(?P<restaurant_pk>\d+)/reservation', OwnerRestaurantReservationViewSet,
                basename='owner_restaurant_reservation')
router.register(r'register', RegisterViewSet, basename='register')

urlpatterns = [
    path('admin/', admin.site.urls),
    path('token/', jwt_views.TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('token/refresh/', jwt_views.TokenRefreshView.as_view(), name='token_refresh'),
    path('api/', include(router.urls))
]
