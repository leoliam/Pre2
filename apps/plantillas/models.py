from django.db import models
from apps.logistica.models import Servicio
# Create your models here.

class Item(models.Model):
    item_nombre = models.CharField(max_length=70)
    item_descripcion = models.TextField(blank=True)
    item_valor_referencial = models.CharField(max_length=100)
    item_estado = models.BooleanField(default=True)
    servi = models.ForeignKey(Servicio)
    def __unicode__(self):
        return self.item_nombre