<div data-module="idsk-table-filter" data-idsk-table-filter-expand-sections="true" class="idsk-table-filter">
	<div<% if $isExpanded || $ExpandFormOnEmptyData && $isEmpty %> data-idsk-table-filter-expand="true"<% end_if %> class="idsk-table-filter__panel idsk-table-filter__inputs">
		<div class="idsk-table-filter__title govuk-heading-m">$Legend</div>
		<button class="govuk-body govuk-link idsk-filter-menu__toggle"
			tabindex="0"
			data-open-text="Rozbaliť obsah filtra"
			data-close-text="Zbaliť obsah filtra"
			data-category-name="Obsah filtra"
			data-section-id="$Name-Obsahfiltra"
			aria-label="Rozbaliť obsah filtra"
			type="button"
		>
			Rozbaliť obsah filtra
		</button>
		<form $addExtraClass('idsk-table-filter__content idsk-filter-form').AttributesHTML>
			<% if $Message %>
				<p id="{$FormName}_error" class="message $MessageType">$Message</p>
			<% else %>
				<p id="{$FormName}_error" class="message $MessageType" style="display: none"></p>
			<% end_if %>
			<% loop $Fields %>
				$FieldHolder
			<% end_loop %>
			<% if $Actions %>
				<% loop $Actions %>
					$Field
				<% end_loop %>
			<% end_if %>
		</form>
	</div>
	<div class="idsk-table-filter__panel idsk-table-filter__active-filters idsk-table-filter__active-filters__hide idsk-table-filter--expanded"
		data-remove-filter="Zrušiť filter"
		data-remove-all-filters="Zrušiť všetko"
	>
		<div class="govuk-body idsk-table-filter__title">Aktívny filter</div>
		<button class="govuk-body govuk-link idsk-filter-menu__toggle"
			  tabindex="0"
			  data-open-text="Rozbaliť aktívny filter"
			  data-close-text="Zbaliť aktívny filter"
			  data-category-name="Aktívny filter"
			  data-section-id="$Name-Aktivnyfilter"
			  aria-label="Zbaliť aktívny filter"
			  type="button"
		>
			Zbaliť aktívny filter
		</button>
		<div class="govuk-clearfix idsk-table-filter__content"></div>
	</div>
</div>
