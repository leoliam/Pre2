from django import forms
from apps.solicitudes.models import Paciente
class RegistrarPacienteForm(forms.ModelForm):
	pac_nombre = forms.CharField(widget= forms.TextInput(
		attrs={ 'class' : 'input-sm', 'id': 'nombres'}))
	pac_apellido = forms.CharField(widget= forms.TextInput(
		attrs={'class' : 'input-sm' }))
	DNI = forms.CharField(max_length=8,min_length=8,widget= forms.TextInput(
		attrs={'class' : 'input-xs' }))
	pac_direccion = forms.CharField(widget= forms.TextInput(
		attrs={'class' : 'input-xs' }))
	pac_telefono = forms.CharField(widget= forms.TextInput(
		attrs={'class' : 'input-xs' }))	
	pac_sexo = forms.ChoiceField(required=False, choices=(('F', 'Femenino'),('M', 'Masculino')),
		widget= forms.Select(attrs={'class' : 'input-sm' }))
	pac_obs = forms.CharField(widget= forms.Textarea(
		attrs={'class' : 'custom-scroll' }))	
	class Meta:
		model = Paciente
		
