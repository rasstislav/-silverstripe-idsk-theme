<% if $getAttribute('data-rule-maxlength') %>
	<div data-module="idsk-character-count" data-maxlength="$getAttribute('data-rule-maxlength')" class="idsk-character-count">
		<textarea $addExtraClass('govuk-textarea govuk-js-character-count').AttributesHTML aria-describedby="<% if $RightTitle %>{$ReferenceID}-hint<% end_if %> <% if $Message %>{$ReferenceID}-error<% end_if %> {$ReferenceID}-info">$Value.HTMLATT</textarea>
		<span id="{$ReferenceID}-info" class="govuk-hint govuk-character-count__message" aria-live="polite">Zostáva Vám $getAttribute('data-rule-maxlength') znakov</span>
	</div>
<% else %>
	<textarea $addExtraClass('govuk-textarea govuk-!-margin-bottom-0').AttributesHTML<% if $RightTitle || $Message %> aria-describedby="<% if $RightTitle %>{$ReferenceID}-hint<% end_if %> <% if $Message %>{$ReferenceID}-error<% end_if %>"<% end_if %>>$Value.HTMLATT</textarea>
<% end_if %>
