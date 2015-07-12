import json ,simplejson
from graphos.sources.model import ModelDataSource , SimpleDataSource
from graphos.renderers import flot
from django.shortcuts import render
from django.db.models.query import QuerySet
from chartit import DataPool, Chart
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

    # query = PlacementRecord.objects.all().query
    # query.group_by = ['PrYear']
    # Placed_data = QuerySet(query=query, model=PlacementRecord)
    #Placed_data = PlacementRecord.objects.values().order_by('PrYear')
    Placed_data = PlacementRecord.objects.all().order_by('PrYear').reverse()

    queryset = PlacementRecord.objects.all()
    data_source = ModelDataSource(queryset,  fields=['PrYear', 'PlacedStudent'])
    chart = flot.LineChart(data_source, options={'title': "PlaceMentReport", 'xaxis': {'mode': "categories"}},html_id="line_chart")
    #data_source = flot.LineChart(SimpleDataSource(queryset),  fields=['PrCompany', 'PlacedStudent'])
    #data_source = ModelDataSource(queryset,fields=['PrCompany', 'PlacedStudent'])
    #chart = flot.LineChart(data_source)
    s=d-1
    p=d-2
    q=d-3





    context = {'place_Data':Placed_data ,'trp_chart':chart,'current_year':d,'prev_year1':s,'prev_year2':p,'prev_year3':q}

    return render(request, 'trgplc/trplc_record.html', context)


# def TrpGraph(request):
#     queryset = PlacementRecord.objects.all()
#     data_source = ModelDataSource(queryset,fields=['PrCompany', 'PlacedStudent'])
#     chart = flot.LineChart(data_source)
#     context = {'trp_chart':chart}
#     return render(request, 'trgplc/trplc_record.html', context)




                                  



# def PlacementViewChart(request):
#     #Step 1: Create a DataPool with the data we want to retrieve.
#     placedata = \
#         DataPool(
#            series=
#             [{'options': {
#                'source': PlacementRecord.objects.all()},
#                'terms': [
#                 'PrCompany',
#                 'PlacedStudent',
#                 'MaxSalary']}
#              ])

#     #Step 2: Create the Chart object
#     cht = Chart(
#             datasource = placedata,
#             series_options =
#               [{'options':{
#                   'type': 'line',
#                   'stacking': False},
#                   'terms':{
#                   'PrCompany': [
#                     'PlacedStudent',
#                     'MaxSalary']
#                   }}],
#             chart_options =
#               {'title': {
#                    'text': 'Student Placed'},
#                'xAxis': {
#                     'title': {
#                        'text': 'Student'}}})

#     #Step 3: Send the chart object to the template.
#     context = {'place_graph':placedata}
#     return render(request, 'trgplc/trplc_record.html', context)
#     #return render_to_response({'weatherchart': cht})
    