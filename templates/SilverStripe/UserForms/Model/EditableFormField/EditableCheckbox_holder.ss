<div id="$Name" class="govuk-form-group<% if $extraClass %> $extraClass<% end_if %>">
	<% if $RightTitle %><span id="{$ReferenceID}-hint" class="govuk-hint">$RightTitle</span><% end_if %>
	<% if $Message %><span id="{$ReferenceID}-error" class="message $MessageType"><span class="govuk-visually-hidden">Chyba:</span> $Message</span><% end_if %>
	<div class="govuk-checkboxes">
		<div class="govuk-checkboxes__item">
			$Field
		</div>
	</div>
</div>
