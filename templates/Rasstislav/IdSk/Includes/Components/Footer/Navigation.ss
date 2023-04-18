<% if $FooterMenu %>
	<div class="idsk-footer-extended-meta-item">
		<ul class="idsk-footer-extended-inline-list">
			<% loop $FooterMenu %>
				<li class="idsk-footer-extended-inline-list-item $LinkingMode">
					<a href="$Link" title="$Title.XML" class="govuk-link">
						$MenuTitle.XML
					</a>
				</li>
			<% end_loop %>
		</ul>
	</div>
<% end_if %>
