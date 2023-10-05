<%--
	optional parameters:
		- IsService: boolean (default: false)
		- FooterElementalArea: string (default: empty)
--%>
<div data-module="idsk-footer-extended">
	<footer class="idsk-footer-extended idsk-footer-extended--up-button-enabled">
		<div class="idsk-footer-extended-up-button-div" id="footer-extended-up-button">
			<div class="govuk-width-container">
				<div class="govuk-grid-column-full">
					<a href="#" title="Späť na vrch stránky" role="button" draggable="false" class="idsk-button idsk-button--start idsk-footer-extended-up-button-a" data-module="idsk-button">
						<svg class="idsk-footer-extended__up-button-svg" width="20" height="15" viewbox="0 0 20 15" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path fill-rule="evenodd" clip-rule="evenodd" d="M10 5.5984L0 15L0 9.40174L10 0L10 5.5984Z" fill="white"/>
							<path opacity="0.5" fill-rule="evenodd" clip-rule="evenodd" d="M20 9.4016L10 0V5.59826L20 15V9.4016Z" fill="white"/>
						</svg>
						Hore
					</a>
				</div>
			</div>
		</div>
		$FooterElementalArea
		<div class="idsk-footer-extended-main-content">
			<div class="govuk-width-container">
				<div class="govuk-grid-column-full">
					<div class="idsk-footer-extended-description-panel">
						<% if not $IsService %>
							<% include Rasstislav/IdSk/Includes/Components/Footer/Navigation %>
						<% end_if %>
						<div class="govuk-grid-column-two-thirds idsk-footer-extended-info-links">
							<p class="idsk-footer-extended-frame">Vytvorené v súlade s
								<a href="https://idsk.gov.sk/" title="Jednotným dizajn manuálom elektronických služieb." target="_blank" rel="noopener noreferrer" class="govuk-link">
									Jednotným dizajn manuálom elektronických služieb.
								</a>
							</p>
							<p class="idsk-footer-extended-frame">
								Prevádzkovateľom služby je {$SiteConfig.Title}.
							</p>
						</div>
						<div class="govuk-grid-column-one-third idsk-footer-extended-logo-box">
							<% with $SiteConfig %>
								<a href="$Top.CurrentLocale.BaseURL" title="domov">
									<img src="$FooterLogo.Link" alt="$FooterLogo.Title" class="idsk-footer-extended-logo">
								</a>
							<% end_with %>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>
