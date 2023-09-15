<% if $UseButtonTag %>
	<button $addExtraClass('idsk-button submit-table-filter').getAttributesHTML('name')>
		<% if $ButtonContent %>$ButtonContent<% else %><span>$Title.XML</span><% end_if %> (<span class="count">0</span>)
	</button>
<% else %>
	<input $addExtraClass('idsk-button submit-table-filter').getAttributesHTML('name') />
<% end_if %>
