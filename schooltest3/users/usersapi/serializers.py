from rest_framework import serializers
from users.models import Student, Student_Marks,Exams,Subjects,Student_Attendance,Department,Courses

class StudentSerializers(serializers.ModelSerializer):
    class Meta:
        model = Student
        fields = '__all__'

class CoursesSerializers(serializers.ModelSerializer):
    class Meta:
        model = Courses
        fields = '__all__'      

class Student_MarksSerializers(serializers.ModelSerializer):
    class Meta:
        model = Student_Marks
        fields = '__all__'

class DepartmentSerializers(serializers.ModelSerializer):
    class Meta:
        model = Department
        fields = '__all__'       

class SubjectsSerializers(serializers.ModelSerializer):
    class Meta:
        model = Subjects
        fields = '__all__'       

class ExamsSerializers(serializers.ModelSerializer):
    class Meta:
        model = Exams
        fields = '__all__'       

class Student_AttendanceSerializers(serializers.ModelSerializer):
    class Meta:
        model = Student_Attendance
        fields = '__all__'