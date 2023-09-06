<%--
	required parameters:
		- Title: string
		- Link: string

	optional parameters:
		- Subtitle: string (default: empty)
		- HideMobile: boolean (default: false)
		- OneColumnHide: boolean (default: false)
		- TwoColumnsHide: boolean (default: false)
		- LinkTitle: string (default: empty)
		- TargetBlank: boolean (default: false)
--%>
<div class="idsk-crossroad__item<% if $HideMobile %> idsk-crossroad__item--two-columns-hide-mobile<% end_if %><% if $OneColumnHide %> idsk-crossroad__item--one-column-hide<% end_if %><% if $TwoColumnsHide %> idsk-crossroad__item--two-columns-hide<% end_if %>">
	<a href="$Link"<% if $LinkTitle %> title="$LinkTitle"<% end_if %> aria-hidden="false"<% if $TargetBlank %> target="_blank" rel="noreferrer noopener"<% end_if %> class="govuk-link idsk-crossroad-title">$Title</a>
	<% if $Subtitle %>
		<p class="idsk-crossroad-subtitle" aria-hidden="false">$Subtitle</p>
	<% end_if %>
	<hr class="idsk-crossroad-line" aria-hidden="true"/>
</div>
