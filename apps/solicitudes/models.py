from django.db import models
from django.core.validators import RegexValidator


class Paciente(models.Model):
    paciente_id = models.AutoField(primary_key=True)
    pac_nombre = models.CharField(max_length=100, unique=True , validators=[RegexValidator(
        regex='^[a-zA-Z]*$',
        message='Este Campo no debe contener numeros')])
    pac_apellido = models.CharField(max_length=100, blank=True)
    pac_fecnac = models.DateField(blank=True, null=True)
    pac_sexo = models.CharField(max_length=2, blank=True)
    pac_dni = models.CharField(max_length=10, blank=True)
    pac_direccion = models.CharField(max_length=100, blank=True)
    pac_telefono = models.CharField(max_length=50, blank=True)
    pac_fecreg = models.DateField(blank=True, null=True)
    pac_obs = models.TextField(blank=True)
    pac_estado = models.BooleanField(default=True)
    def  __unicode__(self):
    	return self.pac_nombre

class Solicitud(models.Model):
    soli_id = models.AutoField(primary_key=True)
    paciente = models.ForeignKey(Paciente)
    soli_anotacion = models.TextField(blank=True)
    emp_id = models.IntegerField(blank=True, null=True)
    fec_reg = models.DateField(blank=True, null=True)
    soli_estado = models.IntegerField(blank=True, null=True)

