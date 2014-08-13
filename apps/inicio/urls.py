from django.conf.urls import patterns, include, url
from .views import index,index2

urlpatterns = patterns('',
    url(r'^$', 'apps.inicio.views.index'),
    url(r'^index2/$', index2.as_view()),
)
