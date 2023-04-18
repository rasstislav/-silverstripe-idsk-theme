<nav class="idsk-header-web__nav-bar--buttons">
	<ul class="idsk-header-web__nav-list" aria-label="Hlavná navigácia">
		<% loop $Menu(1) %>
			<li class="idsk-header-web__nav-list-item $LinkingMode">
				<a href="<% if $Children %>#<% else %>$Link<% end_if %>" title="$MenuTitle.XML"<% if $Children %> aria-label="Rozbaliť $MenuTitle.XML menu" aria-expanded="false" data-text-for-hide="Zavrieť $MenuTitle.XML menu" data-text-for-show="Rozbaliť $MenuTitle.XML menu"<% end_if %> class="govuk-link idsk-header-web__nav-list-item-link">
					$MenuTitle.XML.LimitCharacters(50)
					<% if $Children %>
						<div class="idsk-header-web__link-arrow"></div>
						<div class="idsk-header-web__link-arrow-mobile"></div>
					<% end_if %>
				</a>
				<% if $Children %>
					<% if $Children.Count > 5 %>
						<div class="idsk-header-web__nav-submenu">
							<div class="govuk-width-container">
								<div class="govuk-grid-row">
									<ul class="idsk-header-web__nav-submenu-list"  aria-label="Vnútorná navigácia">
										<% loop $Children %>
											<li class="idsk-header-web__nav-submenu-list-item">
												<a href="$Link" title="$MenuTitle.XML" class="govuk-link idsk-header-web__nav-submenu-list-item-link">
													<span>$MenuTitle.XML.LimitCharacters(50)</span>
												</a>
											</li>
										<% end_loop %>
									</ul>
								</div>
							</div>
						</div>
					<% else %>
						<div class="idsk-header-web__nav-submenulite">
							<ul class="idsk-header-web__nav-submenulite-list" aria-label="Vnútorná navigácia">
								<% loop $Children %>
									<li class="idsk-header-web__nav-submenulite-list-item">
										<a href="$Link" title="$MenuTitle.XML" class="govuk-link idsk-header-web__nav-submenulite-list-item-link">
											<span>$MenuTitle.XML.LimitCharacters(50)</span>
										</a>
									</li>
								<% end_loop %>
							</ul>
						</div>
					<% end_if %>
				<% end_if %>
			</li>
		<% end_loop %>
	</ul>
</nav>
