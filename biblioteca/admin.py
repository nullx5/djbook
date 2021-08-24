from django.contrib import admin
from biblioteca.models import Libro, Autor, Editor

# Register your models here.

class AutorAdmin(admin.ModelAdmin):
    list_display = ("nombre", "apellidos", "email")
    search_fields = ("nombre", "apellidos")

class LibroAdmin(admin.ModelAdmin):
    list_display = ("titulo", "editor", "fecha_publicacion")
    list_filter = ("fecha_publicacion",)
    date_hierarchy = "fecha_publicacion"
    filter_horizontal = ("autores",) # campos ManyToManyField con muchos registros
    raw_id_fields = ("editor",) # campos ForeignKeyField con muchos registros
    #filter_vertical = ("autores",)
    #ordering = ("-fecha_publicacion",)  mejor definirlo en el modelo
    #fields = ('titulo', 'autores', 'editor', 'portada') orden y aparicion de los campos en el formulario de edicion


admin.site.register(Autor, AutorAdmin)
admin.site.register(Editor)
admin.site.register(Libro, LibroAdmin)