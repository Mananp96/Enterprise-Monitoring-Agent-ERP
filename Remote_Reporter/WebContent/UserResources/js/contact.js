(function ($) {
    'use strict';
    $(function () {
        var contactForm = $('#contact-form');
        contactForm.validator();
        contactForm.on('submit', function (e) {
            e.preventDefault();
            $.ajax({
                type: 'POST',
                url: 'include/contact.php',
                data: $(this).serialize(),
                success: function (data) {
                    var messageAlert = 'alert-' + data.type;
                    var messageText = data.message;
                    var alertBox = '<div class="alert ' + messageAlert + ' alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>' + messageText + '</div>';
                    if (messageAlert && messageText) {
                        contactForm.find('.messages').html(alertBox);
                        contactForm[0].reset();
                    }
                }
            });
        })
    });
})(jQuery);




