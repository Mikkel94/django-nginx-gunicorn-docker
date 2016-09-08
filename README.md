# django-nginx-gunicorn-docker

This docker-compose setup is everything you need to get a django-nginx-gunicorn webserver up and running. By no means complete.

## Installation

1. Place your project root in django-nginx-gunicorn-docker/app
2. Copy over the app/requirements.txt to django-nginx-gunicorn-docker/requirements.txt, keep the first lines of the original though. (TODO fix this)
3. Change the django-nginx-gunicorn-docker/Dockerfile to read "<name_of_django_app>.wsgi:application" where appropriate.
4. Run the rebuild_docker.sh

Nginx will now be serving from port 80.

## TODO

- Need to use the postgres db instead of sqlite
- Refine the build bash
- Test on new server
