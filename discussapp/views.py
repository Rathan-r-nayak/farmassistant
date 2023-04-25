from django.shortcuts import render,redirect
from . import models
from django.template import loader
from django.http import HttpResponse,HttpResponseRedirect

# Create your views here.
def discuss(request):
    query=models.Questions.objects.all().values()
    answer=models.Answers.objects.all().values()
    farmer=models.Farmer.objects.all().values()
    
    context={
        'queries':query,
        'ans':answer,
        'farmer':farmer,
    }
    print("\n",request.user,"\n")
    template = loader.get_template('discussapp/discussion.html')
    return HttpResponse(template.render(context, request))
    # return render(request,'discussapp/discussion.html')

def answerSubmit(request):
    if request.method=='POST':
        ans=request.POST['ans']
        qid=int(request.POST['fid_qid'])

        user=request.user
        userob=models.AuthUser.objects.get(username=user)
        farmer=models.Farmer.objects.get(fid=userob)

        ob=models.Answers(query_id=qid,fid=farmer,answer=ans)
        ob.save()
        return redirect('discusspage')
    return redirect('discusspage')


def askQuestion(request):
    return render(request,'discussapp/askQuestion.html')


def questionSubmit(request):
    if request.method=='POST':
        query=request.POST['question']

        
        user=request.user
        userob=models.AuthUser.objects.get(username=user)
        farmer=models.Farmer.objects.get(fid=userob)

        ob=models.Questions(fid=farmer,question=query)
        ob.save()

        return redirect('discusspage')
    
    return HttpResponse('404-NOT FOUND')