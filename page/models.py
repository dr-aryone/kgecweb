from django.db import models
from stdimage import StdImageField

# Create your models here.
class NewPage(models.Model):
	"""docstring for ClassName"""
	Page_Url = models.CharField(max_length=10, primary_key=True)
	Page_Name = models.CharField(max_length=100)
	Page_Creation_Date = models.DateField()
	Page_Content = models.TextField()

	def __str__(self):
		 return self.Page_Url



class NewPageFiles(models.Model):
	Image_Name = models.CharField(max_length=50)
	Page_Image = StdImageField(upload_to='page_image',  variations={'large': (675, 300, True)})
	Page_Url = models.ForeignKey(NewPage)

	def __str__(self):
		 return self.Image_Name
