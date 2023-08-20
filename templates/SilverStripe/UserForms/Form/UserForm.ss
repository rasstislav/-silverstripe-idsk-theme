<form $setAttribute('novalidate', 'novalidate').getAttributesHTML('data-livevalidation', 'data-toperrors')>

<% include SilverStripe\\UserForms\\Form\\UserFormProgress %>
<% include SilverStripe\\UserForms\\Form\\UserFormStepErrors %>

<% if $DisplayErrorMessagesAtTop && not $isValid %>
	<div data-module="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabindex="-1" class="govuk-error-summary optional-extra-class">
		<h2 id="error-summary-title" class="govuk-error-summary__title">
			Formulár sa nepodarilo odoslať
		</h2>
		<div class="govuk-error-summary__body">
			<p>
				Je potrebné správne vyplniť všetky polia.
			</p>
			<ul class="govuk-list govuk-error-summary__list">
				<% loop $Fields %>
					<% loop $Children %>
						<% if $Message %>
							<li>
								<a href="#$ReferenceID">$Message</a>
							</li>
						<% end_if %>
					<% end_loop %>
				<% end_loop %>
			</ul>
		</div>
	</div>
<% end_if %>

<% if $Message %>
	<p id="{$FormName}_error" class="message $MessageType">$Message</p>
<% else %>
	<p id="{$FormName}_error" class="message $MessageType" aria-hidden="true" style="display: none;"></p>
<% end_if %>

<% if $Legend %>
	<fieldset>
		<legend>$Legend</legend>
		<% include SilverStripe\\UserForms\\Form\\UserFormFields %>
	</fieldset>
<% else %>
	<div class="userform-fields">
		<% include SilverStripe\\UserForms\\Form\\UserFormFields %>
	</div>
<% end_if %>

<% if $Steps.Count > 1 %>
	<% include SilverStripe\\UserForms\\Form\\UserFormStepNav %>
<% else %>
	<% include SilverStripe\\UserForms\\Form\\UserFormActionNav %>
<% end_if %>

</form>
