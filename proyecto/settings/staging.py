from .base  import *

DEBUG = False
TEMPLATE_DEBUG = False
ALLOWED_HOSTS = ['*']


DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'dc1m9gac177scq',
        'USER': 'fubuqcsrtifhdk',
        'PASSWORD': '9iJkJd6V4BsiZSRgECv9BkbTh1',
        'HOST': 'ec2-54-235-76-206.compute-1.amazonaws.com',
        'PORT': '5432',
    }
}

STATIC_URL = '/static/'
STATICFILES_DIRS = [BASE_DIR.child('static')]
STATIC_ROOT = 'staticfiles'
