<%--
	required parameters:
		- Title: string

	optional parameters:
		- ExtraClass: string (default: empty)
--%>
<div class="govuk-warning-text<% if $ExtraClass %> $ExtraClass<% end_if %>">
	<span aria-hidden="true" class="govuk-warning-text__icon">!</span>
	<strong class="govuk-warning-text__text">
		<span class="govuk-warning-text__assistive">Upozornenie</span>
		$Title
	</strong>
</div>
