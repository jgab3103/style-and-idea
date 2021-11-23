from django.contrib import admin
from . import models

class WorkInline(admin.TabularInline):
    model = models.Work
    extra = 0


class CollectionAdmin(admin.ModelAdmin):
    # list_filter = ['instrumentation_summary',
    # 'collection']
    # search_fields = ('title',)
    list_display = (
    "title",
    "title_in_original_language",

    )
    inlines = [WorkInline,]

class WorkAdmin(admin.ModelAdmin):
    list_filter = ['instrumentation_summary',
    'collection']
    search_fields = ('title',)
    list_display = (
    "title",
    "title_in_original_language",
    "collection",
    "order_in_collection"

    )

admin.site.register(models.Work, WorkAdmin)
admin.site.register(models.Text)
admin.site.register(models.Recording)
admin.site.register(models.Note)
admin.site.register(models.Instrument)
admin.site.register(models.Collection, CollectionAdmin)
admin.site.register(models.Performance)
