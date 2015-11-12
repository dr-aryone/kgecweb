from django.db import models
from stdimage import StdImageField
from django.core.validators import RegexValidator

# Create your models here.
class AdminProf(models.Model):

	PRINCIPAL = 'PRINCIPAL'
	REGISTRAR = 'REGISTRAR'
	DYREGISTRAR = 'DYREGISTRAR'
	ACCOUNTOFFICER = 'ACCOUNTOFFICER'
	STUDENTSECTION = 'STUDENTSECTION'
	EXAMDEPT = 'EXAMDEPT'
	LIBRARIAN = 'LIBRARIAN'
	WEBADMIN  =  'WEBADMIN'

	ADMINPROF_IN_CHOICE = (
		(PRINCIPAL, 'Principal'),
		(REGISTRAR ,'Registrar'),
		(DYREGISTRAR , 'DyRegistrar'),
		(ACCOUNTOFFICER , 'AccountOfficer'),
		(STUDENTSECTION , 'StudentSection'),
		(WEBADMIN , 'WebAdmin'),
		(EXAMDEPT,'ExamDept'),)

	AdminType = models.CharField(max_length=20,choices = ADMINPROF_IN_CHOICE, primary_key=True)
	AdminName = models.CharField(max_length=50)
	AdminDOB = models.DateField()
	#AdminImage = models.ImageField(upload_to='AdminProf/Image/')
	AdminImage = StdImageField(upload_to='AdminProf/Image/', variations={'thumbnail': (150, 200,True)})
	AdminWord = models.TextField()
	AdminEmailId = models.EmailField()
	phone_regex = RegexValidator(regex=r'^\+?1?\d{10,13}$', message="Phone number must be entered in the format: '+999999999'. Up to 13 digits allowed.")
	AdminPhoneNo = models.CharField(max_length=13,validators=[phone_regex], blank=True) # validators should be a list
	
	def __str__(self):
		return self.AdminType

###DB table structure for institute scroll image #############
class InstScrollImage(models.Model):
	ImageDes = models.CharField(max_length=100)
	#ImageScroll = models.ImageField(upload_to='Institute/ScrollImage/')
	ImageScroll = StdImageField(upload_to='Institute/ScrollImage/',  variations={'large': (700, 300,True)})
	ImageComment = models.CharField(max_length=100,default='KGEC')
	def __str__(self):
		return  self.ImageDes



class Institution(models.Model):
	InstName = models.CharField(max_length = 50,primary_key=True)
	#InstLogo = models.ImageField(upload_to='Institute/Image/')
	InstStartDate = models.DateField(auto_now=False)
	InstLogo = StdImageField(upload_to='Institute/Image/',  variations={'large': (500, 150,True)})
	InstDescrip = models.TextField()
	InstOwner = models.ForeignKey(AdminProf)
	InstImages = StdImageField(upload_to='Institute/InstImage/',  variations={'large': (700, 300,True)})
	
	def __str__(self):
		return self.InstName


class Notice(models.Model):
	NOTICE = 'NOTICE'
	ACADEMIC = 'ACADEMIC'
	PLACEMENT = 'PLACEMENT'
	TRAINING = 'TRAINING'
	TENDER = 'TENDER'
	REGISTRAR = 'REGISTRAR'
	RESULT = 'RESULT'
	EXAMINATION = 'EXAMINATION'
	PRINCIPAL = 'PRINCIPAL'
	ACCOUNTS = 'ACCOUNTS'

	NOTICE_IN_CHOICES = (
		(NOTICE, 'Notice'),
        (ACADEMIC, 'Academic'),
        (PLACEMENT, 'Placement'),
        (TRAINING, 'Training'),
        (TENDER, 'Tender'),
        (RESULT, 'Result'),
        (REGISTRAR, 'RegistrarOffice'),
        (PRINCIPAL, 'PrincipalOffice'),
        (ACCOUNTS, 'Accounts'),
        (EXAMINATION, 'Examination'),)

	NoticeType = models.CharField(max_length=20,choices = NOTICE_IN_CHOICES,default = NOTICE)
	NoticeTag = models.CharField(max_length=30)
	NoticeStartDate = models.DateField(auto_now_add=True)
	NoticeEndDate = models.DateField()
	NoticeFile = models.FileField(default='#',upload_to='notice/%Y/%m/%d')
	NoticeContent = models.TextField(default='NA')

	def __str__(self):
		return self.NoticeTag

class Special_Events(models.Model):
	Events_Name = models.CharField(max_length=30)
	Events_Descriptions = models.TextField()
	Events_Date = models.DateField(auto_now_add=True)
	Event_Image = StdImageField(upload_to='notice/special_events/',  variations={'thumbnail': (150, 150,True)})

	def __str__(self):
		return self.Events_Name


class Admission(models.Model):
	Admission_Type = models.CharField(max_length=20, primary_key=True)
	Admission_Details = models.TextField()
	Admission_Exam = models.CharField(max_length=100,default='WBJEE')
	Admission_intake = models.CharField(max_length=100,default='60')


	def __str__(self):
		return self.Admission_Type


