from django import forms

from . import models


class FeedbackForm(forms.ModelForm):
	class Meta:
		model = models.Feedback
		fields = [
				"your_name",
			    "your_feedback"
		]
