from .base  import *

DEBUG = True

ALLOWED_HOSTS = []


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'consultorio',
        'USER': 'root',
        'PASSWORD': 'dynamo',
    }
}

STATIC_URL = '/static/'
