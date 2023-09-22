<% if not $RemoveBottomMargin %>
	<p class="govuk-!-margin-top-0 govuk-!-margin-bottom-6">
<% end_if %>
<a href="$URL.ATT" title="$Title" <% if $Basename %>download="$Basename.ATT"<% else %>download<% end_if %> class="govuk-link">Stiahnuť $Title</a>
<% if not $RemoveBottomMargin %>
	</p>
<% end_if %>
