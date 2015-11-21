from django.shortcuts import render

# Create your views here.

from administration.models import Institution , InstScrollImage , Notice , AdminProf , Special_Events ,Admission 


def InstituteDetails(request):

    Institute_Data = Institution.objects.all()
    Institute_scroll_image = InstScrollImage.objects.all()
    Special_Event = Special_Events.objects.order_by('id').reverse()[:4]
    # Inst_notice = Notice.objects.all()
    Inst_notice = Notice.objects.order_by('NoticeStartDate').reverse()[:10]
    Plc_notice = Notice.objects.filter(NoticeType='PLACEMENT').order_by('NoticeStartDate').reverse()[:15]
    Tndr_notice = Notice.objects.filter(NoticeType='TENDER').order_by('NoticeStartDate').reverse()[:15]
    Trng_notice = Notice.objects.filter(NoticeType='TRAINING').order_by('NoticeStartDate').reverse()[:10]
    Exam_notice = Notice.objects.filter(NoticeType='EXAMINATION').order_by('NoticeStartDate').reverse()[:10]
    Res_notice = Notice.objects.filter(NoticeType='RESULT').order_by('NoticeStartDate').reverse()[:10]
    Aca_notice = Notice.objects.filter(NoticeType='ACADEMIC').order_by('NoticeStartDate').reverse()[:10]


    Noti_notice = Notice.objects.filter(NoticeType='NOTICE').order_by('NoticeStartDate').reverse()[:12]
    Reg_notice = Notice.objects.filter(NoticeType='REGISTRAR').order_by('NoticeStartDate').reverse()[:10]
    Pri_notice = Notice.objects.filter(NoticeType='PRINCIPAL').order_by('NoticeStartDate').reverse()[:10]
    Aco_notice = Notice.objects.filter(NoticeType='ACCOUNTS').order_by('NoticeStartDate').reverse()[:10]



    context = {'inst_data': Institute_Data,'inst_sc_img':Institute_scroll_image,'inst_notice':Inst_notice,\
    'plc_notice':Plc_notice,'tndr_notice':Tndr_notice,'trng_notice':Trng_notice,'exam_notice':Exam_notice,\
    'res_notice':Res_notice,'aca_notice':Aca_notice,'noti_notice':Noti_notice,'reg_notice':Reg_notice,\
    'pri_notice':Pri_notice,'aco_notice':Aco_notice,'special_event':Special_Event}

    return render(request, 'inst.html', context)


def NoticeDetails(request):
	All_notice = Notice.objects.all().order_by('NoticeStartDate').reverse()
	context = {'all_notice':All_notice}
	return  render(request,'notice/notice.html',context)


def NoticeSingle(request , id):
	One_notice = Notice.objects.filter(id=id)
	context = {'one_notice':One_notice}
	return  render(request,'notice/notice_specific.html',context)


def AdminProfile(request , prof):
	All_profile = AdminProf.objects.filter(AdminType=prof)
	context = {'admin_prof':All_profile}
	return  render(request,'administration/admn_prof.html',context)

def AdmissionDtl(request , typ):
    Admission_dtl = Admission.objects.filter(Admission_Type=typ)
    context = {'admission_dtls':Admission_dtl}
    return  render(request,'admission/admission_dtls.html',context)