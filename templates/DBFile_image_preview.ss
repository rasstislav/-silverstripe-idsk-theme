<% if $ShowTitle %>
	<figure class="govuk-!-margin-0">
		<img $FitMax(1920, 1080).setAttribute('class', 'img-fluid').AttributesHTML />
		<figcaption class="govuk-body-s<% if $RemoveBottomMargin %> govuk-!-margin-bottom-0<% else %> govuk-!-margin-bottom-6<% end_if %>">$Title</figcaption>
	</figure>
<% else_if $RemoveBottomMargin %>
	<img $FitMax(1920, 1080).setAttribute('class', 'img-fluid').AttributesHTML />
<% else %>
	<img $FitMax(1920, 1080).setAttribute('class', 'img-fluid govuk-!-margin-bottom-6').AttributesHTML />
<% end_if %>
