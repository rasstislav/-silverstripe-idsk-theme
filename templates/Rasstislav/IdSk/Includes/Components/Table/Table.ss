<%--
	optional parameters:
		- HeadingTitleComponent: string (default: empty) || HeadingTitle: string (default: empty)
		- HeadingBody: string (default: empty)
		- TableFilterForm: string (default: empty)
		- TableHeader: string (default: empty)
		- TableBodyRows: List || TableBody: string || TableEmptyMessage: string
		- TableExtraClass: string (default: empty)
		- Pagination: string (default: empty)
		- FooterPrintButton: boolean (default: false)
		- FooterButtons: string (default: empty)
		- FooterSource: string (default: empty)
--%>
<div data-module="idsk-table">
	<% include Rasstislav/IdSk/Includes/Components/Table/TableHeading TitleComponent=$HeadingTitleComponent, Title=$HeadingTitle, Body=$HeadingBody %>
	$TableFilterForm
	<% include Rasstislav/IdSk/Includes/Components/Table/TableBody Header=$TableHeader, BodyRows=$TableBodyRows, Body=$TableBody, EmptyMessage=$TableEmptyMessage, ExtraClass=$TableExtraClass %>
	$Pagination
	<% include Rasstislav/IdSk/Includes/Components/Table/TableFooter PrintButton=$FooterPrintButton, Buttons=$FooterButtons, Source=$FooterSource %>
</div>

