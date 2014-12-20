from .base  import *

DEBUG = True

ALLOWED_HOSTS = []


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'consultorio',
        'USER': 'root',
        'PASSWORD': 'dynamo',
        'HOST': 'localhost',
        'POR': '5432',
    }
}

STATIC_URL = '/static/'
STATICFILES_DIRS = [BASE_DIR.child('static')]
