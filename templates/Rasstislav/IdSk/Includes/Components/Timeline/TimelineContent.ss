<%--
	required parameters:
		- Date: string

	optional parameters:
		- Time: string (default: empty)
		- Content: string (default: empty)
--%>
<div class="idsk-timeline__content">
	<div class="idsk-timeline__left-side">
		<span class="govuk-body-m">$Date</span>
		<% if $Time %>
			<br>
			<span class="idsk-timeline__content__time">$Time</span>
		<% end_if %>
	</div>
	<div class="idsk-timeline__middle">
		<span class="idsk-timeline__vertical-line--circle"></span>
	</div>
	<div class="idsk-timeline__content__caption">
		$Content
	</div>
</div>
