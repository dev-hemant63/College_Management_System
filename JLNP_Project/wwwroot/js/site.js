// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.
//var alertnotify = function (statuscode, msg) {
//    if (statuscode == 1) {
//        SlimNotifierJs.notification('success', 'Successfully', msg, 3000);
//        setTimeout(() => {
//            window.location.reload();
//        }, 3000);
//    }
//    else {
//        SlimNotifierJs.notification('error', 'Error', msg, 3000);
//        setTimeout(() => {
//            window.location.reload();
//        }, 3000);
//    }
//}

var alertnotify = function (statuscode, msg) {
    var notifier = new Notifier({
        position: 'top-right',
        direction: 'top',
        default_time: 3000,
    });
    if (statuscode == 1) {
        var notification = notifier.notify("success", "<b>Success</b> " + msg);
        var _ = notification.push();
        $('.modal,.modal-backdrop').remove();
    }
    else {
        var notification = notifier.notify("error", "<b>Error</b> " + msg);
        notification.push();
        $('.modal,.modal-backdrop').remove();
    }
}
//var alertnotify = function (statuscode, msg) {
//    if (statuscode == 1) {
//        swal.fire({
//            title: "Success",
//            text: msg,
//            icon: "success",
//            confirmButtonText: "GoBack"
//            //timer: 500000
//        }).then((result) => {
//            /* Read more about isConfirmed, isDenied below */
//            if (result.isConfirmed) {
//                window.location.reload();
//            } else if (result.isDenied) {
//                //timer: 70000
//                window.location.reload();
//            }
//        });
//    }
//    else {
//        swal.fire({
//            title: "Falied",
//            text: msg,
//            icon: "error",
//            confirmButtonText: "GoBack"
//            //timer: 500000
//        }).then((result) => {
//            /* Read more about isConfirmed, isDenied below */
//            if (result.isConfirmed) {
//            } else if (result.isDenied) {
//                //timer: 70000
//                window.location.reload();
//            }
//        });
//    }
//}
var conformation = function (msg,btntext, IsConfirmedMethod) {
    Swal.fire({
        text: msg,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: btntext
    }).then((result) => {
        if (result.isConfirmed) {
            alert(result.isConfirmed);
            IsConfirmedMethod
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
var setCurrentDate = function (textIdfrom, textIdto) {
    var now = new Date();
    var day = ("0" + now.getDate()).slice(-2);
    var month = ("0" + (now.getMonth() + 1)).slice(-2);
    var today = now.getFullYear() + "-" + (month) + "-" + (day);
    $('#' + textIdfrom).val(today);
    $('#' + textIdto).val(today);
}
var LoadDate = (FromId, ToId) => {
    setCurrentDate(FromId, ToId);
    $("#" + FromId).datepicker();
    $("#" + ToId).datepicker();
}
