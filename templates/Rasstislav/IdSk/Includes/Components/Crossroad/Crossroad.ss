<%--
	required parameters:
		- Body: string || Items: List

	optional parameters:
		- ShowMoreButton: boolean (default: false)
		- ExtraClass: string (default: empty)
--%>
<div data-module="idsk-crossroad" class="govuk-clearfix u-o-hidden<% if $ExtraClass %> $ExtraClass<% end_if %>">
	<% if not $Body %>
		<div class="idsk-crossroad idsk-crossroad-1">
			<% loop $Items %>
				<% if $Pos(0) >= 5 %>
					<% include Rasstislav/IdSk/Includes/Components/Crossroad/CrossroadItem OneColumnHide=true %>
				<% else %>
					<% include Rasstislav/IdSk/Includes/Components/Crossroad/CrossroadItem %>
				<% end_if %>
			<% end_loop %>
		</div>
	<% else %>
		$Body
	<% end_if %>
	<% if $ShowMoreButton == true || not $Body && $Items.Count > 5 %>
		<div class="govuk-grid-column-full idsk-crossroad__collapse--shadow idsk-crossroad__uncollapse-div">
			<button id="idsk-crossroad__uncollapse-button" type="button" data-line1="Zobraziť viac" data-line2="Zobraziť menej" class="idsk-crossroad__colapse--button">Zobraziť viac</button>
		</div>
	<% end_if %>
</div>
