from django.shortcuts import render
from dept.models import Department,Faculty,Staff

# Create your views here.



def dept(request, dept):
	
    d_list = Department.objects.filter(DeptName=dept)
    f_list = Faculty.objects.filter(FacultyDept=dept)
    s_list = Staff.objects.filter(StaffDept=dept)
    context = {'dept': dept, 'dept_list': d_list,'faculty_list':f_list,'staff_list':s_list}
    return render(request, 'department/dept.html', context)

def faculty(request, id):
	 
	faculty_info = Faculty.objects.filter(FaculyId=id)
	context = {'f_info':faculty_info}
	return render(request , 'faculty/fact_profile.html' , context)