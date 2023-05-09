<%--
	optional parameters:
		- IsService: boolean (default: false)
 --%>
<div data-module="idsk-footer-extended">
    <footer class="idsk-footer-extended">
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
                            <a href="$BaseHref" title="domov">
                                <img src="$ThemeDir/images/logo_footer.svg" alt="$SiteConfig.Title" class="idsk-footer-extended-logo">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>
