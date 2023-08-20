<div class="govuk-radios">
	<% loop $Options %>
		<div class="govuk-radios__item $Class">
			<input id="$ID" class="govuk-radios__input" name="$Name" type="radio" value="$Value.ATT"<% if $isChecked %> checked<% end_if %><% if $isDisabled %> disabled<% end_if %> <% if $Up.Required %>required<% end_if %> $Top.getValidationAttributesHTML().RAW />
			<label for="$ID" class="govuk-label govuk-radios__label">$Title.XML</label>
		</div>
	<% end_loop %>
</div>
