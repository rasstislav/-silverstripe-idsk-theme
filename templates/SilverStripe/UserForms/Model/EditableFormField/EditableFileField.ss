<input type="hidden" name="MAX_FILE_SIZE" value="$MaxFileSize" />
<input $addExtraClass('govuk-file-upload').AttributesHTML<% if $RightTitle || $Message %> aria-describedby="<% if $RightTitle %>{$ReferenceID}-hint<% end_if %> <% if $Message %>{$ReferenceID}-error<% end_if %>"<% end_if %>/>
