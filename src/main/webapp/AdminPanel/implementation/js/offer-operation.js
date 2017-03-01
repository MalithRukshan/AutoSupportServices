$(document).ready(function (e) {
    $(".img-check").click(function () {
        $(this).toggleClass("check");
    });
});

window.onload = findAllAddImages;

function findAllAddImages() {

    var rootURL = '/rest/employeeservices/advertiesmentOparation/getallAdvertiesImage';

    $.ajax({
        type: 'GET',
        url: rootURL,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {
            loadAdvetiesmentAtStartup(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {

            //alert('Error in loding Image data : ' + errorThrown);
            console.log('Error in loding Image data : ' + errorThrown);
        }
    });
}


function loadAdvetiesmentAtStartup(data) {

    var rowData = "";

    if (data.length === 0) {

        $('#add-form-group')
                .html("<h1 class='text-center' style='color:red'>There no Advertiesment to display</h1>");

    } else {

        $.each(data, function (i, imageJson) {

            rowData += '<div class="col-md-4">'
                    + '<label class="btn"><img id="add-img1" src="../' + imageJson.imagead + '" alt="add1" class="img-responsive img-thumbnail img-check">'
                    + ' <input type="checkbox" name="chk1" id="item4" value="val1" class="hidden">'
                    + ' </label>'
                    + ' </div>';


        });

        $('#add-form-group').html(rowData);

    }
}