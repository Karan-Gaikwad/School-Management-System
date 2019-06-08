from django.urls import path, include
from .views import StudentListAPIView, CoursesListAPIView,DepartmentListAPIView,Student_AttendanceListAPIView,Student_MarksListAPIView, ExamsListAPIView,SubjectsListAPIView

urlpatterns = [
    path('studentapi/',StudentListAPIView.as_view()),
    path('Courseapi/',CoursesListAPIView.as_view()),
    path('Departmentapi/',DepartmentListAPIView.as_view()),
    path('Attendanceapi/',Student_AttendanceListAPIView.as_view()),
    path('Marksapi/',Student_MarksListAPIView.as_view()),
    path('Examsapi/',ExamsListAPIView.as_view()),
    path('Subjectsapi/',SubjectsListAPIView.as_view()),
     
]
