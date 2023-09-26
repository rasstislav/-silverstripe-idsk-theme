<%--
	required parameters:
		- Navigation: string || NavigationItems: List

	optional parameters:
		- IncludeIntroAttr: boolean (default: true)
		- BeforeContent: string (default: empty)
		- AfterContent: string (default: empty)
		- ContentExtraClass: string (default: empty)
--%>
<div class="govuk-grid-row">
	$BeforeContent
	<div data-module="idsk-in-page-navigation" class="idsk-in-page-navigation govuk-grid-column-one-quarter">
		<div class="idsk-in-page-navigation-wrapper">
			<div class="idsk-in-page-navigation__title">Obsah</div>
			<div class="idsk-in-page-navigation__link-panel">
				<button class="idsk-in-page-navigation__link-panel-button">Úvod</button>
			</div>
			<ul class="idsk-in-page-navigation__list">
				<li class="idsk-in-page-navigation__list-item idsk-in-page-navigation__list-item--active">
					<a href="#uvod-$ID" class="idsk-in-page-navigation__link">
						<span class="idsk-in-page-navigation__link-number">1.</span> <span class="idsk-in-page-navigation__link-title">Úvod</span>
					</a>
				</li>
				<% if $Navigation %>
					$Navigation
				<% else_if $NavigationItems %>
					<% include Rasstislav/IdSk/Includes/Components/InPageNavigation/Navigation Items=$NavigationItems %>
				<% end_if %>
			</ul>
		</div>
	</div>
	<div<% if $IncludeIntroAttr != false %> id="uvod-$ID"<% end_if %> class="govuk-grid-column-three-quarters-from-desktop<% if $ContentExtraClass %> $ContentExtraClass<% end_if %>">
		$Content
		$AfterContent
	</div>
</div>
