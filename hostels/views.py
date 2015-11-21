from django.shortcuts import render
from hostels.models import Hostel

# Create your views here.
def AllHostels(request):
	HostelsData = Hostel.objects.all()

	context = {'hostel_data': HostelsData }
	return render(request, 'hostel/hostelall.html', context)



def Hostelone(request , name):
	HostelsData = Hostel.objects.filter(HostelName=name)
	

	context = {'hostel_data': HostelsData }
	return render(request, 'hostel/hostelone.html', context)