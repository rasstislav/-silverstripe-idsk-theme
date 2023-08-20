<%--
	optional parameters:
		- IsService: boolean (default: false)
		- AddLoginButton: boolean (default: false)
--%>
<% if not $IsService %>
	<div class="idsk-header-web__nav--divider"></div>
<% end_if %>
<div class="idsk-header-web__nav idsk-header-web__nav--mobile">
	<div class="govuk-width-container">
		<div class="govuk-grid-row">
			<div class="govuk-grid-column-full">
			</div>
			<% if not $IsService %>
				<div class="govuk-grid-column-full">
					<% include Rasstislav/IdSk/Includes/Components/Header/Menu %>
				</div>
			<% end_if %>
		</div>
		<% if $AddLoginButton %>
			<div class="govuk-grid-row">
				<div class="govuk-grid-column-full">
					<div class="idsk-header-web__main--buttons">
						<% include Rasstislav/IdSk/Includes/Components/Header/Login %>
					</div>
				</div>
			</div>
		<% end_if %>
	</div>
</div>
