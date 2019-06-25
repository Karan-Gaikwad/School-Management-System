from django.shortcuts import render
from django.http import HttpResponse
from users.models import Department

# Create your views here.
def index(request):
    return HttpResponse('<h2> index </h2>')

 
def home(request):
    return render(request,'school/home.html')

