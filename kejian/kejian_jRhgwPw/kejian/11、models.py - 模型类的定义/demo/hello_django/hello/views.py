from django.shortcuts import render, render_to_response, redirect
from django.contrib.auth.models import User
from django.http import HttpRequest, HttpResponse
from django.template import loader

# Create your views here.
def hello(request, a):
	user_list = User.objects.all()
	# t = loader.get_template('table.html')
	# c = {'user_list': user_list}
	# return HttpResponse(t.render(c, request),
	# 					content_type="text/html")
	# response = HttpResponse("Here's the text of the Web page.")
	# return response
	# return render(request, 'table.html', {'user_list':user_list})
	print(locals())
	return render_to_response('table.html', locals())
	# return redirect('http://www.baidu.com')

def test(request, id, key):
	print(id)
	print(key)
	return render(request, 'table.html')