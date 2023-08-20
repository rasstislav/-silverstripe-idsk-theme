<% if $UseButtonTag %>
	<button $addExtraClass('govuk-button').setAttribute('data-module', 'govuk-button').AttributesHTML>
		<% if $ButtonContent %>$ButtonContent<% else %><span>$Title.XML</span><% end_if %>
	</button>
<% else %>
	<input $addExtraClass('govuk-button').setAttribute('data-module', 'govuk-button').AttributesHTML />
<% end_if %>
