from django.shortcuts import render

from .models import MyApp
# Create your views here.

def my_app_list_view(request):
    mp_app_objs = MyApp.objects.all()
    context = {
        "mp_app_objs": mp_app_objs,
    }
    return render(request, "myapp/index.html", context)

