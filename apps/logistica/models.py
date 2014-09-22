from django.db import models

class Cargo(models.Model):
    cargo_nom = models.CharField(max_length=50)
    cargo_descripcion = models.TextField(blank=True)
    def __unicode__(self):
        return self.cargo_nom   

class Area(models.Model):
    area_nom = models.CharField(max_length=70)
    area_descripcion = models.TextField(blank=True)
    def __unicode__(self):
        return self.area_nom   

class Servicio(models.Model):
    servi_nom = models.CharField(max_length=70)
    servi_descripcion = models.TextField(blank=True)
    servi_costo = models.DecimalField(max_digits=18, decimal_places=2)
    area = models.ForeignKey(Area)
    tiempo_requerido = models.IntegerField(blank=True, null=True)
    def __unicode__(self):
        return self.servi_nom   


