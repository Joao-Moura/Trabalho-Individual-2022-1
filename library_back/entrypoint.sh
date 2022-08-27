#!/bin/sh

if [ "$1" = "run-back" ]; then
    cd library_back
    if [ "$2" = "django-debug" ]; then
        exec python manage.py runserver 0.0.0.0:8000
    elif [ "$2" = "django-migrate" ]; then
        python manage.py migrate
        exec python manage.py collectstatic --noinput
    elif [ "$2" = "django-prod" ]; then
        exec gunicorn src.wsgi:application
    fi
elif [ "$1" = "migrate" ]; then
    exec python manage.py migrate
fi
