from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .forms import UserRegisterForm
from users.models import Usersdb,Role
from django.contrib.auth.models import User
# Create your views here.
def register(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f'{username}! your account is created! You can login now.')
            return redirect('login')
    else:
        form = UserRegisterForm()
    return render(request, 'users/register.html',{'form':form})

userdb_data = Usersdb.objects.values_list('username', 'role')
role_data = Role.objects.values_list('id','userrole')
user_data = User.objects.values_list('username','id')
student_data =[]
x = []
for i in userdb_data:
    if i[1] == 1:
        x.append(i[0])

for i in user_data:
    if i[1] in x:
        student_data.append(i[0])

template_data = {
    'data': student_data
}


@login_required
def studentProfile(request):
    return render(request,'users/student.html', context= template_data)

@login_required
def teacherProfile(request):
    return render(request,'users/teacher.html')

@login_required
def parentProfile(request):
    return render(request,'users/parent.html')