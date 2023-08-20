<div class="govuk-form-group<% if $extraClass %> $extraClass<% end_if %>">
	<fieldset id="$Name" class="govuk-fieldset"<% if $RightTitle || $Message %> aria-describedby="<% if $RightTitle %>{$ReferenceID}-hint<% end_if %> <% if $Message %>{$ReferenceID}-error<% end_if %>"<% end_if %>>
		<% if $Title %><legend class="govuk-fieldset__legend">$Title</legend><% end_if %>
		<% if $RightTitle %><span id="{$ReferenceID}-hint" class="govuk-hint">$RightTitle</span><% end_if %>
		<% if $Message %><span id="{$ReferenceID}-error" class="message $MessageType"><span class="govuk-visually-hidden">Chyba:</span> $Message</span><% end_if %>
		$Field
	</fieldset>
</div>
