from rest_framework import serializers
from django.contrib.auth.models import User
from users.models import Student, Student_Marks,Exams,Subjects,Student_Attendance,Department,Courses,Teacher,UserProfile



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


class StudentSerializers(serializers.ModelSerializer):
    course_name = CoursesSerializers(required=True)
    department_name = DepartmentSerializers(required=True)
    
    class Meta:
        model = Student
        fields = ('id','student_name','course_name','year','department_name',)
    
    def create(self, validated_data):
         
        course_data = validated_data.pop('course_name')
        department_data = validated_data.pop('department_name')
        course = CoursesSerializers.create(CoursesSerializers(), validated_data=course_data)
        department = DepartmentSerializers.create(DepartmentSerializers(), validated_data=department_data)

        student  = Student.objects.update_or_create(course_name=course,department_name=department,
                            student_name=validated_data.pop('student_name'))
        return student



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

class UserProfileSerializers(serializers.ModelSerializer):
    class Meta:
        model = UserProfile
        fields = '__all__'

class TeacherSerializers(serializers.ModelSerializer):
    class Meta:
        model = Teacher
        fields = '__all__'

class UserSerializers(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id','username','first_name','last_name','email')

