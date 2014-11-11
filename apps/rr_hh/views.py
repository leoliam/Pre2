#! /usr/bin/python
# -*- coding: UTF-8 -*-
from django.shortcuts import render,redirect
from django.contrib.auth.models import User
from django.contrib.auth import authenticate
from .models import Empleado,ServicioEmpleado
from apps.logistica.models import Cargo,Area,Servicio
from .forms import UserForm,UserFormModi,UserFormPass,RegistrarCargaForm
from datetime import datetime
from django.shortcuts import render_to_response
from django.core import serializers
from django.http import HttpResponse, Http404

import json

def CreatePersonal(request):	
	if request.method == 'POST':
		form = UserForm(request.POST)		
		response_data = {} 
		if form.is_valid() :			
			user= form.save()
			empleado=Empleado()	
			empleado.emp_nom = form.cleaned_data.get('emp_nom')	
			empleado.emp_ape = form.cleaned_data.get('emp_ape')
			empleado.emp_fecnac = form.cleaned_data.get('emp_fecnac')
			empleado.emp_direccion = form.cleaned_data.get('emp_direccion')
			empleado.emp_sexo = form.cleaned_data.get('emp_sexo')
			empleado.DNI = form.cleaned_data.get('DNI')
			empleado.email= form.cleaned_data.get('email')
			empleado.emp_tel = form.cleaned_data.get('emp_tel')
			empleado.emp_fecing = form.cleaned_data.get('emp_fecing')	
			empleado.cargo = form.cleaned_data.get('cargo')		
			empleado.user= user					
			empleado.save()			
			response_data['result'] = "El nuevo Personal fue Registrado con Exito"
			#response_data['postpk'] = paciente.pk	        print "XXSS"
			#paciente.pac_fecnac = form.cleaned_data.get('DNI')	        
			return HttpResponse(json.dumps(response_data),content_type="application/json")
		else:
			response_data['errorsEmp'] = dict([(k, [unicode(e) for e in v]) for k,v in form.errors.items()])						     
			return HttpResponse(json.dumps(response_data),content_type="application/json")
	else:
		return HttpResponse(json.dumps({"nothing to see": "this isn't happening"}),content_type="application/json")	



def BuscarPersonal(request):		
	if request.is_ajax():			
		texto= request.GET['texto']
		seleccion = request.GET['seleccion']
		if seleccion=="0":
			empleado = Empleado.objects.filter(DNI__icontains=texto)
			data = serializers.serialize('json',empleado,
			fields={'emp_nom','emp_ape','emp_direccion','DNI','emp_tel'})
			return HttpResponse(data, content_type='application/json')	
		elif seleccion=="1":
			empleado = Empleado.objects.filter(emp_nom__icontains=texto)
			data = serializers.serialize('json',empleado,
			fields={'emp_nom','emp_ape','emp_direccion','DNI','emp_tel'})
			return HttpResponse(data, content_type='application/json')
		elif seleccion=="2":
			empleado = Empleado.objects.filter(emp_ape__icontains=texto)
			data = serializers.serialize('json',empleado,
			fields={'emp_nom','emp_ape','emp_direccion','DNI','emp_tel'})
			return HttpResponse(data, content_type='application/json')
		elif seleccion=="3":
			empleado = Empleado.objects.filter(cargo__id=2)
			empleado= empleado.filter(DNI__icontains=texto)
			data = serializers.serialize('json',empleado,
			fields={'emp_nom','emp_ape','emp_direccion','DNI','emp_tel'})
			return HttpResponse(data, content_type='application/json')
		elif seleccion=="4":
			empleado = Empleado.objects.filter(cargo__id=2)
			empleado= empleado.filter(emp_nom__icontains=texto)
			data = serializers.serialize('json',empleado,
			fields={'emp_nom','emp_ape','emp_direccion','DNI','emp_tel'})
			return HttpResponse(data, content_type='application/json')
		elif seleccion=="5":
			empleado = Empleado.objects.filter(cargo__id=2)
			empleado= empleado.filter(emp_ape__icontains=texto)
			data = serializers.serialize('json',empleado,
			fields={'emp_nom','emp_ape','emp_direccion','DNI','emp_tel'})
			return HttpResponse(data, content_type='application/json')	
		else:
			empleado = Empleado.objects.filter(id=texto)
			#usuario= User.objects.filter(empleado__pk=texto)
			response_data = {'pk':empleado[0].id,'nombre': empleado[0].emp_nom,'apellido':empleado[0].emp_ape,
							'direccion':empleado[0].emp_direccion,'DNI':empleado[0].DNI	,'telefono':empleado[0].emp_tel,	
							'email':empleado[0].email,'sexo':empleado[0].emp_sexo,'fecnac':str(empleado[0].emp_fecnac)
							,'fecIng':str(empleado[0].emp_fecing),'cargo':empleado[0].cargo.id,'user':empleado[0].user.username
							,'userid':empleado[0].user.id}			
			return HttpResponse(json.dumps(response_data), content_type='application/json')
	else :
		print "mal"
		raise Http404


def ModiPersonal(request):	
	if request.method == 'POST':
		instance = Empleado.objects.get(id=request.POST['id'])
		print request.POST['id']
		form = UserFormModi(request.POST or None, instance=instance)		
		#form = UserForm(request.POST)
		response_data = {} 
		if form.is_valid():
			empleado= Empleado.objects.get(id=form.cleaned_data.get('id'))
			empleado.emp_nom = form.cleaned_data.get('emp_nom')	
			empleado.emp_ape = form.cleaned_data.get('emp_ape')
			empleado.emp_fecnac = form.cleaned_data.get('emp_fecnac')
			empleado.emp_direccion = form.cleaned_data.get('emp_direccion')
			empleado.emp_sexo = form.cleaned_data.get('emp_sexo')
			empleado.DNI = form.cleaned_data.get('DNI')
			empleado.emp_tel = form.cleaned_data.get('emp_tel')
			empleado.emp_fecing = form.cleaned_data.get('emp_fecing')	
			empleado.cargo = form.cleaned_data.get('cargo')
			empleado.email = form.cleaned_data.get('email')
			empleado.save()
			response_data['result'] = "Los datos del Personal fueron Actualizados con Exito"				        
			return HttpResponse(json.dumps(response_data),content_type="application/json")
		else:
			data = json.dumps({'errorsEmp': dict([(k, [unicode(e) for e in v]) for k,v in form.errors.items()])})        
			return HttpResponse(data,content_type="application/json")
	else:
		return HttpResponse(json.dumps({"nothing to see": "this isn't happening"}),content_type="application/json")

def HomePersonal(req):
	tmpl_vars = {
		#'form': RegistrarPersonalForm(),'form2':RegistrarUserForm
		'form': UserForm()
	}
	return render(req, 'rr_hh/personal.html', tmpl_vars)

def ModiPass(request):	
	if request.method == 'POST':
		instance = User.objects.get(username=request.POST['username'])
		form = UserFormPass(request.POST or None, instance=instance)
		response_data = {}
		user = authenticate(username=request.POST['username'], password=request.POST['password'])
		if user is not None:
			if request.POST['password1'] != request.POST['password2']:
				response_data['errors'] = {"password2": "Los dos campos de contraseña no coinciden"}
				return HttpResponse(json.dumps(response_data),content_type="application/json")
			else :
				if form.is_valid():
					usuario= User.objects.get(username=form.cleaned_data.get('username'))
					usuario.set_password(form.cleaned_data.get('password1'))
					usuario.save()				
					response_data['result'] = "Su contraseña fue Actualizada con Exito"				        
					return HttpResponse(json.dumps(response_data),content_type="application/json")
				else:
					data = json.dumps({'errors': dict([(k, [unicode(e) for e in v]) for k,v in form.errors.items()])})        
					return HttpResponse(data,content_type="application/json")
		else:
		   response_data['errors'] = {"password": "Su contraseña no es la correcta"}
		   return HttpResponse(json.dumps(response_data),content_type="application/json")		
	else:
		return HttpResponse(json.dumps({"nothing to see": "this isn't happening"}),content_type="application/json")

def HomePass(req):
	tmpl_vars = {		
		'form': UserFormPass()
	}
	return render(req, 'rr_hh/pass.html', tmpl_vars)

def CreateCarga(request):	
	if request.method == 'POST':
		form = RegistrarCargaForm(request.POST)	
		print "Dddd"	
		response_data = {} 		
		if form.is_valid() :						
			#ServicioEmpleado= form.save()
			#serviemp=ServicioEmpleado()	
			#empleado.emp_nom = form.cleaned_data.get('emp_nom')	
			#empleado.emp_ape = form.cleaned_data.get('emp_ape')
			#empleado.emp_fecnac = form.cleaned_data.get('emp_fecnac')
			#empleado.emp_direccion = form.cleaned_data.get('emp_direccion')
			#empleado.emp_sexo = form.cleaned_data.get('emp_sexo')
			#empleado.DNI = form.cleaned_data.get('DNI')
			#empleado.email= form.cleaned_data.get('email')
			#empleado.emp_tel = form.cleaned_data.get('emp_tel')
			#empleado.emp_fecing = form.cleaned_data.get('emp_fecing')	
			#empleado.cargo = form.cleaned_data.get('cargo')		
			#empleado.user= user					
			#empleado.save()			
			response_data['result'] = "El nuevo Personal fue Registrado con Exito"
			#response_data['postpk'] = paciente.pk	        print "XXSS"
			#paciente.pac_fecnac = form.cleaned_data.get('DNI')	        
			return HttpResponse(json.dumps(response_data),content_type="application/json")
		else:
			response_data['errorsEmp'] = dict([(k, [unicode(e) for e in v]) for k,v in form.errors.items()])						     
			return HttpResponse(json.dumps(response_data),content_type="application/json")
	else:
		return HttpResponse(json.dumps({"nothing to see": "this isn't happening"}),content_type="application/json")	



def HomeCarga(req):
	
	tmpl_vars = {		
		'form': RegistrarCargaForm()
	}
	#tmpl_vars['form'].fields['area'].choices=creator_choices
	return render(req, 'rr_hh/Carga.html', tmpl_vars)


def CreateCargas(request):		
	if request.is_ajax():			
		codigo= request.GET['id']
		print "---"
		empleado = Empleado.objects.filter(id=codigo)
		#empleado= empleado.filter(emp_ape__icontains=texto)
		data = serializers.serialize('json',empleado,
		fields={'emp_nom','emp_ape','emp_direccion','DNI','emp_tel'})
		return HttpResponse(data, content_type='application/json')
	else :
		print "mal"
		raise Http404
# Create your views here.
