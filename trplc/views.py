import json ,simplejson
from django.shortcuts import render
from datetime import date
d=date.today().year

# Create your views here.

from trplc.models import Tpo,TiedCompany,PlacementRecord

def TraingPlacement(request):

    Tpo_Data = Tpo.objects.all()
    Company_Data = TiedCompany.objects.all()
    Place_Data = PlacementRecord.objects.all()
    context = {'tpo_data': Tpo_Data,'company_Data':Company_Data,'place_Data':Place_Data,'current_year':d}
    return render(request, 'trgplc/trplc.html', context)


def TraingPlacementRecord(request):

    Placed_data = PlacementRecord.objects.all().order_by('PrYear').reverse()
    queryset = PlacementRecord.objects.all()
   
    s=d-1
    p=d-2
    q=d-3

    context = {'place_Data':Placed_data ,'current_year':d,'prev_year1':s,'prev_year2':p,'prev_year3':q}
    return render(request, 'trgplc/trplc_record.html', context)

