from django.db import models
from apps.logistica.models import Cargo
from apps.logistica.models import Servicio

class Empleado(models.Model):
    emp_nom = models.CharField(max_length=100)
    emp_ape = models.CharField(max_length=100)
    emp_fecnac = models.DateField()
    emp_fecing = models.DateField()
    emp_direccion = models.CharField(max_length=100)
    emp_sexo = models.CharField(max_length=10)
    emp_dni = models.CharField(max_length=8, blank=True)
    emp_usu = models.CharField(max_length=30, blank=True)
    emp_clave = models.CharField(max_length=50, blank=True)
    emp_tel = models.CharField(max_length=12, blank=True)
    emp_foto = models.CharField(max_length=80, blank=True)
    emp_esta = models.IntegerField()
    cargo = models.ForeignKey(Cargo, blank=True, null=True)
    emp_fecreg = models.DateField(blank=True, null=True)
    servi_emp = models.ManyToManyField(Servicio, through='ServicioEmpleado')
    def __unicode__(self):
        return self.emp_nom 

class ServicioEmpleado(models.Model):
    servi = models.ForeignKey(Servicio)
    emp = models.ForeignKey(Empleado)
    progra_estado = models.IntegerField()
    
class Programacion(models.Model):
    prog_id = models.AutoField(primary_key=True)
    servi_id= models.ForeignKey(ServicioEmpleado)
    hor_fecha = models.DateField()
    hor_ing = models.TimeField(blank=True, null=True)
    hor_sal = models.TimeField(blank=True, null=True)
    hor_anotacion = models.TextField(blank=True)
    hor_turno = models.CharField(max_length=3)
    minutosdatencion = models.IntegerField()

    