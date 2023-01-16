// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

var alertnotify = function (statuscode, msg) {
    if (statuscode == 1) {
        swal.fire({
            title: "Success",
            text: msg,
            icon: "success",
            confirmButtonText: "GoBack"
            //timer: 500000
        }).then((result) => {
            /* Read more about isConfirmed, isDenied below */
            if (result.isConfirmed) {
                window.location.reload();
            } else if (result.isDenied) {
                //timer: 70000
                window.location.reload();
            }
        });
    }
    else {
        swal.fire({
            title: "Falied",
            text: msg,
            icon: "error",
            confirmButtonText: "GoBack"
            //timer: 500000
        }).then((result) => {
            /* Read more about isConfirmed, isDenied below */
            if (result.isConfirmed) {
            } else if (result.isDenied) {
                //timer: 70000
                window.location.reload();
            }
        });
    }
}
var conformation = function (msg, IsConfirmedMethod, IsDeniedMethod) {
    Swal.fire({
        title: msg,
        showDenyButton: true,
        showCancelButton: true,
        confirmButtonText: 'Ok',
        denyButtonText: `Don't save`,
    }).then((result) => {
        /* Read more about isConfirmed, isDenied below */
        if (result.isConfirmed) {
            IsConfirmedMethod
        } else if (result.isDenied) {
            IsDeniedMethod
        }
    })
}
var preloader = {
    load: () => $('body').append('<div class="loading">Loading&#8230;</div>'),
    remove: () => $('.loading').remove()
};
function isUrlValid(userInput) {
    var regexQuery = "/(http(s)?://.)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)/";
    var url = new RegExp(regexQuery, "g");
    if (url.test(userInput)) {
        alert('Great, you entered an E-Mail-address');
        return true;
    }
    return false;
}
var showModel = function (result) {
    $('body').append(result);
    $('#myModalNew').modal('show');
    $('[data-dismiss="modal"]').unbind().click(function () {
        $('.modal,.modal-backdrop').remove();
    })
}
var convertUrltoEmbeded = function (URL) {
    var str = URL;
    var res = str.split("=");
    var embeddedUrl = "https://www.youtube.com/embed/" + res[1];
    return embeddedUrl;
}
var ChangePassword = function () {
    $.post('/Account/_ChangePassword').done(function (result) {
        showModel(result);
    }).fail(function (xhr) {
        console.log(xhr.responseText);
    });
}