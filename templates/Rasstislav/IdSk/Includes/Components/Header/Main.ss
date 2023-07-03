<%--
	optional parameters:
		- IsService: boolean (default: false)
		- AddLoginButton: boolean (default: false)
 --%>
<div class="idsk-header-web__main">
	<div class="govuk-width-container">
		<div class="govuk-grid-row">
			<div class="govuk-grid-column-full govuk-grid-column-one-third-from-desktop">
				<div class="idsk-header-web__main-headline">
					<a href="$BaseHref" title="Odkaz na úvodnú stránku" rel="home">
						<img src="$ThemeDir/images/logo.svg" alt="$SiteConfig.Title" class="idsk-header-web__main-headline-logo">
					</a>
					<% if not $IsService %>
						<button aria-label="Rozbaliť menu" aria-expanded="false" data-text-for-show="Rozbaliť menu" data-text-for-hide="Zavrieť menu" data-text-for-close="Zavrieť" class="idsk-button idsk-header-web__main-headline-menu-button">
							Menu
							<span class="idsk-header-web__menu-open"></span>
							<span class="idsk-header-web__menu-close"></span>
						</button>
					<% else_if $AddLoginButton %>
						<button aria-label="Rozbaliť menu" aria-expanded="false" data-text-for-show="Rozbaliť menu" data-text-for-hide="Zavrieť menu" class="idsk-button idsk-header-web__main-headline-menu-button idsk-header-web__main-headline-menu-button-service">
							<img src="$ThemeDir/images/header-web/profile.svg" alt="Electronic service menu icon">
							<span class="idsk-header-web__menu-close"></span>
						</button>
					<% end_if %>
				</div>
			</div>
			<div class="govuk-grid-column-full govuk-grid-column-two-thirds">
				<div class="idsk-header-web__main-action">
					<% if not $IsService %>
						$SearchForm.addExtraClass(idsk-header-web__main-action-search)
					<% end_if %>
					<% if $AddLoginButton %>
						<div class="idsk-header-web__main--buttons">
							<% include Rasstislav/IdSk/Includes/Components/Header/Login %>
						</div>
					<% end_if %>
				</div>
			</div>
		</div>
	</div>
</div>
