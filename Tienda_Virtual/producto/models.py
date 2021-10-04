from django.db import models

class producto(models.Model):
    id = models.BigAutoField(primary_key=True, verbose_name='ID')
    nombre = models.CharField(null=False, max_length=128, verbose_name='Nombre producto', unique=True)
    fechaini = models.DateField(verbose_name='Fecha Inicio', null=False)
    fechafin = models.DateField(verbose_name='Fecha Final', null=False)
    acta = models.CharField(null=True, max_length=254)
    estado = models.SmallIntegerField(default=0)
    fechareg = models.DateTimeField(auto_now=True)

    def __str__(self) -> str:
        return self.nombre
