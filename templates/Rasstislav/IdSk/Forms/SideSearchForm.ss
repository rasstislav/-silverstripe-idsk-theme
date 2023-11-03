<form $setAttribute('data-module', 'idsk-search-component').addExtraClass('idsk-search-component idsk-search-component--small').FormAttributes>
	<% loop $Fields %>
		$Me.addExtraClass('idsk-search-component__input idsk-search-component__input--small').setInputType('search')
	<% end_loop %>
	<% loop $Actions %>
		<button $addExtraClass('idsk-button idsk-search-component__button idsk-search-component__button--small').getAttributesHTML('name')>
			<% include Rasstislav/IdSk/Includes/Icons/Search %>
			<span class="govuk-visually-hidden">$Title.XML</span>
		</button>
	<% end_loop %>
</form>
