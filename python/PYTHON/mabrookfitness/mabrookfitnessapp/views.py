from django.shortcuts import render

def home(request):
    context={}
    return render(request, "mabrookfitnessapp/home.html,", context)
