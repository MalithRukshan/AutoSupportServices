function offerReset() {
    var rowData = "";
    rowData += "<tr>"
            + "</tr>";
    $('#view-offer-customer').html(rowData);
}


function loadData(data) {
    var rowData = "";
    if (data.length === 0) {
        $('#view-offer-customer')
                .html("<tr><td colspan='8'class='text-center' style='color:red'>There no Customer to display</td></tr>");
    } else {
        $.each(data, function (i, tDataJson) {
            rowData += "<tr>"
//                    + "<td><input type='hidden' id='" + i + "' value=" + tDataJson.cuid + " />" + (i + 1) + "</td>"
                    + "<td align='center'><input type='checkbox' class='check' name='check[]' value=" + tDataJson.contacnumber + " id=" + (i + 1) + " > </td>"
                    + "<td>" + tDataJson.fristname + "</td>"
                    + "<td>" + tDataJson.contacnumber + "</td>"
                    + "<td>" + tDataJson.email + "</td>"
                    + "<td>" + tDataJson.laddress + "</td>"
                    + "<td>" + tDataJson.paddress + "</td>"
                    + "</tr>";
        });
        $('#view-offer-customer').html(rowData + "<tr><td colspan='7' align='center'><button type='button' class='btn btn-primary'  onclick='myfunccccc();' >Send Message</button></td></tr>");
    }
}

function viewoffer(values) {
    var rowData = "";
    $.each(values, function (i, tDataJson) {
        rowData += "<tr>"
                + "<td><input type='hidden' id='" + i + "'  />" + (i + 1) + "</td>"
                + "<td align='center'>" + tDataJson + "</td>"
                + "</tr>";
    });
    $('#view-offer').html(rowData);
}

function myfunccccc() {
    var values = new Array();
    $.each($("input[name='check[]']:checked"), function () {
        values.push($(this).val());
    });
    if (values.length !== 0) {
        $("#offerSendModal").modal('show');
        viewoffer(values);
    }

}

function findaddress() {
    var searchKey = jQuery("#search-offercustomer").val();
    if (searchKey.length === 0) {
        offerReset();
    } else {
        var rootURL = '/rest/employeeservices/custrmaroparation';
        $.ajax({
            type: 'GET',
            url: rootURL + '/findaddress/' + searchKey,
            dataType: "json",
            success: function (data, textStatus, jqXHR) {
                loadData(data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert('Customer search error ' + textStatus);
            }
        });
    }
}

//$(function () {
//    // add multiple select / deselect functionality
//    $("#selectall").click(function () {
//        $('.check').attr('checked', this.checked);
//
//        if ($(this).is(':checked'))
//            alert('checked');
//        else
//            alert('unchecked');
//    });
//    // if all checkbox are selected, check the selectall checkbox
//    // and viceversa
//
//});

$('#selectall').click(function () {
    if ($(this).is(':checked'))
        $('.check').attr('checked', this.checked);
    else
        findaddress();
});