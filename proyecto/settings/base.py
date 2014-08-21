from unipath import Path
BASE_DIR = Path(__file__).ancestor(3)

SECRET_KEY = '%3$0qcuk&fbp4dgc*)na5yuexbmb@in%63+jnup%e0v12xukl9'
DJANGO_APPS = (
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'apps.inicio',
    'apps.logistica',
    'apps.rr_hh',
    'apps.plantillas',
    'apps.solicitudes',
    'apps',
    )

THIRD_PARTY_APPS= ( 
    'south',
    )

LOCAL_APPS = (

    )

INSTALLED_APPS = DJANGO_APPS + THIRD_PARTY_APPS + LOCAL_APPS

MIDDLEWARE_CLASSES = (
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
)

ROOT_URLCONF = 'proyecto.urls'

WSGI_APPLICATION = 'proyecto.wsgi.application'

LANGUAGE_CODE = 'es-pe'

TIME_ZONE = 'America/Lima'

USE_I18N = True

USE_L10N = True

USE_TZ = True

TEMPLATE_DIRS=[BASE_DIR.child('templates')]