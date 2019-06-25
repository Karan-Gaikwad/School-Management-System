from django.shortcuts import render, redirect, HttpResponse
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .forms import UserRegisterForm,SeeMarksForm, UserProfileForm, DepartmentForm, CourseForm,SubjectForm, StudentAttendanceForm, ExamForm, MarksForm
from django.contrib.auth.models import User
from .models import UserProfile, Department, Courses,Student,Teacher,Subjects,Exams
# Create your views here.


def register(request):
    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        profile_form = UserProfileForm(request.POST)
        if form.is_valid() and profile_form.is_valid() :
            user = form.save()
            
            profile = profile_form.save(commit=False)
            profile.user = user

            profile_form.save()
            



            username = form.cleaned_data.get('username')
            messages.success(request, f'{username}! your account is created! You can login now.')
            return redirect('login')
    else:
        form = UserRegisterForm()
        profile_form = UserProfileForm()
    return render(request, 'users/register.html',{'form':form,'profile_form':profile_form})

 


@login_required
def Profile(request):
    std = Student.objects.all()
    return render(request,'users/profile.html',{'student':std})

@login_required
def teacherProfile(request):
    return render(request,'users/teacher.html')

@login_required
def parentProfile(request):
    return render(request,'users/parent.html')

#Add Department
 
def department_add(request):
    if request.method == 'POST':
         
        form = DepartmentForm(request.POST)
        if form.is_valid():
            form.save()
            temp = form.cleaned_data.get('department_name')
            messages.success(request, '{} is added Successfully'.format(temp))
            return redirect('home')
    else:
        form = DepartmentForm()

    return render (
        request, 'users/department_add.html', {'form': form},
    )    

#show Department

def showdepartment(request, pk, deptname):
    return render(request,'users/show_department.html', {'pk': pk,'deptname':deptname})

#Add Course
def course_add(request):
    if request.method == 'POST':
         
        form = CourseForm(request.POST)
        if form.is_valid():
            form.save()
            
            dname = form.cleaned_data.get('department_name')
                     
            id1 = Department.objects.get(department_name=dname).id
                 
            url = '/school/{}/{}'.format(id1,dname)
            temp = form.cleaned_data.get('course_name')
            messages.success(request, '{} is added Successfully'.format(temp))
            return redirect(url)
    else:
        form = CourseForm()

    return render (
        request, 'users/course_add.html', {'form': form},
    )    

# show courses
def showcourses(request, pk_dept,pk_course, coursename):
    return render(request,'users/show_courses.html', {'pk_d': pk_dept,'pk_c':pk_course,'coursename':coursename})



# Add Subjects
def subject_add(request):
    if request.method == 'POST':
         
        form = SubjectForm(request.POST)
        if form.is_valid():
            form.save()
            
            sname = form.cleaned_data.get('course_name')
            id1 = Department.objects.get(department_name=Courses.objects.get(course_name=sname).department_name)
            id2 = Courses.objects.get(course_name=sname).id
                 
            url = '/school/{}/{}/{}'.format(id1,id2,sname)
            temp = form.cleaned_data.get('subject_name')
            messages.success(request, '{} is added Successfully'.format(temp))
            return redirect(url)
    else:
        form = SubjectForm()

    return render (
        request, 'users/subject_add.html', {'form': form},
    )    

# student Attendance
def student_attendance(request):
    if request.method == 'POST':
         
        form = StudentAttendanceForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('home')
             
    else:
        form = StudentAttendanceForm()

    return render (
        request, 'users/attendance.html', {'Attendance': form},
    )    

#Add Exam
def add_exam(request):
    if request.method == 'POST':
         
        form = ExamForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('home')
             
    else:
        form = ExamForm()

    return render (
        request, 'users/exam.html', {'Exam': form},
    )    
#Students Marks
def student_marks(request):
    if request.method == 'POST':
         
        form =  MarksForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('home')
             
    else:
        form = MarksForm()

    return render (
        request, 'users/marks.html', {'Marks': form},
    )    


#See Marks by Teacher

def seemarks_teacher(request):
    if request.method == 'POST':
        form = SeeMarksForm(request.POST)
        if form.is_valid():
            temp = form.cleaned_data.get('department_name')
            print(temp)
            return  render (
        request, 'users/seemarks_teacher.html', {'temp': temp},
    )    
    else:
        form = SeeMarksForm()

    return render (
        request, 'users/seemarks_teacher.html', {'form': form},
    )    






def load_courses(request):
    dept_id = request.GET.get('department')
    crs = Courses.objects.filter(department_name= dept_id).order_by('course_name')
    return render(request, 'users/loadcourses.html', {'courses': crs})

def load_teacher(request):
    crs_id = request.GET.get('course')
    trs = Teacher.objects.filter(course_name= crs_id).order_by('teacher_name')
    return render(request, 'users/loadteachers.html', {'teachers': trs})

def load_student(request):
    crs_id = request.GET.get('course')
    year = request.GET.get('year')
    srs = Student.objects.filter(course_name= crs_id, year=year).order_by('student_name')
    return render(request, 'users/loadstudents.html', {'students': srs})

def load_subject(request):
    crs_id = request.GET.get('course')
    year = request.GET.get('year')
    sub = Subjects.objects.filter(course_name=crs_id, year=year).order_by('subject_name')
    print(sub)
    return render(request, 'users/loadsubjects.html', {'subjects': sub})

def load_exams(request):
    sub = request.GET.get('subject')
    sub_id= Subjects.objects.get(subject_name ='Thermo').id
    exam = Exams.objects.filter(subject_name= sub_id).order_by('subject_name')
    return render(request, 'users/loadexam.html', {'exams': exam})


