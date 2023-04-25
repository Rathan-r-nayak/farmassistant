from django.shortcuts import render
from django.contrib.auth import authenticate,login,logout
from django.contrib import messages
from django.shortcuts import render,redirect
from django.http import HttpResponse,HttpResponseRedirect



# Create your views here.
def welcomePage(request):
    return render(request,'welcomeapp/index.html')

def loginSubmit(request):
    if request.method=='POST':
        uname=request.POST['uname']
        psw=request.POST['psw']
        user=authenticate(username=uname,password=psw)

        if user is not None:
            login(request,user)
            messages.success(request,f"successfully logged in as {user}")
            return redirect('main')
        else:
            messages.error(request,f"failed to login")
            return redirect('main')
    
    return HttpResponse("404-Not Found")
