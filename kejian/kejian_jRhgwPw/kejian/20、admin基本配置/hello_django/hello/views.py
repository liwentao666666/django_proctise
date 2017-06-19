from django.shortcuts import render, render_to_response, redirect
from django.contrib.auth.models import User
from django.http import HttpRequest, HttpResponse
from django.template import loader, Template
from hello.models import Publisher
import datetime

# Create your views here.
def hello(request, a):
	Publisher.objects.all()
	# user_list = User.objects.all()
	# t = loader.get_template('table.html')
	# c = {'user_list': user_list}
	# return HttpResponse(t.render(c, request),
	# 					content_type="text/html")
	# response = HttpResponse("Here's the text of the Web page.")
	# return response
	# return render(request, 'table.html', {'user_list':user_list})
	# print(locals())
	athlete = '0'
	athlete_list = [1,2,3,4,5,6]
	fdsafsdafdsafdsfadsfafdsa=99
	value1 = "This text will be HTML-escaped, and will appear in all lowercase."
	value2 = 10
	value3 = datetime.datetime.now()
	value4 = [1,2,3]
	value5 = "<a href=''>百度</a>"
	value6 = 123456
	value7 = "https://www.example.org/foo?a=b&c=d"
	value8 = "我 是 帅 哥 你 信 不 信"
	value9 = Template("<a href='http://www.maiziedu.com' target='_blank'>麦子学院</a>")
	return render(request, 'a.html', locals())
	# return redirect('http://www.baidu.com')

def test(request):
	return render(request, 'table.html')