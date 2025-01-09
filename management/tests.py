from rest_framework import status
from rest_framework.test import APITestCase
from django.contrib.auth.models import User

class ProfileViewSetTestCase(APITestCase):
    def setUp(self):
        # Create a test user
        self.user = User.objects.create_user(
            username='testuser', first_name='test', password='password123'
        )
        self.client.force_authenticate(user=self.user)
        self.profile_url = '/api/profile/me/'

    def test_retrieve_profile(self):
        # Test successful retrieval of the authenticated user's profile
        response = self.client.get(self.profile_url)
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertEqual(response.data['username'], self.user.username)

    def test_retrieve_profile_invalid_pk(self):
        # Test retrieval with an invalid PK
        response = self.client.get('/api/profile/invalid/')
        self.assertEqual(response.status_code, status.HTTP_404_NOT_FOUND)

    def test_partial_update_profile(self):
        # Test successful partial update of the authenticated user's profile
        update_data = {'first_name': 'updated'}
        response = self.client.patch(self.profile_url, data=update_data)
        self.assertEqual(response.status_code, status.HTTP_202_ACCEPTED)
        self.user.refresh_from_db()
        self.assertEqual(self.user.first_name, 'updated')

    def test_partial_update_profile_invalid_pk(self):
        # Test partial update with an invalid PK
        update_data = {'username': 'updated'}
        response = self.client.patch('/api/profile/invalid/', data=update_data)
        self.assertEqual(response.status_code, status.HTTP_404_NOT_FOUND)
