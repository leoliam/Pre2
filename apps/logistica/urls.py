from django.conf.urls import patterns, include, url
from .views import IndexView,PersonaView

urlpatterns = patterns('',
	url(r'^$',IndexView.as_view()),
	url(r'^persona/$',PersonaView.as_view() , name="persona"),
	
)
