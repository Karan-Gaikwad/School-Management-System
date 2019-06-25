from django.contrib import admin
from .models import UserProfile,Department, Courses, Student,Teacher,Subjects,Student_Attendance,Parent,Exams, Student_Marks
# Register your models here.

 
admin.site.register(Department)
admin.site.register(Courses)
admin.site.register(Student)
admin.site.register(Teacher)
admin.site.register(Subjects)
admin.site.register(Student_Attendance)
admin.site.register(Parent)
admin.site.register(Exams)
admin.site.register(Student_Marks)
admin.site.register(UserProfile)
 