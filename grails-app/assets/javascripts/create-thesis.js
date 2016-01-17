/**
 * Created by nacho on 1/14/16.
 */
$(document).ready(function () {
    var author_list = [];
    $("#thesis-back").off().on('click', function () {
        $("#thesis-data-form").hide('fast', function (){
            $("#thesis-file-form").show('fast');
        });
    });

    $("#thesis-back2").off().on('click', function () {
        $("#thesis-authors-form").hide('fast', function (){
            $("#thesis-data-form").show('fast');
        });
    });

    $("#thesis-continue").off().on('click', function (){
        $("#thesis-file-form").hide('fast', function (){
            $("#thesis-data-form").show('fast');
        });
    });

    $("#thesis-continue2").off().on('click', function (){
        $("#thesis-data-form").hide('fast', function (){
            $("#thesis-authors-form").show('fast');
        });
    });

    /* authors */

    $("#optionsRadios2").off().on('click', function (){
        $("#label-member-author").hide('fast', function (){
            $("#label-extern-author").show('fast');
        });
    });

    $("#optionsRadios1").off().on('click', function (){
        $("#label-extern-author").hide('fast', function (){
            $("#label-member-author").show('fast');
        });
    });

    /* list */

    $("#add-author-btn").off().on('click', function (){
        var ilabel = "<li class='list-group-item'><strong>";
        var elabel = "</strong></li>";
        var author_name;

        if ($("#optionsRadios2").is(':checked') && $("#labmmba-extern-author").val() !== ''){
            author_name = $("#labmmba-extern-author").val();
            $("#labmmba-extern-author").val('');
            author_list.push(author_name);
        }
        else {
            author_name = $("#labmmba-member-author").text();
            author_list.push($("#labmmba-member-author").val());
        }

        $("#author-list").append(ilabel + author_name + elabel);
        $("#labmmba-author-list").val(author_list);

        console.log($("#labmmba-author-list").val());
    });
});