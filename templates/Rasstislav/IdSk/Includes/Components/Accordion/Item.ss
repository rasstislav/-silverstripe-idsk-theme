<%--
	required parameters:
		- Identifier: string
		- Pos: string
		- Title: string
		- Content: string

	optional parameters:
		- Summary: string (default: empty)
--%>
<div class="govuk-accordion__section">
	<div class="govuk-accordion__section-header">
		<h2 class="govuk-accordion__section-heading">
			<span id="accordion-{$Identifier}-heading-$Pos" class="govuk-accordion__section-button">
				$Title
			</span>
		</h2>
		<% if $Summary %>
			<div id="accordion-{$Identifier}-summary-$Pos" class="govuk-accordion__section-summary govuk-body">
				$Summary
			</div>
		<% end_if %>
	</div>
	<div id="accordion-{$Identifier}-content-$Pos" aria-labelledby="1-heading-1" class="govuk-accordion__section-content">
		<div class="govuk-body">
			$Content
		</div>
	</div>
</div>
