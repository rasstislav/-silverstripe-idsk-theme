<% if $Options.Count %>
	<div class="govuk-checkboxes">
		<% loop $Options %>
			<div class="govuk-checkboxes__item $Class">
				<input id="$ID" class="govuk-checkboxes__input" name="$Name" type="checkbox" value="$Value.ATT"<% if $isChecked %> checked="checked"<% end_if %><% if $isDisabled %> disabled="disabled"<% end_if %> $Top.getValidationAttributesHTML().RAW />
				<label for="$ID" class="govuk-label govuk-checkboxes__label">$Title.XML</label>
			</div>
		<% end_loop %>
	</div>
<% else %>
	<p>No options available</p>
<% end_if %>
