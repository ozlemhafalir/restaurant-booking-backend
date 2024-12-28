from datetime import datetime, timedelta

from django.core.management.base import BaseCommand, CommandError
import random
from django.contrib.auth.models import User

from reservation.models import Reservation
from restaurant.models import Restaurant


class Command(BaseCommand):
    help = "Generates random reservations"

    def add_arguments(self, parser):
        parser.add_argument("count", type=int)

    def handle(self, *args, **options):
        count = options["count"]
        print(f"Generating {count} reservations...")
        users = list(User.objects.all())
        restaurants = list(Restaurant.objects.all())
        for i in range(count):
            user = random.choice(users)
            restaurant = random.choice(restaurants)
            date = datetime.today() + timedelta(days=random.randint(-30, 30))
            status = random.choice(Reservation.Status.choices)[0]
            Reservation.objects.create(
                date=date,
                guests=4,
                note="randomly generated...",
                restaurant=restaurant,
                user=user,
                status=status
            )
            print(f"Created reservation for, user: {user.username}, restaurant: {restaurant.name}, date: {date}, status: {status}")
