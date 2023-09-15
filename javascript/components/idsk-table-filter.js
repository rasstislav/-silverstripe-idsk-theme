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
});
