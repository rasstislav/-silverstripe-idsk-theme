<div id="$Name" class="govuk-form-group<% if $extraClass %> $extraClass<% end_if %>">
	<% if $Title %><span class="govuk-label">$Title</span><% end_if %>
	<div class="typography">
		<% loop $FieldList %>
			$Field
		<% end_loop %>
	</div>
</div>
