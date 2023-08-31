<ul class="idsk-header-web__brand-language-list">
	<% loop $Locales %>
		<li class="idsk-header-web__brand-language-list-item">
			<a href="$Link.ATT" title="$Title.XML"<% if $LinkingMode != 'invalid' %> rel="alternate" hreflang="$HrefLang"<% end_if %> class="govuk-link idsk-header-web__brand-language-list-item-link<% if $LinkingMode == 'current' %> idsk-header-web__brand-language-list-item-link--selected<% end_if %>">
				$Title.XML
			</a>
		</li>
	<% end_loop %>
</ul>
