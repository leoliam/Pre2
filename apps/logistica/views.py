from django.shortcuts import render,redirect
from django.views.generic import TemplateView,CreateView
from apps.solicitudes.models import Paciente

class IndexView(TemplateView):
	template_name = 'logistica/index.html'

class PersonaView(CreateView):    
	template_name = 'logistica/persona.html'	
	model = Paciente

# Create your views here.
