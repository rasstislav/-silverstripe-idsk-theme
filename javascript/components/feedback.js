function sendFeedbackPageUsefulness(output) {
  const xhr = new XMLHttpRequest();

  xhr.addEventListener('error', function(event) { });
  xhr.open('POST', window.location.origin + '/api/feedback/page-usefulness');
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
  xhr.send(`output=${output}`);
}

function sendFeedbackPageIssue(output) {
  const xhr = new XMLHttpRequest();

  xhr.addEventListener('error', function(event) { });
  xhr.open('POST', window.location.origin + '/api/feedback/page-issue');
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
  xhr.send(`output=${output}`);
}

var pageUsefulnessFeedbackYesButton = document.getElementById('idsk-footer-extended-feedback-yes-button');

if (pageUsefulnessFeedbackYesButton) {
  pageUsefulnessFeedbackYesButton.addEventListener('click', function (event) {
    sendFeedbackPageUsefulness('yes');
  });
}

var pageUsefulnessFeedbackNoButton = document.getElementById('idsk-footer-extended-feedback-no-button');

if (pageUsefulnessFeedbackNoButton) {
  pageUsefulnessFeedbackNoButton.addEventListener('click', function (event) {
    sendFeedbackPageUsefulness('no');
  });
}

var pageUsefulnessFeedbackCloseButton = document.getElementById('idsk-footer-extended-close-help-form-button');

if (pageUsefulnessFeedbackCloseButton) {
  pageUsefulnessFeedbackCloseButton.addEventListener('click', function (event) {
    sendFeedbackPageUsefulness('close');
  });
}

var pageIssueFeedbackButton = document.getElementById('idsk-footer-extended-error-button');

if (pageIssueFeedbackButton) {
  pageIssueFeedbackButton.addEventListener('click', function (event) {
    sendFeedbackPageIssue('yes');
  });
}

var pageIssueFeedbackCloseButton = document.getElementById('idsk-footer-extended-close-error-form-button');

if (pageIssueFeedbackCloseButton) {
  pageIssueFeedbackCloseButton.addEventListener('click', function (event) {
    sendFeedbackPageIssue('close');
  });
}
