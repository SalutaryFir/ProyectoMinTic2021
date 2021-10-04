from django import forms
from .models import producto

class ProdForm(forms.ModelForm):
    class Meta:
        model = producto
        fields="__all__"
