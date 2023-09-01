<%--
	required parameters:
		- BodyRows: List || Body: string || EmptyMessage: string

	optional parameters:
		- Header: string (default: empty)
		- ExtraClass: string (default: empty)
--%>
<table class="idsk-table<% if $ExtraClass %> $ExtraClass<% end_if %>">
	<% if $Header %>
		<thead class="idsk-table__head">
			<tr class="idsk-table__row">
				$Header
			</tr>
		</thead>
	<% end_if %>
	<tbody class="idsk-table__body">
		<% if $BodyRows %>
			<% loop $BodyRows %>
				<% include Rasstislav/IdSk/Includes/Components/Table/TableRow %>
			<% end_loop %>
		<% else_if $Body %>
			$Body
		<% else_if $EmptyMessage %>
			<% template 'Rasstislav/IdSk/Includes/Components/Table/TableRow' %>
				<% set Cells %>
					<% include Rasstislav/IdSk/Includes/Components/Table/TableCell Value=$EmptyMessage %>
				<% end_set %>
			<% end_template %>
		<% end_if %>
	</tbody>
</table>
