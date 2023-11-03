<form $setAttribute('data-module', 'idsk-search-component').addExtraClass('idsk-search-component').FormAttributes>
	<% loop $Fields %>
		$Me.addExtraClass('idsk-search-component__input').setInputType('search')
	<% end_loop %>
	<% loop $Actions %>
		<button $addExtraClass('idsk-button idsk-search-component__button').getAttributesHTML('name')>
			<% include Rasstislav/IdSk/Includes/Icons/Search %>
			<span class="govuk-visually-hidden">$Title.XML</span>
		</button>
	<% end_loop %>
</form>
