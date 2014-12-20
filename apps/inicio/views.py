from django.shortcuts import render
from django.shortcuts import render_to_response
from django.views.generic import TemplateView
from apps.logistica.models import Servicio
from apps.inicio.models import Promocion
from apps.rr_hh.models import Empleado
from django.core import serializers
from django.http import HttpResponse, Http404
from datetime import datetime
from datetime import date

def IndexView(req):
	consulta=Empleado.objects.filter(user__username=req.user)
	return render(req, 'inicio/index.html',{'consulta':consulta})

def cargar_servicio(request):
	consulta = Servicio.objects.select_related().filter(area__area_nom__icontains='Analisis')
	consulta2 = Servicio.objects.select_related().filter(area__area_nom__icontains='Ecografias')
	consulta3 = Servicio.objects.select_related().filter(area__area_nom__icontains='Consultas')
	consulta6 = Promocion.objects.filter(fecha_registro__month=datetime.now().month)
	return render(request, 'inicio/principal.html',{'consulta':consulta, 'consulta2':consulta2,'consulta3':consulta3,'consulta6':consulta6})
		

