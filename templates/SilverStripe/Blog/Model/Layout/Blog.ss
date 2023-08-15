<h1 class="govuk-heading-l">
	<% if $ArchiveYear %>
		<%t SilverStripe\\Blog\\Model\\Blog.Archive 'Archive' %>:
		<% if $ArchiveDay %>
			$ArchiveDate.Date
		<% else_if $ArchiveMonth %>
			$ArchiveDate.format('MM/y')
		<% else %>
			$ArchiveDate.format('y')
		<% end_if %>
	<% else_if $CurrentTag %>
		<%t SilverStripe\\Blog\\Model\\Blog.Tag 'Tag' %>: $CurrentTag.Title
	<% else_if $CurrentCategory %>
		<%t SilverStripe\\Blog\\Model\\Blog.Category 'Category' %>: $CurrentCategory.Title
	<% else %>
		$Title
	<% end_if %>
</h1>
<% if $PaginatedList.Exists %>
	<% loop $PaginatedList %>
		<% include SilverStripe/Blog/PostSummary %>
	<% end_loop %>
	<% with $PaginatedList %>
		<% include Rasstislav/IdSk/Pagination %>
	<% end_with %>
<% else %>
	<p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
<% end_if %>
