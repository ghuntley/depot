$(document).ready(function() {
    $('body').keypress(function(event) {
        if (event.which == 101) {
            event.preventDefault();
            window.location = $('.github-corner')[0].href;
        }
    });
});
