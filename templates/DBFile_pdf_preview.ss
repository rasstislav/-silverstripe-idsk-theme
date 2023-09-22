<object
	data="$URL.ATT"
	type="$MimeType"
	class="u-file-preview<% if not $ShowTitle && not $RemoveBottomMargin %> govuk-!-margin-bottom-6<% end_if %>"
>
	<iframe
		src="$URL.ATT"
		class="u-file-preview"
	>
		<p class="govuk-body govuk-!-margin-bottom-0">
			Váš prehliadač nepodporuje ukážku súboru. Môžete si ho <a href="$URL.ATT" download>stiahnuť</a>.
		</p>
	</iframe>
</object>
<% if $ShowTitle %>
	<p class="govuk-body-s<% if $RemoveBottomMargin %> govuk-!-margin-bottom-0<% else %> govuk-!-margin-bottom-6<% end_if %>">$Title</p>
<% end_if %>
