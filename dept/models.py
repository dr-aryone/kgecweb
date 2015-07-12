from django.db import models
from stdimage import StdImageField


# Create your models here.


class Department(models.Model):
	DeptName = models.CharField(max_length=100 , primary_key=True)
	DeptFullName = models.CharField(max_length=100)
	DeptStartDate = models.DateField()
	DeptDescrip = models.TextField()
	DeptOwner = models.CharField(max_length=100)
	DeptTagLine = models.CharField(max_length=200)
	#DeptImage = models.ImageField(upload_to='dept_img')
	DeptImage = StdImageField(upload_to='dept_img',  variations={'large': (675, 300, True)})
		
	def __str__(self):
		 return self.DeptName
	

class Faculty(models.Model):
	FaculyId = models.AutoField(primary_key=True)
	FacultyName = models.CharField(max_length=100)
	FacultyDOB = models.DateField()
	FacultyEmail = models.EmailField()
	FacultyContact = models.CharField(max_length=10,default='9999999999')
	#FacultyImage = models.ImageField(upload_to='faculty_img')
	FacultyImage = StdImageField(upload_to='faculty_img',  variations={'thumbnail': (150, 200,True)})
	FacultyBio = models.TextField()
	FacultyDept = models.ForeignKey(Department)
	def __str__(self):
		 return self.FacultyName

class Staff(models.Model):
	StaffId = models.AutoField(primary_key=True)
	StaffName = models.CharField(max_length=100)
	StaffDOB = models.DateField()
	#StaffImage = models.ImageField(upload_to='faculty_img')
	StaffImage = StdImageField(upload_to='faculty_img',  variations={'thumbnail': (150,200,True)})
	StaffBio = models.TextField()
	StaffDept = models.ForeignKey(Department)
	def __str__(self):
		 return self.StaffName