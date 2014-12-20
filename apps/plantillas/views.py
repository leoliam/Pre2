from django.shortcuts import render, redirect, render_to_response
from django.views.generic import TemplateView
from apps.solicitudes.models import Resultado, Solicitud, Paciente
from apps.rr_hh.models import Programacion
from .forms import RegistrarItemForm
from django.shortcuts import render_to_response
from django.core import serializers
from django.http import HttpResponse, Http404, HttpResponseRedirect
import json


from django.template import RequestContext
import os
import StringIO
from xhtml2pdf import pisa
from django.template.loader import render_to_string
from django.shortcuts import get_object_or_404


def crear_reporte_resultado(request,idpaciente,iddetalle):
	consulta = Resultado.objects.filter(detallesoli=iddetalle)
	paciente = get_object_or_404(Paciente, id=idpaciente)
	print paciente
	lista=[]
	for carga in consulta:	
		programacion = get_object_or_404(Programacion, id=carga.detallesoli.programacion.id)				
		d={'valor':carga.resul_valor1,'pk':carga.item.id,'item':carga.item.item_nombre,'fecha':carga.detallesoli.programacion.hor_fecha}
		lista.append(d)
	html = render_to_string("plantillas/reporteplantilla.html",{'pagesize':'A4','lista':lista,'programacion':programacion,'paciente':paciente}, context_instance=RequestContext(request))
	return generar_pdf_servicio(html)


def generar_pdf_servicio(html):
	 resultado=StringIO.StringIO()
	 pdf = pisa.pisaDocument(StringIO.StringIO(html.encode("UTF-8")), resultado)
	 if not pdf.err:
	     return HttpResponse(resultado.getvalue(), mimetype='application/pdf')
	 return HttpResponse('Error al generar el PDF')

def CreateItem(request):	
	if request.method == 'POST':
		form = RegistrarItemForm(request.POST)
		response_data = {} 
		if form.is_valid():
			item= Item()
			item.item_nombre = form.cleaned_data.get('item_nombre')	
			item.servi = form.cleaned_data.get('servi')	
			item.item_valor_referencial = form.cleaned_data.get('item_valor_referencial')	
			item.item_descripcion = form.cleaned_data.get('item_descripcion')			
			item.save()		
			response_data['result'] = "El nuevo item fue Registrado con Exito"
			#response_data['postpk'] = paciente.pk	        print "XXSS"
			#paciente.pac_fecnac = form.cleaned_data.get('DNI')	        
			return HttpResponse(json.dumps(response_data),content_type="application/json")
		else:
			data = json.dumps({'errors': dict([(k, [unicode(e) for e in v]) for k,v in form.errors.items()])})        
			return HttpResponse(data,content_type="application/json")
	else:
		return HttpResponse(json.dumps({"nothing to see": "this isn't happening"}),content_type="application/json")	

def BuscarItem(request):		
	if request.is_ajax():			
		texto= request.GET['texto']
		seleccion = request.GET['seleccion']
		if seleccion=="0":
			consulta = Item.objects.select_related().filter(item_nombre__icontains=texto)
			lista=[]
			for item in consulta:
				d={'pk':item.id,'item': item.item_nombre,'valor': item.item_valor_referencial,'descripcion': item.item_descripcion
				,'fk':item.servi.id,'Servicio':item.servi.servi_nom}
				lista.append(d)	
			return HttpResponse(json.dumps(lista), content_type='application/json')	

		elif seleccion=="1":
			consulta = Item.objects.select_related().filter(servi__servi_nom__icontains=texto)
			lista=[]
			for item in consulta:
				d={'pk':item.id,'item': item.item_nombre,'valor': item.item_valor_referencial,'descripcion': item.item_descripcion
				,'fk':item.servi.id,'Servicio':item.servi.servi_nom}
				lista.append(d)	
			return HttpResponse(json.dumps(lista), content_type='application/json')
		elif seleccion=="2":
			consulta = Item.objects.select_related().filter(servi__id__icontains=texto)
			lista=[]
			for item in consulta:
				d={'pk':item.id,'item': item.item_nombre,'valor': item.item_valor_referencial,'descripcion': item.item_descripcion
				,'fk':item.servi.id,'Servicio':item.servi.servi_nom}
				lista.append(d)	
			return HttpResponse(json.dumps(lista), content_type='application/json')	
	else :
		print "mal"
		raise Http404

def ModiItem(request):	
	if request.method == 'POST':
		form = RegistrarItemForm(request.POST)
		response_data = {} 
		if form.is_valid():
			item= Item.objects.get(id=form.cleaned_data.get('id'))	
			item.item_nombre = form.cleaned_data.get('item_nombre')	
			item.servi = form.cleaned_data.get('servi')	
			item.item_valor_referencial = form.cleaned_data.get('item_valor_referencial')	
			item.item_descripcion = form.cleaned_data.get('item_descripcion')			
			item.save()		
			response_data['result'] = "Los datos de la Categoria fueron Actualizados con Exito"  
			return HttpResponse(json.dumps(response_data),content_type="application/json")

		else:
			data = json.dumps({'errors': dict([(k, [unicode(e) for e in v]) for k,v in form.errors.items()])})        
			return HttpResponse(data,content_type="application/json")
	else:
		return HttpResponse(json.dumps({"nothing to see": "this isn't happening"}),content_type="application/json")	

def HomeItem(req):
	tmpl_vars = {
		'form': RegistrarItemForm()
	}
	return render(req, 'plantillas/plantillaitem.html', tmpl_vars)


def PlantConsulta(req):
	return render(req, 'plantillas/treeview.html')


