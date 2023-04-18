<%--
	required parameters:
		- Title: string

	optional parameters:
		- Warning: boolean (default: false)
 --%>
<div class="idsk-header-web__banner<% if $Warning %> idsk-header-web__banner--warning<% end_if %>">
	<div class="govuk-width-container">
		<div class="govuk-grid-row">
			<div class="govuk-grid-column-full">
				<div class="govuk-body-s idsk-header-web__banner-title">
					<% if $Warning %><div class="idsk-header-web__warning-icon"></div><% end_if %>
					$Title
				</div>
				<button class="idsk-header-web__banner-close" aria-label="Zavrieť banner"><span class="idsk-header-web__menu-close"></span></button>
			</div>
		</div>
	</div>
</div>
