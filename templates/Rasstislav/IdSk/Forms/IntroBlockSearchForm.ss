<form $addExtraClass('idsk-search-component').setAttribute('data-module', 'idsk-search-component').AttributesHTML>
	<% loop $Fields %>
		<% if $Title %><label for="$ID">$Title</label><% end_if %>
		$Me.addExtraClass('idsk-search-component__input')
	<% end_loop %>
	<% loop $Actions %>
		$Field
	<% end_loop %>
</form>
