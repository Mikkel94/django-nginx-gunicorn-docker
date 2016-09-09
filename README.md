# django-nginx-gunicorn-docker

This docker-compose setup is everything you need to get a django-nginx-gunicorn webserver up and running. This guide is an adaption of [andrecp](https://github.com/andrecp/django-tutorial-docker-nginx-postgres)'s guide.

## Installation

1. Place your project root in django-nginx-gunicorn-docker/app
2. Copy over the app/requirements.txt to django-nginx-gunicorn-docker/requirements.txt, keep the first lines of the original though. (TODO, must be a better way? Script?)
3. In most cases you'll be fine with sqlite server for testing, but you can use this docker-compose for deploying just as well. In that case read [further](#example-postgres-django).
4. Change the django-nginx-gunicorn-docker/Dockerfile to read "<name_of_django_app>.wsgi:application" where appropriate.
5. Run the rebuild_docker.sh

Nginx will now be serving from port 80.

## Example postgres django 

```
DEBUG = True
DEBUG_TOOLBAR_PATCH_SETTINGS = False 
TEMPLATE_DEBUG = DEBUG

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'postgres',
        'USER': 'postgres',
        'HOST': 'postgres',
        'PORT': '5432',
    }
}

AUTHENTICATION_BACKENDS = (
    'django.contrib.auth.backends.ModelBackend',
)
```
