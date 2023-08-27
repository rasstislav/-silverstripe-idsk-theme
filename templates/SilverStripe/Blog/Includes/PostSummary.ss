<% if $IsFirst %>
	<div class="govuk-grid-row">
		<div class="govuk-grid-column-full">
			<% if $Summary %>
				<% include Rasstislav/IdSk/Includes/Components/Card/Hero Image=$FeaturedImage.Crop(1220, 730), Description=$Summary %>
			<% else %>
				<% include Rasstislav/IdSk/Includes/Components/Card/Hero Image=$FeaturedImage.Crop(1220, 730), Description=$Excerpt, IsHtmlDescription=false %>
			<% end_if %>
		</div>
<% else %>
	<div class="govuk-grid-column-one-third">
		<% if $Summary %>
			<% include Rasstislav/IdSk/Includes/Components/Card/Secondary Image=$FeaturedImage.Crop(1220, 730), Description=$Summary %>
		<% else %>
			<% include Rasstislav/IdSk/Includes/Components/Card/Secondary Image=$FeaturedImage.Crop(1220, 730), Description=$Excerpt, IsHtmlDescription=false %>
		<% end_if %>
	</div>
<% end_if %>
<% if $IsLast %>
	</div>
<% else_if $MultipleOf(3, 0) %>
	</div>
	<div class="govuk-grid-row">
<% end_if %>
