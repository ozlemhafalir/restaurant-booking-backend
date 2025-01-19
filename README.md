# Restaurant Booking Website - Backend

## Overview
This is the backend for the Restaurant Booking Website. It provides API endpoints for managing restaurant bookings, restaurant management, reservation management, user authentication, and other core functionalities. The backend is built using Python Django, Django Rest Framework with a PostgreSQL database and Cloudinary for media storage. The application is deployed on Heroku with continuous deployment enabled.

---

## Features
- **User Authentication**: User registration, login, and authentication.
- **Booking Management**: Create, view, update, and cancel bookings.
- **Restaurant Management**: Manage restaurant details.
- **Media Handling**: Store and retrieve images using Cloudinary.
- **Scalable Deployment**: Deployed on Heroku with continuous deployment.

---

## Tech Stack
- **Framework**: Python Django with Django Rest Framework
- **Database**: PostgreSQL
- **Media Storage**: Cloudinary
- **Deployment**: Heroku
- **CI/CD**: Continuous deployment using GitHub Actions

---

## Setup and Installation

### Prerequisites
- Python 3.9+
- PostgreSQL
- Cloudinary account
- Google Maps API Key

### Installation Steps
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/ozlemhafalir/restaurant-booking-backend
   cd restaurant-booking-backend
   ```

2. **Create and Activate Virtual Environment**:
   ```bash
   python -m venv env
   source env/bin/activate
   ```

3. **Install Dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

4. **Set Environment Variables**:
   Copy `.env.template` file in the project root to `.env` and update with correct local configuration:
   ```bash
   cp .env.template .env
   ```
   Example local configuration:
   ```env
   DATABASE_URL=
   HOST=127.0.0.1
   CLOUDINARY_URL=
   ```

5. **Apply Migrations**:
   ```bash
   python manage.py migrate
   ```

6. **Run the Server**:
   ```bash
   python manage.py runserver
   ```

---

## Deployment

The backend is deployed on Heroku. Continuous deployment is set up to trigger whenever changes are pushed to the main branch.

---


## Testing

1. **Run Unit Tests**:
   ```bash
   python manage.py test
   ```
