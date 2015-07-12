from django.db import models
from stdimage import StdImageField

# Create your models here.

class Hostel(models.Model):
	HostelName = models.CharField(max_length=100,  primary_key=True)
	HostelType = models.CharField(max_length=10)
	HostelSeat = models.DecimalField(max_digits=3,decimal_places=2)
	HostelImage = StdImageField(upload_to='Hostels/logo/',  variations={'large': (675, 300,True)})
	HostelAddress = models.CharField(max_length=200)

	def __str__(self):
		return self.HostelName


