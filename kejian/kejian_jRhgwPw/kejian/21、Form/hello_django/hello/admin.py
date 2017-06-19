from django.contrib import admin
from hello.models import *

# Register your models here.
@admin.register(Publisher)
class PublisherAdmin(admin.ModelAdmin):
    list_display = ('name', 'country', 'state_province', 'city',)
    search_fields = ('name', 'city',)
    list_filter = ('state_province',)
    ordering = ('-id',)
    # fields = ('name', 'address',)
    # exclude = ('name', 'address',)
    fieldsets = (
        (None, {
            'fields': ('name', 'address', )
        }),
        ('Advanced options', {
            'classes': ('collapse',),
            'fields': ('city', 'state_province', 'country', 'website'),
        }),
    )

admin.site.register(Author)
admin.site.register(AuthorDetail)
# admin.site.register(Publisher, PublisherAdmin)
admin.site.register(Book)