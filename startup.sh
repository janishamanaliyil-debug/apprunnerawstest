#!/bin/bash

# Collect static files
python manage.py collectstatic --noinput

# Run migrations (optional, but usually recommended)
python manage.py migrate --noinput

# Start Gunicorn WSGI server
gunicorn --workers 2 myproject.wsgi:application --bind 0.0.0.0:$PORT
