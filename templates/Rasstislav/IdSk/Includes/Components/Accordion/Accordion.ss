<%--
	required parameters:
		- Identifier: string
		- Items: string || Body: List
--%>
<div id="$Identifier" data-module="idsk-accordion" data-attribute="value" class="govuk-accordion">
	<div class="govuk-accordion__controls">
		<button type="button" aria-expanded="false" data-open-title="Otvoriť všetky" data-close-title="Zatvoriť všetky" class="govuk-accordion__open-all">
			<span data-section-title="sekcie" class="govuk-visually-hidden govuk-accordion__controls-span"></span>
		</button>
	</div>
	<% if $Items %>
		<% loop $Items %>
			<% include Rasstislav/IdSk/Includes/Components/Accordion/Item Identifier=$Top.Identifier %>
		<% end_loop %>
	<% else %>
		$Body
	<% end_if %>
</div>
