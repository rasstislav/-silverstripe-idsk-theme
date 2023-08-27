<%--
	optional parameters:
		- Title: string (default: empty)
--%>
<div class="idsk-timeline__content govuk-body">
	<div class="idsk-timeline__left-side"></div>
	<div class="idsk-timeline__middle">
		<span class="idsk-timeline__vertical-line"></span>
	</div>
	<% if $Title %>
		<div class="idsk-timeline__content__date-line">
			<span class="idsk-timeline__content__text">$Title</span>
		</div>
	<% end_if %>
</div>
