<%--
	required parameters:
		- Link: string
		- Title: string

	optional parameters:
		- ButtonID: string (default: empty)
		- TargetBlank: boolean (default: false)
		- StartButton: boolean (default: false)
		- Variant: string (default: empty)
		- ExtraClass: string (default: empty)
--%>
<a<% if $ButtonID %> id="$ButtonID"<% end_if %> href="$Link" title="$Title" role="button" draggable="false" data-module="idsk-button"<% if $TargetBlank %> target="_blank" rel="noreferrer noopener"<% end_if %> class="idsk-button<% if $Variant %> $Variant<% end_if %><% if $StartButton %> idsk-button--start<% end_if %><% if $ExtraClass %> $ExtraClass<% end_if %>">
	$Title
	<% if $StartButton %>
		<% include Rasstislav/IdSk/Includes/Icons/ButtonStartIcon %>
	<% end_if %>
</a>
