import string
import random
from django.contrib.auth.models import User
from django.core.management.base import BaseCommand, CommandError

from restaurant.models import Restaurant


class Command(BaseCommand):
    help = "Distributes Test Restaurants to Random Users"

    def handle(self, *args, **options):
        users = list(User.objects.all())
        restaurants = list(Restaurant.objects.all())

        for restaurant in restaurants:
            owner = random.choice(users)
            restaurant.owner = owner
            restaurant.save()
            self.stdout.write(f"Assigned '{restaurant.name}' to {owner.username}")

        self.stdout.write(self.style.SUCCESS("All restaurants have been assigned!"))