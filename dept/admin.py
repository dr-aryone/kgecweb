from django.contrib import admin

# Register your models here.

from dept.models import  Department , Staff , Faculty

class DepartmentAdmin(admin.ModelAdmin):
    list_display = ('DeptName','DeptFullName', 'DeptStartDate', 'DeptDescrip','DeptOwner','DeptTagLine','DeptImage')
admin.site.register(Department, DepartmentAdmin)


class FacultyAdmin(admin.ModelAdmin):
    list_display = ('FaculyId','FacultyName', 'FacultyDOB', 'FacultyImage','FacultyBio','FacultyDept_id')
admin.site.register(Faculty, FacultyAdmin),


class StaffAdmin(admin.ModelAdmin):
    list_display = ('StaffId','StaffName', 'StaffDOB', 'StaffImage','StaffBio','StaffDept_id')
admin.site.register(Staff, StaffAdmin),


