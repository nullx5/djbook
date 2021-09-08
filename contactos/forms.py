from django import forms

class FormularioContactos(forms.Form):
    asunto = forms.CharField(
        max_length=100, 
        error_messages={"required":"El campo asunto es obligatorio."},
        )
    email = forms.EmailField(required=False)
    mensaje = forms.CharField(widget=forms.Textarea)


    def clean_mensaje(self):
        """
            Validacion personalizada al campo mensaje. referencia:
            https://django.readthedocs.io/en/1.8.x/ref/forms/validation.html

        """
        mensaje = self.cleaned_data["mensaje"]
        num_words = len(mensaje.split())
        if num_words < 4:
            raise forms.ValidationError("!Se requieren minimo 4 palabras en el mensaje¡")
        return mensaje
         
         
        
        
    # Argumentos base de Campos de Formulario.
    # Cada Campo agrega sus propios Argumentos.
    """ 
    campo_form = forms.CharField(
        required=False,
        label="Soy un label",
        label_suffix="sufijo del label",
        initial="Value inicial del input",
        widget=forms.Textarea,
        help_text="Soy un span help_text",
        error_messages={"required":"El campo Mensaje es obligatorio."},
        validators = [validate_even],
        localize=True

        )
    """