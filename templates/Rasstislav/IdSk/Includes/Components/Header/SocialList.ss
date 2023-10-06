<% with $SiteConfig %>
	<ul class="idsk-header-extended__social-list">
		<% if $FacebookURL %>
			<li class="idsk-header-extended__social-item">
				<a href="#" target="_blank" title="Facebook" class="idsk-header-extended__social-link">
					<span class="govuk-visually-hidden">Facebook</span>
					<i class="fab fa-facebook-f" aria-hidden="true"></i>
				</a>
			</li>
		<% end_if %>
		<% if $LinkedinURL %>
			<li class="idsk-header-extended__social-item">
				<a href="#" target="_blank" title="Linkedin" class="idsk-header-extended__social-link">
					<span class="govuk-visually-hidden">Linkedin</span>
					<i class="fab fa-linkedin-in" aria-hidden="true"></i>
				</a>
			</li>
		<% end_if %>
		<% if $TwitterURL %>
			<li class="idsk-header-extended__social-item">
				<a href="#" target="_blank" title="Twitter" class="idsk-header-extended__social-link">
					<span class="govuk-visually-hidden">Twitter</span>
					<i class="fab fa-twitter" aria-hidden="true"></i>
				</a>
			</li>
		<% end_if %>
		<% if $InstagramURL %>
			<li class="idsk-header-extended__social-item">
				<a href="#" target="_blank" title="Instagram" class="idsk-header-extended__social-link">
					<span class="govuk-visually-hidden">Instagram</span>
					<i class="fab fa-instagram" aria-hidden="true"></i>
				</a>
			</li>
		<% end_if %>
	</ul>
<% end_with %>
