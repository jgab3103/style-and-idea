from django.shortcuts import render
from . import forms
from django.http import HttpResponseRedirect

def thanks(request):
	return render(request, 'feedback/thanks.html')

def feedback_form(request):
    form = forms.FeedbackForm()

    if request.method == 'POST':
        form = forms.FeedbackForm(request.POST)

        if form.is_valid():
            feedback = form.save(commit=False)
            feedback.save()
            return HttpResponseRedirect('/feedback/thanks')
    return render(request,'feedback/feedback_form.html', {'form': form})
