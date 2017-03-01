window.onload = findAllcustomer();

function addsupplierdetails() {
    var rootURL = '/rest/employeeservices/suplireoparation/addsuplire';
    var formToJSONNull = formToJSON();
    if (formToJSONNull !== null) {
        $.ajax({
            type: 'POST',
            contentType: 'application/json',
            url: rootURL,
            dataType: "text",
            data: formToJSONNull,
            success: function (data, textStatus, jqXHR) {
                $("#supplieraddModal").modal('hide');
                findAllcustomer();
                $("html, body").animate({scrollTop: $(document).height()}, 1000);
                reset();
            },
            error: function (jqXHR, textStatus, errorThrown) {
                //alert('addsupplierdetails error: ' + errorThrown);
                console.log('addsupplierdetails error: ' + errorThrown);
            }
        });
    } else {
        supplierInputValidation();
    }
}

function supplierInputValidation() {
    $('#inputValidationModal').modal('show');
}

function formToJSON() {
    var companyname = jQuery("#companyname").val();
    var contacnumber = jQuery("#contacnumber").val();
    var hqaddress = jQuery("#hqaddress").val();
    var email = jQuery("#email").val();
    var managername = jQuery("#managername").val();
    var managecontacnumber = jQuery("#managecontacnumber").val();
    var managemail = jQuery("#managemail").val();
    var vehicleperday = jQuery("#vehicleperday").val();
    var supplierDataJson = null;
    if (companyname !== "" && contacnumber !== "" && managername !== "" && vehicleperday !== "" && hqaddress !== "" && email !== "" && managecontacnumber !== "") {
        supplierDataJson = {
            companyname: companyname,
            contacnumber: contacnumber,
            hqaddress: hqaddress,
            email: email,
            managername: managername,
            managecontacnumber: managecontacnumber,
            managemail: managemail,
            vehicleperday: vehicleperday
        };
        return JSON.stringify(supplierDataJson);
    } else {
        supplierInputValidation();
        return supplierDataJson;
    }
}

function formToJSON2() {
    return JSON.stringify({
        companyname: jQuery("#companyname").val(),
        contacnumber: jQuery("#contacnumber").val(),
        hqaddress: jQuery("#hqaddress").val(),
        email: jQuery("#email").val(),
        managername: jQuery("#managername").val(),
        managecontacnumber: jQuery("#managecontacnumber").val(),
        managemail: jQuery("#managemail").val(),
        vehicleperday: jQuery("#vehicleperday").val()
    });
}
function reset() {
    $('#companyname').val("");
    $('#contacnumber').val("");
    $('#hqaddress').val("");
    $('#email').val("");
    $('#managername').val("");
    $('#managecontacnumber').val("");
    $('#managemail').val("");
    $('#vehicleperday').val("");
}


function findAllcustomer() {
    $('#add-customer').val("addcustome");
    var rootURL = '/rest/employeeservices/suplireoparation/findallsuplire';
    $.ajax({
        type: 'GET',
        contentType: 'application/json',
        url: rootURL,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {
            //alert(data.length)
            loadStartup(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('findAllcustomer error: ' + errorThrown);
            console.log('findAllcustomer error: ' + errorThrown);
        }
    });
}

function loadStartup(data) {
    var rowData = "";
    if (data.length === 0) {
        $('#view-supplier')
                .html("<tr><td colspan='10'class='text-center' style='color:red'>There no Supplier to display</td></tr>");
    } else {
        $.each(data, function (i, tDataJson) {
            rowData += "<tr>"
                    + "<td><input type='hidden' id='" + i + "' value=" + tDataJson.supid + " />" + (i + 1) + "</td>"
                    + "<td>" + tDataJson.companyname + "</td>"
                    + "<td>" + tDataJson.contacnumber + "</td>"
                    + "<td>" + tDataJson.hqaddress + "</td>"
                    + "<td>" + tDataJson.email + "</td>"
//                    + "<td>" + tDataJson.managername + "</td>"
//                    + "<td>" + tDataJson.managecontacnumber + "</td>"
//                    + "<td>" + tDataJson.managemail + "</td>"
                    + "<td>" + tDataJson.vehicleperday + "</td>"
                    + "<td><input type='button' class='btn btn-xs btn-success ' value='View Profile' onclick='viewprofile(" + i + ")' /></td>"
                    + "</tr>";
        });
        $('#view-supplier').html(rowData);
    }
}

function findBySupplier() {
    var searchKey = jQuery("#search-customer").val();
    if (searchKey.length === 0) {
        findAllcustomer();
    } else {
        var rootURL = '/rest/employeeservices/suplireoparation';
        $.ajax({
            type: 'GET',
            url: rootURL + '/search/' + searchKey,
            dataType: "json",
            success: function (data, textStatus, jqXHR) {
                //alert(data.length)

                loadStartup(data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                // alert('findBySupplier error: ' + errorThrown);
                console.log('findBySupplier error: ' + errorThrown);
            }
        });
    }
}

function viewprofile(i) {
    var key = $("#" + i).val();
    var jspcall = "suplliers_profile.jsp?id=" + key;
    window.location.href = jspcall;
}

function comfirmation(i) {
    $("#deleteWorningModal").modal('show');
    $("#btn-del-ok").click(function () {
        deletecus(i);
        console.log(i);
    });
}

function addsuplierModal() {
    $("#supplieraddModal").modal('show');
    $('#supplieraddModalTitle').text("Add New Supplier");
    $('#add-supplier').text("Add New Supplier");
    $('#add-supplier').val("addcustome");
    reset();
}

