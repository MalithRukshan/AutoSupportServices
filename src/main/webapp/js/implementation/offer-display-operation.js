//window.onload = findAllAddImages2;

function findAllAddImages2() {

    var rootURL = '/rest/employeeservices/advertiesmentOparation/getallAdvertiesImage';

    $.ajax({
        type: 'GET',
        url: rootURL,
        async: false,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {
            loadAdvetiesmentAtStartup2(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {

            alert('Error in loding Image data : ' + errorThrown);
        }
    });
}


function loadAdvetiesmentAtStartup2(data) {

    var rowData = "";

    if (data.length === 0) {

        $('.rotator-list')
                .html("<h1 class='text-center' style='color:red'>There no Advertiesment to display</h1>");

    } else {

        $.each(data, function (i, imageJson) {

            rowData += '<li class="rotator-item"><img src="' + imageJson.imagead + '" width="100%" height="100%"></li>';


        });

        $('.rotator-list').html(rowData);

    }
}