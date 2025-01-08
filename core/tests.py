from rest_framework import status
from rest_framework.test import APITestCase
from django.contrib.auth.models import User
from core.models import City, Cuisine

class BaseTestCase(APITestCase):
    def setUp(self):
        self.admin_user = User.objects.create_superuser(
            username='admin', password='adminpass'
        )
        self.regular_user = User.objects.create_user(
            username='user', password='userpass'
        )

        self.city = City.objects.create(name='New York')
        self.cuisine = Cuisine.objects.create(name='Italian')

    def authenticate_as_admin(self):
        self.client.login(username='admin', password='adminpass')

    def authenticate_as_user(self):
        self.client.login(username='user', password='userpass')

class CityViewSetTestCase(BaseTestCase):
    def test_list_cities(self):
        response = self.client.get('/api/city/')
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(len(response.data), 1)

    def test_create_city_as_admin(self):
        self.client.login(username='admin', password='adminpass')
        response = self.client.post('/api/city/', {'name': 'Los Angeles'})
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        self.assertEqual(City.objects.count(), 2)

    def test_create_city_as_user_forbidden(self):
        self.authenticate_as_user()
        response = self.client.post('/api/city/', {'name': 'Chicago'})
        self.assertEqual(response.status_code, status.HTTP_403_FORBIDDEN)

    def test_update_city_as_admin(self):
        self.authenticate_as_admin()
        response = self.client.put(f'/api/city/{self.city.id}/', {'name': 'Boston'})
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.city.refresh_from_db()
        self.assertEqual(self.city.name, 'Boston')

    def test_update_city_as_user_forbidden(self):
        self.authenticate_as_user()
        response = self.client.put(f'/api/city/{self.city.id}/', {'name': 'San Francisco'})
        self.assertEqual(response.status_code, status.HTTP_403_FORBIDDEN)

class CuisineViewSetTestCase(BaseTestCase):
    def test_list_cuisines(self):
        response = self.client.get('/api/cuisine/')
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(len(response.data), 1)

    def test_create_cuisine_as_admin(self):
        self.authenticate_as_admin()
        response = self.client.post('/api/cuisine/', {'name': 'Mexican'})
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
        self.assertEqual(Cuisine.objects.count(), 2)

    def test_create_cuisine_as_user_forbidden(self):
        self.authenticate_as_user()
        response = self.client.post('/api/cuisine/', {'name': 'Chinese'})
        self.assertEqual(response.status_code, status.HTTP_403_FORBIDDEN)

    def test_update_cuisine_as_admin(self):
        self.authenticate_as_admin()
        response = self.client.put(f'/api/cuisine/{self.cuisine.id}/', {'name': 'French'})
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.cuisine.refresh_from_db()
        self.assertEqual(self.cuisine.name, 'French')

    def test_update_cuisine_as_user_forbidden(self):
        self.authenticate_as_user()
        response = self.client.put(f'/api/cuisine/{self.cuisine.id}/', {'name': 'Greek'})
        self.assertEqual(response.status_code, status.HTTP_403_FORBIDDEN)
