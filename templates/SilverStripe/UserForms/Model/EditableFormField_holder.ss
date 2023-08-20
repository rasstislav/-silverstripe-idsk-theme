<div id="$Name" class="govuk-form-group<% if $extraClass %> $extraClass<% end_if %>">
	<% if $Title %><label for="$ID" class="govuk-label">$Title.XML</label><% end_if %>
	<% if $RightTitle %><span id="{$ReferenceID}-hint" class="govuk-hint">$RightTitle</span><% end_if %>
	<% if $Message %><span id="{$ReferenceID}-error" class="$MessageType"><span class="govuk-visually-hidden">Chyba:</span> $Message</span><% end_if %>
	$Field
</div>
