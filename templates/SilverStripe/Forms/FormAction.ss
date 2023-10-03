<% if $UseButtonTag %>
	<button $addExtraClass('idsk-button').setAttribute('data-module', 'idsk-button').AttributesHTML>
		<% if $ButtonContent %>$ButtonContent<% else %><span>$Title.XML</span><% end_if %>
		<% if $UseStartButton %>
			<% include Rasstislav/IdSk/Includes/Icons/ButtonStartIcon Height=16 %>
		<% end_if %>
	</button>
<% else %>
	<input $addExtraClass('idsk-button').setAttribute('data-module', 'idsk-button').AttributesHTML />
<% end_if %>
