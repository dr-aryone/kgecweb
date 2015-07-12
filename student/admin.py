from django.contrib import admin
from student.models import Student
# Register your models here.

#admin.site.register(Post)
# Register your models here.


class StudentAdmin(admin.ModelAdmin):
    list_display = ('first_name', 'last_name', 'date_of_birth','address','department','Year','email')
admin.site.register(Student, StudentAdmin)