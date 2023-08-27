<% if $Children %>
	<% loop $Children %>
		<% if $Message %>
			<li>
				<a href="#$ReferenceID">$Message</a>
			</li>
		<% end_if %>
		<% include SilverStripe/Includes/UserForms/Errors %>
	<% end_loop %>
<% end_if %>
