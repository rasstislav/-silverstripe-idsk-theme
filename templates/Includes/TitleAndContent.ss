<% if $BackLink %>
	$BackLink.addExtraClass('govuk-back-link')
<% end_if %>
<% if $ShowTitle %>
	<h1 class="govuk-heading-xl">$Title</h1>
<% end_if %>
$BeforeContent
<% if $ElementalArea %>
	$ElementalArea
<% else %>
	$Content
<% end_if %>
$AfterContent
