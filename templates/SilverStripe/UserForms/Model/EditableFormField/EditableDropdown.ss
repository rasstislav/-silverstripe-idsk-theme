<select $addExtraClass('govuk-select').AttributesHTML<% if $RightTitle || $Message %> aria-describedby="<% if $RightTitle %>{$ReferenceID}-hint<% end_if %> <% if $Message %>{$ReferenceID}-error<% end_if %>"<% end_if %>>
<% loop $Options %>
	<option value="$Value.XML"<% if $Selected %> selected="selected"<% end_if %><% if $Disabled %> disabled="disabled"<% end_if %>>$Title.XML</option>
<% end_loop %>
</select>
