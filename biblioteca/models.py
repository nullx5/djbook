from django.db import models

# Create your models here.

class Autor(models.Model):
    nombre = models.CharField(max_length=30)
    apelidos = models.CharField(max_length=40)
    email = models.EmailField()                    #EmailField

    def __str__(self):
        #return "%s - %s" % (self.nombre, self.apellidos)
        return "{} - {}".format(self.nombre, self.apellidos)
    


class Editor(models.Model):
    nombre = models.CharField(max_length=30)
    domicilio = models.CharField(max_length=50)
    ciudad = models.CharField(max_length=60)
    estado = models.CharField(max_length=30)
    pais = models.CharField(max_length=50)
    website = models.URLField()                      #URLField

    class Meta:
        ordering = ["nombre"]

    def __str__(self):
        return self.nombre

class Libro(models.Model):
    titulo = models.CharField(max_length=100)
    autores = models.ManyToManyField(Autor)           #ManyToManyField
    editor = models.ForeignKey(Editor)                #ForeignKey
    fecha_publicacion = models.DateField()            #DateField
    portada = models.ImageField(upload_to="portadas") #ImageField requiere pillow

    def __str__(self):
        return self.titulo
    




    