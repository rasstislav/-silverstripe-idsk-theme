<% with $SiteConfig %>
	<% if $CookiesBanner %>
		<% require javascript('rasstislav/silverstripe-idsk: client/dist/javascript/cookies/banner.js') %>
		<div class="idsk-cookie-banner" data-nosnippet role="region" aria-label="$CookiesBannerHeading">
			<div class="idsk-cookie-banner__message govuk-width-container">
				<div class="govuk-grid-row">
					<div class="govuk-grid-column-two-thirds">
						<span class="idsk-cookie-banner__heading govuk-heading-m">$CookiesBannerHeading</span>
						<div class="idsk-cookie-banner__content">$CookiesBannerText</div>
					</div>
				</div>
				<div class="idsk-button-group">
					<% if $CookiesBannerButtons %>
						<button value="accept" type="button" name="cookies" data-module="idsk-button" class="idsk-button js-cookies-button-accept">
							$CookiesBannerAcceptButtonTitle
						</button>
						<button value="reject" type="button" name="cookies" data-module="idsk-button" class="idsk-button js-cookies-button-reject">
							$CookiesBannerRejectButtonTitle
						</button>
					<% end_if %>
					<a href="$CookiesPage.Link" title="Nastavenia cookies" class="govuk-link">Nastavenia cookies</a>
				</div>
			</div>
			<div class="idsk-cookie-banner__message govuk-width-container js-cookie-banner-accepted" hidden>
				<div class="govuk-grid-row">
					<div class="govuk-grid-column-two-thirds">
						<div class="idsk-cookie-banner__content">$CookiesBannerAccepted</div>
					</div>
				</div>
				<div class="idsk-button-group">
					<a href="#" role="button" draggable="false" data-module="idsk-button" class="idsk-button js-cookies-button-accepted-hide">
						Skryť správu
					</a>
				</div>
			</div>
			<div class="idsk-cookie-banner__message govuk-width-container js-cookie-banner-rejected" hidden>
				<div class="govuk-grid-row">
					<div class="govuk-grid-column-two-thirds">
						<div class="idsk-cookie-banner__content">$CookiesBannerRejected</div>
					</div>
				</div>
				<div class="idsk-button-group">
					<a href="#" role="button" draggable="false" data-module="idsk-button" class="idsk-button js-cookies-button-rejected-hide">
						Skryť správu
					</a>
				</div>
			</div>
		</div>
	<% end_if %>
<% end_with %>
