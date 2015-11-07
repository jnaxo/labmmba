/**
 * Created by nacho on 11/4/15.
 */
$(document).ready(function(){
    var err = false;

    $(window).keydown(function(event){
        if(event.keyCode == 13) {
            event.preventDefault();
            return false;
        }
    });

    /* next */
    function continue1(){
        $('#signup-step1').hide("fast", function () {
            hide_err();
            $('#signup-step2').show('fast');
            $('#signup-progress').attr('aria-valuenow',60);
            $('#signup-progress').width('60%');
        });
    }

    $('#signup-continue2').on('click',function(){
        $('#signup-step2').hide("fast", function () {
            $('#signup-step3').show('fast');
            $('#signup-progress').attr('aria-valuenow',90);
            $('#signup-progress').width('90%');
        });
    });

    /* back */
    $('#signup-back2').on('click',function(){
        $('#label-name').removeClass('has-error');
        $('#label-email').removeClass('has-error');
        $('#label-password').removeClass('has-error');

        $('#signup-step2').hide("fast", function () {
            $('#signup-step1').show('fast');
            $('#signup-progress').attr('aria-valuenow',30);
            $('#signup-progress').width('30%');
        });
    });
    $('#signup-back3').on('click',function(){
        $('#signup-step3').hide("fast", function () {
            $('#signup-step2').show('fast');
            $('#signup-progress').attr('aria-valuenow',60);
            $('#signup-progress').width('60%');
        });
    });

    /* postgraduate studies */
    $('#add-postgraduate-btn').off().on('click',function(){
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
    $('#signup-continue1').off().on('click', function(){
        var name_input = $('#labmmba-name');
        var email_input = $('#labmmba-email');
        var password_input = $('#labmmba-password');

        if(name_input.val() === ''){
            $('#label-name').addClass('has-error');
            err = true;
        }

        if(email_input.val() === ''){
            $('#label-email').addClass('has-error');
            err = true;
        }

        if(password_input.val() === ''){
            $('#label-password').addClass('has-error');
            err = true;
        }

        if(err){
            $('#err-field').show('fast');
            err = false;
        }else {
            continue1();
        }
    });

    $('#signup-continue2').off().on('click', function(){

    });

    function hide_err(){
        if(!err){
            $('#err-field').hide('fast');
        }
    }
});
