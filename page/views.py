from django.shortcuts import render
from page.models import NewPage, NewPageFiles



def new_page(request, page_url):
	
    p_list = NewPage.objects.filter(Page_Url=page_url)
    f_list = NewPageFiles.objects.filter(Page_Url=page_url)
    
    context = {'page_content': p_list,'page_files':f_list}
    return render(request, 'page/page.html', context)

# Create your views here.
