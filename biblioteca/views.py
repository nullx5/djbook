from django.shortcuts import render
from biblioteca.models import Libro

# Create your views here.

def buscar(request):
    errors = []
    if 'q' in request.GET:
        query = request.GET['q']
        if not query:
            errors.append("Por favor introduce un termino de busqueda.")
        elif len(query) > 20:
            errors.append("Porfavor introduce un termino de busqueda menor a 20 caracteres.")
        else:
            libros = Libro.objects.filter(titulo__icontains=query)
            return render(request, "resultados.html", {"libros": libros, "query": query}) 
    return render(request, "formulario_buscar.html", {"errors": errors})
