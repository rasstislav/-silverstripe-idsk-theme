<% if $Locales %>
	<div class="idsk-header-web__brand-language">
		<button class="idsk-header-web__brand-language-button" aria-label="Rozbaliť jazykové menu" aria-expanded="false" data-text-for-hide="Skryť jazykové menu" data-text-for-show="Rozbaliť jazykové menu">
			$CurrentLocaleObject.Title.XML
			<span class="idsk-header-web__link-arrow"></span>
		</button>
		<% include LocaleMenu %>
	</div>
<% end_if %>
