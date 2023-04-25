from django.shortcuts import render
from django.contrib.auth import authenticate,login,logout
from django.contrib import messages
from django.shortcuts import render,redirect
from django.http import HttpResponse,HttpResponseRedirect
from django.contrib.auth.models import User
from . import models


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

        ob=User.objects.create_user(username=uname,password=psw)
        ob.first_name=fname
        ob.last_name=lname
        ob.email=umail
        ob.save()
        farm=models.Farmer(name=fname+" "+lname,age=age,email=umail,address=address)
        farm.save()
        return redirect('welcomePage')
    return HttpResponse("404-Not Found")

