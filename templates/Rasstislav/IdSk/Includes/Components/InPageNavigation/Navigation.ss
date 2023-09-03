<%--
	required parameters:
		- Items: List
--%>
<% loop $Items %>
	<li class="idsk-in-page-navigation__list-item">
		<a href="#$Anchor" class="idsk-in-page-navigation__link">
			<span class="idsk-in-page-navigation__link-number">$Pos(2).</span> <span class="idsk-in-page-navigation__link-title">$Title</span>
		</a>
	</li>
<% end_loop %>
