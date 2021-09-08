from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.core.mail import send_mail
from contactos.forms import FormularioContactos

# Create your views here.
def contactosmanual(request):
    errors = []
    if request.method == 'POST':
        asunto = request.POST.get("asunto")
        mensaje = request.POST.get("mensaje")
        email =  request.POST.get('email', 'noreply@example.com')

        if not asunto:
            errors.append('Por favor introduce el asunto.')
        if not mensaje:
            errors.append('Por favor introduce un mensaje.')
        if not email and '@' not in request.POST['email']:
           errors.append('Por favor introduce una direccion de e­mail valida.')
        if not errors:
            send_mail(
                asunto,
                mensaje,
                email,
                    ['siteowner@example.com'], )
            return HttpResponseRedirect('/contacto/gracias/') #Post/Redirect/Get (PRG) design pattern web

    return render(request, 'formulariomanual-contactos.html', {'errors': errors,
        'asunto': request.POST.get('asunto', ''),
        'mensaje': request.POST.get('mensaje', ''),
        'email': request.POST.get('email', ''),
     })

def contactos(request):
    if request.method == "POST":
        form = FormularioContactos(request.POST)
        if form.is_valid():
            data_raw = form.cleaned_data
            send_mail(
                data_raw["asunto"],
                data_raw["mensaje"],
                data_raw.get("email", "noreply@example.com"),
                ["siteowner@example.com"]
            )
            return HttpResponseRedirect("/contacto/gracias/")

    else:
        form = FormularioContactos(initial={"asunto":"!Adoro este Sitio¡"}) #Mejor usar argumento initial en forms.py 
    return render(request, "formulario-contactos.html", {"form": form})

def envio_exitoso(request):
    return render(request, "envio-exitoso.html")

