from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
def index(request):
    return HttpResponse('<h2> index </h2>')

def home(request):
    return render(request,'school/base.html', )

def student(request):
    return render(request, 'school/student.html',{'title':'Student Page'})