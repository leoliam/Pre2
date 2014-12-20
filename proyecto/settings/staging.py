from .base  import *

DEBUG = True

ALLOWED_HOSTS = []


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'd7r2ke79ptpunf',
        'USER': 'xeszfbazcfebck',
        'PASSWORD': 'hkR9cnq-ySqPfncIHioqm5MW6E',
        'HOST': 'ec2-54-163-250-41.compute-1.amazonaws.com',
        'PORT': '5432',
    }
}

STATIC_URL = '/static/'
STATICFILES_DIRS = [BASE_DIR.child('static')]
