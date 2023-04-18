<%--
	optional parameters:
		- IsService: boolean (default: false)
 --%>
<header data-module="idsk-header-web" role="banner" class="idsk-header-web">
    <div class="idsk-header-web__scrolling-wrapper">
        <% include Rasstislav/IdSk/Includes/Components/Header/Tricolor %>
        <% include Rasstislav/IdSk/Includes/Components/Header/Brand %>
        <% include Rasstislav/IdSk/Includes/Components/Header/Main IsService=$IsService %>
        <% include Rasstislav/IdSk/Includes/Components/Header/Navigation IsService=$IsService %>
    </div>
</header>
