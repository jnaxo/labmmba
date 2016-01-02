$(document).ready(function (){
    $('#tituloinfo').delay('800').show('fast');
    $('#botoninfo').on('click',function (){
        $('#botonstudies').attr('class','');
        $('#botonpartners').attr('class','');
        $('#botonthesis').attr('class','');
        $('#botoninfo').attr('class','active');
        if (botoninfo.className === 'active') {
            $('#tituloinfo').delay('800').show('fast');
            $('#titulostudies').delay('800').hide('fast');
            $('#titulopartners').delay('800').hide('fast');
            $('#titulothesis').delay('800').hide('fast');
        }
    });


    $('#botonstudies').on('click',function (){
        $('#botoninfo').attr('class','');
        $('#botonpartners').attr('class','');
        $('#botonthesis').attr('class','');
        $('#botonstudies').attr('class','active');
        if (botonstudies.className === 'active') {
            $('#titulostudies').delay('800').show('fast');
            $('#tituloinfo').delay('800').hide('fast');
            $('#titulopartners').delay('800').hide('fast');
            $('#titulothesis').delay('800').hide('fast');
        }
    });


    $('#botonpartners').on('click',function (){
        $('#botonstudies').removeClass('active');
        $('#botoninfo').removeClass('active');
        $('#botonthesis').removeClass('active');
        $('#botonpartners').attr('class','active');
        if (botonpartners.className === 'active') {
            $('#titulopartners').delay('800').show('fast');
            $('#titulostudies').delay('800').hide('fast');
            $('#tituloinfo').delay('800').hide('fast');
            $('#titulothesis').delay('800').hide('fast');
        }
    });


    $('#botonthesis').on('click',function (){
        $('#botonstudies').removeClass('active');
        $('#botonpartners').removeClass('active');
        $('#botoninfo').removeClass('active');
        $('#botonthesis').attr('class','active');
        if (botonthesis.className === 'active') {
            $('#titulothesis').delay('800').show('fast');
            $('#titulopartners').delay('800').hide('fast');
            $('#titulostudies').delay('800').hide('fast');
            $('#tituloinfo').delay('800').hide('fast');
        }
    });


});



