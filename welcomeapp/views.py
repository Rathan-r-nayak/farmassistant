from django.shortcuts import render,redirect
from django.http import HttpResponse,HttpResponseRedirect
from django.contrib.auth import authenticate,login,logout
from django.contrib import messages
from django.template import loader
from . import models
from django.contrib.auth.models import User

# Create your views here.
def welcomePage(request):
    ob=models.Schemes.objects.all()
    context={'scheme':ob}
    return render(request,'welcomeapp/index.html',context)

def loginSubmit(request):
    if request.method=='POST':
        uname=request.POST['uname']
        psw=request.POST['psw']
        user=authenticate(username=uname,password=psw)

        if user is not None:
            login(request,user)
            messages.success(request,f"successfully logged in as {user}")
            return redirect('welcomePage')
        else:
            messages.error(request,f"failed to login")
            return redirect('welcomePage')
    
    return HttpResponse("404-Not Found")

def signupSubmit(request):
    if request.method=='POST':
        uname=request.POST['uname']
        umail=request.POST['umail']
        fname=request.POST['fname']
        lname=request.POST['lname']
        age=int(request.POST['age'])
        address=request.POST['address']
        psw=request.POST['psw']

        newu=authenticate(username=uname,password=psw)
        if newu is not None:
            messages.success(request,f"username {newu} already taken")
            return redirect('welcomePage')

        ob=User.objects.create_user(username=uname,password=psw)
        ob.first_name=fname
        ob.last_name=lname
        ob.email=umail
        ob.save()

        farmer=models.AuthUser.objects.get(username=uname)
        print("\n",farmer,"\n")

        farm=models.Farmer(fid=farmer,name=fname+" "+lname,age=age,email=umail,address=address)
        farm.save()
        
        user=authenticate(username=uname,password=psw)

        if user is not None:
            login(request,user)
            messages.success(request,f"successfully logged in as {user}")
            return redirect('welcomePage')
        else:
            messages.error(request,f"failed to login")
            return redirect('welcomePage')
    
    return HttpResponse("404-Not Found")


def search(request):
    search_query=request.GET['searchQuery']
    if len(search_query)>80:
        allschemes=models.Schemes.objects.none()
    else:
        alltitle=models.Schemes.objects.filter(title__icontains=search_query)
        allcontent=models.Schemes.objects.filter(about__icontains=search_query)
        allcontacts=models.Schemes.objects.filter(tocontact__icontains=search_query)
        allschemes=alltitle.union(allcontent,allcontacts)



    context={'scheme':allschemes,
         'query':search_query,
        }
    return render(request,'welcomeapp/search.html',context)
    


def schemeDetail(request,schemedet):
    schmOb=models.Schemes.objects.get(title=schemedet)
    try:
        benftOb=models.Benifits.objects.filter(stitle=schmOb).values()
        
    except:
        benftOb=None
    context={
        'scheme':schmOb,
        'benifit':benftOb,
    }
    template = loader.get_template('welcomeapp/scheme_detail.html')
    return HttpResponse(template.render(context,request))

