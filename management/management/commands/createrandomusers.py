import string
import random
from django.contrib.auth.models import User
from django.core.management.base import BaseCommand, CommandError


class Command(BaseCommand):
    help = "Generates random users"

    def add_arguments(self, parser):
        parser.add_argument("count", type=int)

    def handle(self, *args, **options):
        count = options["count"]
        self.stdout.write(f"Generating {count} users...")
        for i in range(count):
            name = self.generate_random_string()
            surname = self.generate_random_string()
            username = f"{name}{surname}"
            user = User.objects.create_user(username=username, password="123456", first_name=name, last_name=surname)
            self.stdout.write(f"User {username} generated with id: {user.id}")

    def generate_random_string(self):
        return ''.join(random.choices(string.ascii_lowercase, k=random.randint(3, 10)))
