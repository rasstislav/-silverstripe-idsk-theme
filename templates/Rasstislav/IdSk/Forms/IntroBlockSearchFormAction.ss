<% if $UseButtonTag %>
	<button $addExtraClass('idsk-button idsk-search-component__button').AttributesHTML>
		<% if $ButtonContent %>
			$ButtonContent
		<% else %>
			<% include Rasstislav/IdSk/Includes/Icons/Search %>
			<span class="govuk-visually-hidden">$Title.XML</span>
		<% end_if %>
	</button>
<% else %>
	<input $addExtraClass('idsk-button idsk-search-component__button').AttributesHTML />
<% end_if %>

