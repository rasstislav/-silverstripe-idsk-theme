<%--
	required parameters:
		- Title: string
		- Link: string
		- Image: string
		- Description: string

	optional parameters:
		- IsHtmlDescription: boolean (default: true)
--%>
<div class="idsk-card idsk-card-secondary">
	<a href="$Link" title="$Title">
		<% if $Image %>
			$Image.setAttribute('aria-hidden', 'true').setAttribute('class', 'idsk-card-img idsk-card-img-secondary')
		<% else %>
			<img src="$ThemeDir/images/image-placeholder.jpg" alt="$Title" aria-hidden="true" class="idsk-card-img idsk-card-img-secondary">
		<% end_if %>
	</a>
	<div class="idsk-card-content idsk-card-content-secondary">
		<div class="idsk-card-meta-container">
			<% spaceless %>
				<span class="idsk-card-meta idsk-card-meta-date">
					<a href="$MonthlyArchiveLink" title="Pridané dňa: $PublishDate.Date" class="govuk-link">$PublishDate.Date</a>
				</span>
				<% if $Categories.exists || $Tags.exists %>
					<% loop $Categories %>
						<span class="idsk-card-meta idsk-card-meta-tag">
							<a href="$Link" title="$Title" class="govuk-link">$Title</a>
						</span>
					<% end_loop %>
					<% loop $Tags %>
						<span class="idsk-card-meta idsk-card-meta-tag">
							<a href="$Link" title="$Title" class="govuk-link">$Title</a>
						</span>
					<% end_loop %>
				<% end_if %>
			<% end_spaceless %>
		</div>
		<div class="idsk-heading idsk-heading-secondary">
			<a href="$Link" title="$Title" class="idsk-card-title govuk-link">$Title</a>
		</div>
		<div class="idsk-body idsk-body-secondary">
			<% if $IsHtmlDescription != false %>
				$Description
			<% else %>
				<p>$Description</p>
			<% end_if %>
		</div>
	</div>
</div>
