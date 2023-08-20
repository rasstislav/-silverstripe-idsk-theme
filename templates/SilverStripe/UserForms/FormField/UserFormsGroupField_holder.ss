<$Tag class="govuk-fieldset $extraClass"<% if $Tag == 'fieldset' && $RightTitle %> aria-describedby="{$ReferenceID}-hint"<% end_if %>>
	<% if $Tag == 'fieldset' && $Legend %>
		<legend class="govuk-fieldset__legend govuk-fieldset__legend--m">$Legend</legend>
	<% end_if %>

	<% if $RightTitle %><span id="{$ReferenceID}-hint" class="govuk-hint">$RightTitle</span><% end_if %>
	<div class="middleColumn">
	<% loop $FieldList %>
		<% if $Up.ColumnCount %>
			<div class="column-{$Up.ColumnCount} $FirstLast">
				$FieldHolder
			</div>
		<% else %>
			$FieldHolder
		<% end_if %>
	<% end_loop %>
	</div>
</$Tag>
