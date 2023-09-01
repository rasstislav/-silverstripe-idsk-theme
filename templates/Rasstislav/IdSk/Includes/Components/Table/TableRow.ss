<%--
	required parameters:
		- Columns: List || Cells: string

	optional parameters:
		- ExtraClass: string (default: empty)
--%>
<tr class="idsk-table__row<% if $ExtraClass %> $ExtraClass<% end_if %>">
	<% if $Columns %>
		<% loop $Columns %>
			<% include Rasstislav/IdSk/Includes/Components/Table/TableCell Value=$Content %>
		<% end_loop %>
	<% else_if $Cells %>
		$Cells
	<% end_if %>
</tr>
