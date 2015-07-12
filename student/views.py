from django.shortcuts import render
from django.core.urlresolvers import reverse
from django.views.generic import ListView 
from django.views.generic import CreateView
from student.models import Student


class ListStudentView(ListView):

    model = Student
    template_name = 'student_list.html'


class CreateStudentView(CreateView):

    model = Student
    fields = ['first_name','last_name','date_of_birth','department','Year','docfile']
    template_name = 'student_add.html'

    def get_success_url(self):
        return reverse('student_list')







