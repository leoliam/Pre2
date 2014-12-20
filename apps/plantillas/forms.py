from django import forms
from .models import Item


class RegistrarItemForm(forms.ModelForm):
	id = forms.IntegerField(required=False,widget = forms.HiddenInput(
		attrs={ 'id': 'codigo'}))
	item_nombre = forms.CharField(widget= forms.TextInput(
		attrs={ 'class' : 'input-sm', 'id': 'nombres'}))	
	item_valor_referencial = forms.CharField(required=False,widget= forms.TextInput(
		attrs={ 'class' : 'input-sm', 'id': 'valor'}))	
	item_descripcion = forms.CharField(required=False,widget= forms.Textarea(
		attrs={'class' : 'custom-scroll' , 'id': 'observacion'}))	
	class Meta:
		model = Item