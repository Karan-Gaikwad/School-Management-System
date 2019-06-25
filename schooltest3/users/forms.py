from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from .models import UserProfile, Department, Courses, Subjects, Student_Attendance, Exams, Student_Marks, Teacher

 


class UserRegisterForm(UserCreationForm):
    email = forms.EmailField()
     
    class Meta:
        model = User
        fields = ['username','email','password1','password2']



class UserProfileForm(forms.ModelForm):
    class Meta:
        model = UserProfile
        fields = ['statustype']

class DepartmentForm(forms.ModelForm):

    class Meta:
        model = Department
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['department_name'].widget.attrs.update({'class': 'form-control'})




class CourseForm(forms.ModelForm):

    class Meta:
        model =  Courses
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['department_name'].widget.attrs.update({'class': 'form-control'})
        self.fields['course_name'].widget.attrs.update({'class': 'form-control'})

class SubjectForm(forms.ModelForm):

    class Meta:
        model =  Subjects
        fields = ('department_name','course_name','teacher_name','subject_name',)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['course_name'].queryset = Courses.objects.none()
        self.fields['teacher_name'].queryset = Teacher.objects.none()

        if 'department_name' in self.data:
            try:
                dept_id = int(self.data.get('department_name'))
                self.fields['course_name'].queryset = Courses.objects.filter(department_name=dept_id).order_by('course_name')
            except (ValueError, TypeError):
                pass  # invalid input from the client; ignore and fallback to empty City queryset
        elif self.instance.pk:
            self.fields['course_name'].queryset = self.instance.department_name.course_name_set.order_by('course_name')
        
        if 'course_name' in self.data:
            try:
                c_id = int(self.data.get('course_name'))
                self.fields['teacher_name'].queryset = Teacher.objects.filter(course_name=c_id).order_by('teacher_name')
            except (ValueError, TypeError):
                pass  # invalid input from the client; ignore and fallback to empty City queryset
        elif self.instance.pk:
            self.fields['teacher_name'].queryset = self.instance.department_name.course_name_set.order_by('teacher_name')

         



class StudentAttendanceForm(forms.ModelForm):

    class Meta:
        model =  Student_Attendance
        fields = '__all__'      

class ExamForm(forms.ModelForm):

    class Meta:
        model =  Exams
        fields = '__all__'

class MarksForm(forms.ModelForm):

    class Meta:
        model =  Student_Marks
        fields = '__all__'


# dept = Department.objects.all()
# crs = Courses.objects.all()
# dept_list= [ (i.department_name,i.department_name) for i in dept]
# course_list= [ (i.course_name,i.course_name) for i in crs] 

class SeeMarksForm(forms.Form):
    department_name = forms.ModelChoiceField(queryset=Department.objects.all())
    course_name = forms.ModelChoiceField(queryset=None)
    
    year = forms.ChoiceField(choices=(('1','1'),('2','2'),('3','3'),('4','4')))
    subject_name = forms.ModelChoiceField(queryset=None)
    exam_name = forms.ModelChoiceField(queryset=None)
    student_name = forms.ModelChoiceField(queryset=None)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['course_name'].queryset = Courses.objects.none()
        self.fields['student_name'].queryset = Teacher.objects.none()
        self.fields['subject_name'].queryset = Teacher.objects.none()
        self.fields['exam_name'].queryset = Teacher.objects.none() 
        

         
        

     
     
  
     



         


    