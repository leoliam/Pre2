from django.shortcuts import render,redirect
from django.views.generic import TemplateView,CreateView
from apps.solicitudes.models import Paciente
from .forms import RegistrarPacienteForm
from django.shortcuts import render_to_response
from django.core import serializers
from django.http import HttpResponse, Http404

import json

class IndexView(TemplateView):
	template_name = 'logistica/index.html'

class PersonaView(CreateView):    
	template_name = 'logistica/persona.html'	
	models=Paciente
	form_class = RegistrarPacienteForm
	success_url='/'
	def form_valid(self, form):
		form.instance.pac_estado=True
		return super(PersonaView,self).form_valid(form)

	def form_invalid(self, form):
		print "mal"
		return super(PersonaView,self).form_invalid(form)

class PacienteBView(TemplateView):
	template_name = 'logistica/pacienteB.html'
	
# Create your views here.
def BuscarAjax(request):		
	if request.is_ajax():			
		texto= request.GET['texto']
		seleccion = request.GET['seleccion']
		if seleccion=="0":
			paciente = Paciente.objects.filter(pac_dni__contains=texto)
			data = serializers.serialize('json',paciente,
			fields={'pac_nombre','pac_apellido','pac_telefono',
			'pac_direccion','DNI','pac_fecnac'})
			return HttpResponse(data, content_type='application/json')
		elif seleccion=="1":
			paciente = Paciente.objects.filter(pac_nombre__contains=texto)
			data = serializers.serialize('json',paciente,
			fields={'pac_nombre','pac_apellido','pac_telefono',
			'pac_direccion','DNI','pac_fecnac'})
			return HttpResponse(data, content_type='application/json')
		else :
			paciente = Paciente.objects.filter(pac_apellido__contains=texto)
			data = serializers.serialize('json',paciente,
			fields={'pac_nombre','pac_apellido','pac_telefono',
			'pac_direccion','DNI','pac_fecnac'})
			return HttpResponse(data, content_type='application/json')		
	else :
		print "mal"
		raise Http404


def CreatePost(request):	
    if request.method == 'POST':
    	form = RegistrarPacienteForm(request.POST)
    	response_data = {} 
    	if form.is_valid():
    		paciente= Paciente()
        	paciente.pac_nombre = form.cleaned_data.get('pac_nombre')
        	paciente.pac_apellido = form.cleaned_data.get('pac_apellido')
        	paciente.DNI = int(form.cleaned_data.get('DNI'))
        	paciente.pac_direccion = form.cleaned_data.get('pac_direccion')
        	paciente.pac_telefono = form.cleaned_data.get('pac_telefono')
        	paciente.pac_sexo = form.cleaned_data.get('pac_sexo')
        	#paciente.pac_obs = form.cleaned_data.get('pac_obs')
        	paciente.save()	
        	response_data['result'] = "Los datos del Paciente fueron almacenados con Exito"
	        #response_data['postpk'] = paciente.pk
	        #response_data['text'] = post.text
	        #response_data['created'] = post.created.strftime('%B %d, %Y %I:%M %p')	        
        	return HttpResponse(json.dumps(response_data),content_type="application/json")
        else:
        	data = json.dumps({'errors': dict([(k, [unicode(e) for e in v]) for k,v in form.errors.items()])})        
        	return HttpResponse(data,content_type="application/json")
    else:
        return HttpResponse(json.dumps({"nothing to see": "this isn't happening"}),content_type="application/json")


def home(req):
    tmpl_vars = {
        'form': RegistrarPacienteForm()
    }
    return render(req, 'logistica/persona.html', tmpl_vars)        