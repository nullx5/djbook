from django.conf.urls import include, url
from django.contrib import admin
from config.views import hola, fecha_actual, horas_adelante, meta
from biblioteca.views import buscar
from contactos.views import contactosmanual, contactos, envio_exitoso

urlpatterns = [
    # Examples:
    # url(r'^$', 'config.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),

    url(r"^hola/$", hola),
    url(r"^fecha/$", fecha_actual),
    url(r"^fecha/mas/(\d{1,2})/$", horas_adelante),
    url(r"^meta/$", meta),
    url(r"^buscar/$", buscar),
    url(r"^contactosmanual/$", contactosmanual),
    url(r"^contactos/$", contactos),
    url(r"^contacto/gracias/$", envio_exitoso),
]
