from rest_framework.generics import ListAPIView
from django.contrib.auth.models import User
from users.models import Student,Department,Courses,Student_Attendance,Student_Marks,Subjects,Exams,Teacher,Parent,UserProfile
from .serializers import StudentSerializers,DepartmentSerializers,CoursesSerializers,Student_AttendanceSerializers,Student_MarksSerializers,SubjectsSerializers,ExamsSerializers,UserSerializers,TeacherSerializers,UserProfileSerializers
from rest_framework import filters
from django_filters.rest_framework import DjangoFilterBackend


class StudentListAPIView(ListAPIView):
    queryset =  Student.objects.all()
    serializer_class = StudentSerializers
    filter_backends =(DjangoFilterBackend,filters.OrderingFilter,)
    filter_fields = ('student_name',)

class DepartmentListAPIView(ListAPIView):
    queryset =  Department.objects.all()
    serializer_class = DepartmentSerializers

class CoursesListAPIView(ListAPIView):
    queryset =  Courses.objects.all()
    serializer_class = CoursesSerializers

class Student_AttendanceListAPIView(ListAPIView):
    queryset =  Student_Attendance.objects.all()
    serializer_class = Student_AttendanceSerializers

class Student_MarksListAPIView(ListAPIView):
    queryset =  Student_Marks.objects.all()
    serializer_class = Student_MarksSerializers
    filter_backends =(DjangoFilterBackend,filters.OrderingFilter,)
    # filter_fields = ('student_name','exam_name')
    filter_fields = {
        'marks': ['gte', 'lte'],'student_name':['exact'],'exam_name':['exact'],
    }

class SubjectsListAPIView(ListAPIView):
    queryset = Subjects.objects.all()
    serializer_class = SubjectsSerializers

class ExamsListAPIView(ListAPIView):
    queryset =  Exams.objects.all()
    serializer_class = ExamsSerializers

class UserListAPIView(ListAPIView):
    queryset =  User.objects.all()
    serializer_class = UserSerializers
     

class UserProfileListAPIView(ListAPIView):
    queryset =  UserProfile.objects.all()
    serializer_class = UserProfileSerializers

class TeacherListAPIView(ListAPIView):
    queryset =  Teacher.objects.all()
    serializer_class = TeacherSerializers
 