from django.shortcuts import render, render_to_response, redirect
from django.contrib.auth.models import User
from django.http import HttpRequest, HttpResponse
from django.template import loader, Template
from hello.models import Publisher
from hello.forms import PublisherForm
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

def add_publisher(request):
	if request.method == "POST":
		# 一、不使用Form的情况
		# 如果为post提交，去接收用户提交过来的数据
		# name = request.POST['name']
		# address = request.POST.get('address')
		# city = request.POST['city']
		# state_province = request.POST['state_province']
		# country = request.POST['country']
		# website = request.POST['website']
		# # 验证。。。
		# Publisher.objects.create(
		# 	name = name,
		# 	address = address,
		# 	city = city,
		# 	state_province = state_province,
		# 	country = country,
		# 	website = website,
		# )
		# return HttpResponse("添加出版社信息成功！")

		# 使用Django Form的情况。
		# publisher_form = PublisherForm(request.POST)
		# if publisher_form.is_valid():
		# 	Publisher.objects.create(
		# 		name = publisher_form.cleaned_data['name'],
		# 		address = publisher_form.cleaned_data['address'],
		# 		city = publisher_form.cleaned_data['city'],
		# 		state_province = publisher_form.cleaned_data['state_province'],
		# 		country = publisher_form.cleaned_data['country'],
		# 		website = publisher_form.cleaned_data['website'],
		# 	)
		# 	return HttpResponse("添加出版社信息成功！")

		# 使用Django ModelForm的情况。
		publisher_form = PublisherForm(request.POST)
		if publisher_form.is_valid():
			publisher_form.save()
			return HttpResponse("添加出版社信息成功！")
	else:
		publisher_form = PublisherForm()
	return render(request, 'add_publisher.html', locals())