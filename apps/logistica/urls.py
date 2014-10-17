from django.conf.urls import patterns, include, url
from .views import IndexView,PersonaView,PacienteBView

urlpatterns = patterns('',
	url(r'^$',IndexView.as_view()),
	url(r'^persona/$',PersonaView.as_view() , name="persona"),	
	url(r'^pacienteB/$',PacienteBView.as_view() , name="pacienteB"),
	url(r'^buscar-ajax/$', 'apps.logistica.views.BuscarAjax' , name='buscar'),
	url(r'^create-post/$', 'apps.logistica.views.CreatePost' , name='create'),	
	url(r'^home/$', 'apps.logistica.views.home' , name='home'),
)
