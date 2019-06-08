from django.contrib import admin
from .models import Usersdb, Role, Department, Courses, Student,Teacher,Subjects,Student_Attendance,Parent,Exams, Student_Marks
# Register your models here.

admin.site.register(Usersdb)
admin.site.register(Role)
admin.site.register(Department)
admin.site.register(Courses)
admin.site.register(Student)
admin.site.register(Teacher)
admin.site.register(Subjects)
admin.site.register(Student_Attendance)
admin.site.register(Parent)
admin.site.register(Exams)
admin.site.register(Student_Marks)