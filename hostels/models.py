from django.db import models
from stdimage import StdImageField
from django.core.validators import RegexValidator
import datetime


YEAR_CHOICES = []
for r in range(1980, (datetime.datetime.now().year+1)):
    YEAR_CHOICES.append((r,r))

S_CHOICE = [('1stYear','1stYear'),('2ndYear','2ndYear'),('3rdYear','3rdYear'),('4thYear','4thYear')]




# Create your models here.

class Hostel(models.Model):
	HostelName = models.CharField(max_length=100, primary_key=True)
	HostelType = models.CharField(max_length=10)
	HostelSeat = models.IntegerField()
	HostelImage = StdImageField(upload_to='Hostels/logo/',variations={'large': (675, 300,True)})
	HostelAddress = models.CharField(max_length=200)
	HostelDescription = models.TextField()
	HostelEmail = models.EmailField()
	phone_regex = RegexValidator(regex=r'^\+?1?\d{10,13}$', message="Phone number must be entered in the format: '+999999999'. Up to 13 digits allowed.")
	HostelPhoneNo = models.CharField(max_length=13,validators=[phone_regex], blank=True)
	

	def __str__(self):
		return self.HostelName


class HostelEvents(models.Model):
	HostelName = models.ForeignKey(Hostel)
	HostelEventsName = models.CharField(max_length=100)
	HostelEventDescription = models.TextField()


	def __str__(self):
		return self.HostelEventsName

class HostelPictureGalary(models.Model):
	HostelName = models.ForeignKey(Hostel)
	PictureName = models.CharField(max_length=100)
	PictureLocation = StdImageField(upload_to='Hostels/galary/',variations={'large': (675, 300,True)})


	def __str__(self):
		return self.PictureName

class HostelBody(models.Model):
	HostelName = models.ForeignKey(Hostel)
	HostelbodyRole = models.CharField(max_length=100)
	HostelbodyRoleYear = models.IntegerField(choices=YEAR_CHOICES, default=datetime.datetime.now().year)
	PersonName = models.CharField (max_length=10)
	PersonYear = models.CharField (max_length=7, choices=S_CHOICE,default='NA')
	PersonImage = StdImageField(upload_to='Hostels/gb/',variations={'thumbnail': (300, 200,True)})


	def __str__(self):
		return self.HostelbodyRole

