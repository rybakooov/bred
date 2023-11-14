#!/bin/bash

./bin/install.sh
python3 manage.py migrate
rm -f ./*.pid
python3 manage.py runserver 0.0.0.0:8000
gunicorn -c /app/gunicorn.conf.py wsgi:application