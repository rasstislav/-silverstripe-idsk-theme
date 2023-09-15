window.addEventListener('load', (event) => {
  const tableFilterTogglers = document.querySelectorAll('[data-module="idsk-table-filter"] .idsk-filter-menu__toggle');

  if (tableFilterTogglers.length) {
    for (let i = 0; i < tableFilterTogglers.length; i++) {
      let toggler = tableFilterTogglers[i];
      let togglerName = toggler.dataset.sectionId;
      let storedExpandedState = window.localStorage.getItem('expanded-'+togglerName);
      let parent = toggler.parentNode;
      let isExpanded = parent.classList.contains('idsk-table-filter--expanded');

      if (storedExpandedState === 'true') {
        if (!isExpanded) {
          toggler.click();
        }
      } else if (storedExpandedState === 'false') {
        if (isExpanded) {
          toggler.click();
        }
      } else if (parent.dataset.idskTableFilterExpand === 'true') {
        if (!isExpanded) {
          toggler.click();
        }
      }

      toggler.addEventListener('click', () => {
        window.localStorage.setItem('expanded-'+togglerName, parent.classList.contains('idsk-table-filter--expanded'));
      });
    }
  }

  const tableFiltersToExpand = document.querySelectorAll('[data-module="idsk-table-filter"][data-idsk-table-filter-expand-sections="true"]');

  if (tableFiltersToExpand.length) {
    for (let i = 0; i < tableFiltersToExpand.length; i++) {
      setTimeout(() => {
        delete tableFiltersToExpand[i].dataset.idskTableFilterExpandSections;
      }, 1);
    }
  }

  const tableFilters = document.querySelectorAll('[data-module="idsk-table-filter"]');

  if (tableFilters.length) {
    for (let i = 0; i < tableFilters.length; i++) {
      let tableFilter = tableFilters[i];

      if (tableFilter.dataset.idskTableFilterEnableSubmission === 'true') {
        let filterForm = tableFilter.querySelector('.idsk-filter-form');

        if (filterForm) {
          let submitListener = filterForm.getEventListeners('submit')[0].listener;

          // remove autoset active filters after submit
          filterForm.removeEventListener('submit', submitListener);

          // set active filters
          submitListener(new SubmitEvent('submit'));

          let enableEmptySubmission = tableFilter.dataset.idskTableFilterEnableEmptySubmission === 'true';
          let submitButton = filterForm.querySelector('.submit-table-filter');
          let fields = filterForm.querySelectorAll('.govuk-input, .govuk-select');

          if (fields.length) {
            for (let k = 0; k < fields.length; k++) {
              let field = fields[k];

              // set count of active filters
              field.dispatchEvent(new Event('keyup'));

              if (enableEmptySubmission) {
                // enable submit button after keyup
                field.addEventListener('keyup', () => {
                  submitButton.disabled = false;
                });
              }
            }
          }

          if (enableEmptySubmission) {
            // enable submit button
            submitButton.disabled = false;
          }

          let filters = tableFilter.querySelectorAll('.idsk-table-filter__active-filters .idsk-table-filter__content .idsk-table-filter__parameter .idsk-table-filter__parameter-remove');

          for (let k = 0; k < filters.length; k++) {
            filters[k].addEventListener('click', () => {
              filterForm.submit();
            });
          }

          let clearAllButton = tableFilter.querySelector('.idsk-table-filter__active-filters .idsk-table-filter__content .govuk-link');

          if (clearAllButton) {
            clearAllButton.addEventListener('click', () => {
              filterForm.submit();
            });
          }
        }
      }
    }
  }
});
