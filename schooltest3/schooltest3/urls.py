"""schooltest3 URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from school import views
from users import views as Userview
from django.contrib.auth import views as auth_views 
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('',Userview.register, name='register'),
    path('admin/', admin.site.urls),
    path('school/', include('school.urls') ),
    path('school/<int:pk>/<str:deptname>', Userview.showdepartment, name='show_department'),
    path('school/<int:pk_dept>/<int:pk_course>/<str:coursename>', Userview.showcourses, name='show_courses'),
    path('register', Userview.register, name='register'),
    path('profile/', Userview.Profile, name='profile'),
    path('parent', Userview.parentProfile, name='parent'),
    path('teacher', Userview.teacherProfile, name='teacher'),
    path('department_add', Userview.department_add, name='department_add'),
    path('course_add', Userview.course_add, name='course_add'),
    path('subject_add', Userview.subject_add, name='subject_add'),
    path('attendance', Userview.student_attendance, name='attendance'),
    path('exam', Userview.add_exam, name='exam'),
    path('marks', Userview.student_marks, name='marks'),

    path('login', auth_views.LoginView.as_view(template_name='users/login.html'), name='login'),
    path('logout',auth_views.LogoutView.as_view(template_name='users/logout.html'), name='logout'),
    path('api/', include('users.usersapi.urls')),

    path('ajax/load-courses/', Userview.load_courses, name='ajax_load_courses'),
    path('ajax/load-teachers/', Userview.load_teacher, name='ajax_load_teachers'),
    path('Marks_by_teacher', Userview.seemarks_teacher, name='seemarks_teacher'),
    path('ajax/load-students/', Userview.load_student, name='ajax_load_students'),
    path('ajax/load-subjects/', Userview.load_subject, name='ajax_load_subjects'),
    path('ajax/load-exams/', Userview.load_exams, name='ajax_load_exams'),
     
]
 
if settings.DEBUG:
    urlpatterns  += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)


 