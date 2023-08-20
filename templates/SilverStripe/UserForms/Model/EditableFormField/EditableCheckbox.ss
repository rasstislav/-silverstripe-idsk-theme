<input $addExtraClass('govuk-checkboxes__input').AttributesHTML<% if $RightTitle || $Message %> aria-describedby="<% if $RightTitle %>{$ReferenceID}-hint<% end_if %> <% if $Message %>{$ReferenceID}-error<% end_if %>"<% end_if %>/>
<% if $Title %><label for="$ID" class="govuk-label govuk-checkboxes__label">$Title.XML</label><% end_if %>
