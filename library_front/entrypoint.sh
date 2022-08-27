#!/bin/sh

if [ "$1" = "run-front" ]; then
    cd library_front
    if [ "$2" = "react-start" ]; then
        exec npm start
    elif [ "$2" = "react-build" ]; then
        npm ci --silent
        exec npm run build
    fi
fi
