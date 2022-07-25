from django.shortcuts import render

from .models import MyApp
# Create your views here.

def my_app_list_view(request):
    mp_app_objs = MyApp.objects.all()
    context = {
        "mp_app_objs": mp_app_objs,
    }
    return render(request, "myapp/index.html", context)


def home_page_view(request):

    context = {
        "admin_page": f"{ request.scheme }://{ request.META['HTTP_HOST'] }/admin",
    }
    return render(request, 'home_page/index.html', context)