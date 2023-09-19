<% if $UseButtonTag %>
	<button $addExtraClass('idsk-button').setAttribute('data-module', 'idsk-button').AttributesHTML>
		<% if $ButtonContent %>$ButtonContent<% else %><span>$Title.XML</span><% end_if %>
	</button>
<% else %>
	<input $addExtraClass('idsk-button').setAttribute('data-module', 'idsk-button').AttributesHTML />
<% end_if %>
