#!/bin/sh

if [ "$1" = "run-back" ]; then
    cd library_back
    if [ "$2" = "django-debug" ]; then
        exec python manage.py runserver 0.0.0.0:8000
    elif [ "$2" = "django-migrate" ]; then
        python manage.py migrate
        python manage.py collectstatic --noinput
    fi
elif [ "$1" = "run-front" ]; then
    cd library_front
    if [ "$2" = "react-start" ]; then
        exec npm start
    elif [ "$2" = "react-build" ]; then
        npm ci --silent
        exec npm run build
    fi
elif [ "$1" = "migrate" ]; then
    exec python manage.py migrate
fi
