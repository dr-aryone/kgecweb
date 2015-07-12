from django.db import models
from django.db.models.fields.files import ImageField

# Create your models here.

class Student(models.Model):
	first_name = models.CharField(max_length=255,)
	last_name = models.CharField(max_length=255,)
	date_of_birth = models.DateField(auto_now=False,)
	address = models.CharField(max_length=500,)
	department = models.CharField(max_length=55,)
	Year = models.CharField(max_length=10,)
	email = models.EmailField()
	docfile = models.FileField(upload_to='documents/%Y/%m/%d')

	def __str__(self):
		return ' '.join([self.first_name,self.last_name,])
    
