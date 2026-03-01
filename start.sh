#!/bin/bash
python manage.py migrate
python manage.py collectstatic --noinput
gunicorn landlord_review.wsgi:application --bind 0.0.0.0:$PORT
