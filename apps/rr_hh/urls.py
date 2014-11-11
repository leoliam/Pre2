from django.conf.urls import patterns, include, url


urlpatterns = patterns('',			
	url(r'^home-personal/$', 'apps.rr_hh.views.HomePersonal' , name='personal'),
	url(r'^buscar-personal/$', 'apps.rr_hh.views.BuscarPersonal' , name='buscarP'),
	url(r'^create-personal/$', 'apps.rr_hh.views.CreatePersonal' , name='createP'),
	url(r'^modi-personal/$', 'apps.rr_hh.views.ModiPersonal' , name='modificarP '),
	url(r'^home-pass/$', 'apps.rr_hh.views.HomePass' , name='Pass'),
	url(r'^modi-pass/$', 'apps.rr_hh.views.ModiPass' , name='modiPass'),
	url(r'^home-carga/$', 'apps.rr_hh.views.HomeCarga' , name='Carga'),
	url(r'^create-carga/$', 'apps.rr_hh.views.CreateCarga' , name='createCarga'),
	url(r'^create-cargas/$', 'apps.rr_hh.views.CreateCargas' , name='createCargas'),
)
