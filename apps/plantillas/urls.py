from django.conf.urls import patterns, include, url

urlpatterns = patterns('',		

	
	url(r'^home-item/$', 'apps.plantillas.views.HomeItem' , name='Item'),
	url(r'^create-item/$', 'apps.plantillas.views.CreateItem' , name='createitem'),
	url(r'^buscar-item/$', 'apps.plantillas.views.BuscarItem' , name='buscaritem'),
	url(r'^modi-item/$', 'apps.plantillas.views.ModiItem' , name='modificaritem '),
	url(r'^plantilla-consulta/$', 'apps.plantillas.views.PlantConsulta' , name='PlantillaConsulta'),
	url(r'^reporte/resultado/(?P<idpaciente>[^/]+)/(?P<iddetalle>[^/]+)/$', 'apps.plantillas.views.crear_reporte_resultado', name='ReporteHorarioServicio'),

)
