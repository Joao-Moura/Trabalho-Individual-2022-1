#!/bin/sh

cd library_back
if [ "$1" = "run" ]; then
    if [ "$2" = "django-debug" ]; then
        exec python manage.py runserver 0.0.0.0:8000
    elif [ "$2" = "django-gunicorn" ]; then
        python manage.py collectstatic --noinput
        exec gunicorn "src.wsgi:application" \
            --bind 0.0.0.0:8000 \
            --workers 4
    fi
elif [ "$1" = "migrate" ]; then
    exec python manage.py migrate
fi
