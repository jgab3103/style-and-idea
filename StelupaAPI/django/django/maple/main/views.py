from django.shortcuts import render, get_object_or_404
from news_items.models import NewsItem
from django.contrib.auth.decorators import login_required
from musicians.models import Musician, Period
from scores.models import Collection, Work, Performance, Instrument
from apps_and_notebooks.models import AppOrNotebook
from django.core.paginator import Paginator
from . import filters
from config import globals


def create_filter_and_paginator(req, data, filter_to_apply, filter_reset_path, paginator_count):

    paginator_and_filter_dict = {}

    data_filter = filter_to_apply(req.GET, queryset = data )
    fqs = data_filter.qs

    paginator = Paginator(fqs, paginator_count)
    page = req.GET.get('page', 1)
    try:
        paginated_records = paginator.page(page)
    except PageNotAnInteger:
        paginated_records = paginator.page(1)
    except EmptyPage:
        paginated_records = paginator.page(paginator.num_pages)

    paginator_and_filter_dict['data_filter'] = data_filter
    paginator_and_filter_dict['paginator'] = paginator
    paginator_and_filter_dict['paginated_records'] = paginated_records
    paginator_and_filter_dict['filter_reset_path'] = filter_reset_path

    return paginator_and_filter_dict


def explore(request):
    return render(request, 'main/explore.html')



def apps_and_notebooks(request):
    data = AppOrNotebook.objects.all()
    context = create_filter_and_paginator(
        request,
        data,
        filters.AppOrNotebookFilter,
        globals.APPS_AND_NOTEBOOKS_DATA_FILTER_RESET_URL,
        globals.APPS_AND_NOTEBOOKS_PAGINATOR_COUNT
        )

    return render(request, 'main/apps_and_notebooks.html', context)



def index(request):
    news_items = NewsItem.objects.filter(is_displayed = True).order_by('-date_added')
    context = {'news_items': news_items}
    return render(request, 'main/index.html', context)

def data_api(request):
    return render(request, 'main/data_api.html')

def submit_musician_data(request):
    data = Musician.objects.all()
    context = create_filter_and_paginator(
        request,
        data,
        filters.MusicianFilter,
        globals.SUBMIT_MUSICIAN_DATA_FILTER_RESET_URL,
        globals.MUSICIAN_PAGINATOR_COUNT
        )

    return render(request, 'main/submit_data_partials/submit_musician_data.html', context)


def submit_collection_data(request):
    data = Collection.objects.all()

    context = create_filter_and_paginator(
        request,
        data,
        filters.CollectionFilter,
        '/submit-collection-data',
        globals.COLLECTION_PAGINATOR_COUNT
        )

    return render(request, 'main/submit_data_partials/submit_collection_data.html', context)

def submit_work_data(request):
    data = Work.objects.all()

    context = create_filter_and_paginator(
        request,
        data,
        filters.WorkFilter,
        '/submit-work-data',
        globals.WORK_PAGINATOR_COUNT
        )
    return render(request, 'main/submit_data_partials/submit_work_data.html', context)

def submit_performance_data(request):
    data = Performance.objects.all()

    context = create_filter_and_paginator(
        request,
        data,
        filters.PerformanceFilter,
        '/submit-performance-data',
        globals.PERFORMANCE_PAGINATOR_COUNT
        )
    return render(request, 'main/submit_data_partials/submit_performance_data.html', context)

def submit_instrument_data(request):

    data = Instrument.objects.all()

    context = create_filter_and_paginator(
        request,
        data,
        filters.InstrumentFilter,
        '/submit-instrument-data',
        globals.INSTRUMENT_PAGINATOR_COUNT
        )
    return render(request, 'main/submit_data_partials/submit_instrument_data.html', context)


def submit_file(request):
    return render(request, 'main/submit_data_partials/submit_file.html')
