import datetime
from django.db import models
from stdimage import StdImageField


YEAR_CHOICES = []

for r in range(2000, (datetime.datetime.now().year+1)):

    YEAR_CHOICES.append((r,r))


# Create your models here.
class Tpo(models.Model):
	TpoName = models.CharField(max_length=100 )
	TpoEmailId = models.EmailField()
	TopPhone1	 = models.CharField(max_length=10)
	TopPhone2 = models.CharField(max_length=10)
	#TpoImage = models.ImageField(upload_to='tlpc')
	TpoImage = StdImageField(upload_to='tlpc',  variations={'thumbnail': (150, 200)})
	TpotDesk = models.TextField()
	
	def __str__(self):
		 return self.TpoName


class TiedCompany(models.Model):
	CompanyName = models.CharField(max_length=100)
	#CompanyLogo = models.ImageField(upload_to='tlpc/companylogo')
	CompanyLogo = StdImageField(upload_to='tlpc/companylogo',  variations={'thumbnail': (150, 200)})
	CompanyUrl = models.URLField()
	AssociatedFrom = models.DateField()

	def __str__(self):
		return self.CompanyName
    
class PlacementRecord(models.Model):

	PrYear = models.IntegerField(choices=YEAR_CHOICES, default=datetime.datetime.now().year)
	PrCompany = models.ForeignKey(TiedCompany)
	PlacedStudent = models.IntegerField()
	MaxSalary = models.DecimalField(max_digits=4, decimal_places=2)





