from rest_framework.generics import ListAPIView
from users.models import Student,Department,Courses,Student_Attendance,Student_Marks,Subjects,Exams,Teacher,Parent
from .serializers import StudentSerializers,DepartmentSerializers,CoursesSerializers,Student_AttendanceSerializers,Student_MarksSerializers,SubjectsSerializers,ExamsSerializers
class StudentListAPIView(ListAPIView):
    queryset =  Student.objects.all()
    serializer_class = StudentSerializers

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

class SubjectsListAPIView(ListAPIView):
    queryset = Subjects.objects.all()
    serializer_class = SubjectsSerializers

class ExamsListAPIView(ListAPIView):
    queryset =  Exams.objects.all()
    serializer_class = ExamsSerializers


 