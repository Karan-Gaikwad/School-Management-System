from django.db import models
from django.contrib.auth.models import User
# Create your models here.
class Role(models.Model):
    userrole = models.CharField(max_length=50)

    def __str__(self):
        return str(self.userrole) 


class Usersdb(models.Model):
    username = models.ForeignKey(User,on_delete=models.CASCADE)
    role = models.ForeignKey(Role,on_delete=models.CASCADE)

    def __str__(self):
        return str(self.username)

class Department(models.Model):
    department_name = models.CharField(max_length=50)

    def __str__(self):
        return self.department_name

class Courses(models.Model):
    department_name= models.ForeignKey(Department,on_delete=models.CASCADE)
    course_name = models.CharField(max_length=50)
    
    def __str__(self):
        return self.course_name

class Student(models.Model):
    username =  models.ForeignKey(Usersdb, on_delete=models.CASCADE)
    student_name = models.CharField(max_length=50)
    course_name = models.ForeignKey(Courses, on_delete=models.CASCADE)
    department_name = models.ForeignKey(Department, on_delete=models.CASCADE)

    def __str__(self):
        return self.student_name

class Teacher(models.Model):
    username =  models.ForeignKey(Usersdb, on_delete=models.CASCADE)
    teacher_name = models.CharField(max_length=50)
    course_name = models.ForeignKey(Courses, on_delete=models.CASCADE)

    def __str__(self):
        return self.teacher_name

class Parent(models.Model):
    username = models.ForeignKey(Usersdb, on_delete=models.CASCADE)
    student_name = models.ForeignKey(Student, on_delete=models.CASCADE)
    parent_name = models.CharField(max_length=50)

    def __str__(self):
        return self.parent_name

class Student_Attendance(models.Model):
    student_name = models.ForeignKey(Student, on_delete=models.CASCADE)
    date = models.DateField()
    present = models.BooleanField()

    def __str__(self):
        return str(self.student_name)

class Subjects(models.Model):
    course_name = models.ForeignKey(Courses, on_delete=models.CASCADE)
    subject_name = models.CharField(max_length=100)
    teacher_name = models.ForeignKey(Teacher, on_delete=models.CASCADE)

    def __str__(self):
        return self.subject_name

class Exams(models.Model):
    subject_name = models.ForeignKey(Subjects,on_delete=models.CASCADE)
    student_name = models.ForeignKey(Student, on_delete=models.CASCADE)
    exam_name = models.CharField(max_length=50)
    
    def __str__(self):
        return self.exam_name

class Student_Marks(models.Model):
    student_name = models.ForeignKey(Student, on_delete=models.CASCADE)
    exam_name = models.ForeignKey(Exams, on_delete=models.CASCADE)
    marks = models.IntegerField()

    def __str__(self):
        return str(self.student_name)+" marks = "+str(self.marks)
