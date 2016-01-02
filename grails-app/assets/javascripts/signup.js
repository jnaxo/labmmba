/**
 * Created by nacho on 11/4/15.
 */
$(document).ready(function () {
    var err = false;
    var name_input;
    var email_input;

    $(window).keydown(function (event) {
        if (event.keyCode == 13) {
            event.preventDefault();
            return false;
        }
    });

    /* next */
    function continue1() {
        $('#signup-step1').hide("fast", function () {
            hide_err();
            $('#signup-step2').show('fast');
            $('#signup-progress').attr('aria-valuenow', 60);
            $('#signup-progress').width('60%');
        });
    }

    $('#signup-continue2').off().on('click', function () {
        $('#signup-step2').hide("fast", function () {
            hide_err();
            $('#signup-step3').show('fast');
            $('#signup-progress').attr('aria-valuenow', 90);
            $('#signup-progress').width('90%');
        });
    });

    $('#signup-continue3').off().on('click', function () {
        $('#signup-step3').hide("fast", function () {
            hide_err();
            load_confirm();
            $('#signup-confirm').show('fast');
            $('#signup-progress').attr('aria-valuenow', 100);
            $('#signup-progress').width('100%');
        });
    });

    /* back */
    $('#signup-back2').on('click', function () {
        $('#label-name').removeClass('has-error');
        $('#label-email').removeClass('has-error');
        $('#label-password').removeClass('has-error');

        $('#signup-step2').hide("fast", function () {
            $('#signup-step1').show('fast');
            $('#signup-progress').attr('aria-valuenow', 30);
            $('#signup-progress').width('30%');
        });
    });
    $('#signup-back3').on('click', function () {
        $('#signup-step3').hide("fast", function () {
            $('#signup-step2').show('fast');
            $('#signup-progress').attr('aria-valuenow', 60);
            $('#signup-progress').width('60%');
        });
    });
    $('#signup-back4').on('click', function () {
        $('#signup-confirm').hide("fast", function () {
            $('#signup-step3').show('fast');
            $('#signup-progress').attr('aria-valuenow', 90);
            $('#signup-progress').width('90%');
        });
    });

    /* postgraduate studies */
    $('#add-postgraduate-btn').off().on('click', function () {
        var studies = $('#labmmba-poststudies').val();
        var college = $('#labmmba-postcollege').val();
        var year = $('#labmmba-postyear').val();
        var ilabel = "<li class='list-group-item'><strong>";
        var mlabel = "</strong> ";
        var elabel = "</li>";
        var silabel = "<br><small>";
        var selabel = "</small>";

        $('#postgraduate-list').append(ilabel + studies + mlabel + silabel + college + selabel + elabel);
        $('#labmmba-poststudies').val('');
        $('#labmmba-postcollege').val('');
        $('#labmmba-postyear').val('');

    });

    /* required */
    $('#signup-continue1').off().on('click', function () {
        name_input = $('#labmmba-name');
        email_input = $('#labmmba-email');
        var password_input = $('#labmmba-password');

        if (name_input.val() === '') {
            $('#label-name').addClass('has-error');
            err = true;
        }

        if (email_input.val() === '' || !isEmail(email_input.val())) {
            $('#label-email').addClass('has-error');
            err = true;
        }

        if (password_input.val() === '') {
            $('#label-password').addClass('has-error');
            err = true;
        }

        if (err) {
            $('#err-field').show('fast');
            err = false;
        } else {
            continue1();
        }
    });

    function isEmail(email) {
        var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        return regex.test(email);
    }

    function hide_err() {
        if (!err) {
            $('#err-field').hide('fast');
        }
    }

    function load_confirm() {
        /* name */
        var studies = $('#labmmba-studies').val();
        var college = $('#labmmba-college').val();
        var job = $('#labmmba-job').val();
        var r_area= $('#labmmba-research-area').val();

        $('#li-name').html('<small>Name: </small><strong>' + name_input.val() + '</strong>');
        $('#li-email').html('<small>Email: </small><strong class="text-lowercase">' + email_input.val() + '</strong>');
        $('#li-studies').html('<small>Studies: </small><br><strong class="text-capitalize">' + studies + ' <small> '+ college +'</small></strong>');
        $('#li-job').html('<small>Lab Charge: </small><strong>'+ job + '</strong>');
        $('#li-research-area').html('<small>Research Area: </small><strong>'+ r_area+'</strong>');
    }
});
