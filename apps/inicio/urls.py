from django.conf.urls import patterns, include, url

urlpatterns = patterns('',
    url(r'^inicio$','apps.inicio.views.IndexView',name='inicio'),
    #url(r'^$',IndexView.as_view()),
    url(r'^login/$','django.contrib.auth.views.login' ,
     {'template_name':'inicio/login.html'},name='login'),
    url(r'^cerrar/$', 'django.contrib.auth.views.logout_then_login' ,name='logout'),
    url(r'^$','apps.inicio.views.cargar_servicio', name="Principal"),
    url(r'^Bienvenido$','apps.inicio.views.Bienvenido',name='Bienvenido'),
)
