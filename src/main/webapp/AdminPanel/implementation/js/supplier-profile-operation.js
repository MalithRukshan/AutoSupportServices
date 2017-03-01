function formToJSON() {
    return JSON.stringify({
        cuid: jQuery("#cuid").val()
    });
}

function formToJSON2() {
    return JSON.stringify({
        supid: jQuery("#supid").val(),
        companyname: jQuery("#companynamess").val(),
        contacnumber: jQuery("#contacnumberss").val(),
        hqaddress: jQuery("#hqaddressss").val(),
        email: jQuery("#emailss").val(),
        managername: jQuery("#managernamess").val(),
        managecontacnumber: jQuery("#managecontacnumberss").val(),
        managemail: jQuery("#managemailss").val(),
        vehicleperday: jQuery("#vehicleperdayss").val()
    });
}

function formToJSON3() {
    var supid = parseInt(jQuery("#supid").val());
    var companyname = jQuery("#companynamess").val();
    var contacnumber = jQuery("#contacnumberss").val();
    var hqaddress = jQuery("#hqaddressss").val();
    var email = jQuery("#emailss").val();
    var managername = jQuery("#managernamess").val();
    var managecontacnumber = jQuery("#managecontacnumberss").val();
    var managemail = jQuery("#managemailss").val();
    var vehicleperday = parseInt(jQuery("#vehicleperdayss").val());
    var supplierDataJson = null;
    if (companyname !== "" && contacnumber !== "" && hqaddress !== "" && email !== "" && managername !== "" && managecontacnumber !== "" && managemail !== "" && vehicleperday !== "") {
        supplierDataJson = {
            supid: supid,
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

function supplierInputValidation() {
    $('#inputValidationModal').modal('show');
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


function findAllSupplierByID(id) {
    var rootURL = '/rest/employeeservices/suplireoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + id,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {
            var tDataJson = data;
            $('#company-full-name').text(tDataJson.companyname);
            $('#supid').val(tDataJson.supid);
            $('#companyname').text(tDataJson.companyname);
            $('#contacnumber').text(tDataJson.contacnumber);
            $('#hqaddress').text(tDataJson.hqaddress);
            $('#email').text(tDataJson.email);
            $('#managername').text(tDataJson.managername);
            $('#managecontacnumber').text(tDataJson.managecontacnumber);
            $('#managemail').text(tDataJson.managemail);
            $('#vehicleperday').text(tDataJson.vehicleperday);

            $('#image-submit').hide();

            $('#span-image').click(function () {

                $('#image-submit').show();
            });

            if (data.image !== null) {

                $('#s-profile-picture').attr('src', data.image);
            }

        },
        error: function (jqXHR, textStatus, errorThrown) {
            // alert('findAllSupplierByID: ' + errorThrown);
            console.log('findAllSupplierByID: ' + errorThrown);
        }
    });
}



function findAllVehicle_SellBySupplier(id) {
    var rootURL = '/rest/employeeservices/vehicleoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbysuplireidid/' + id,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {
            var rowData = "";
            $.each(data, function (i, tDataJson) {
                rowData += "<tr>"
                        + "<td><input type='hidden' id='" + i + "' value=" + tDataJson.supid + " />" + (i + 1) + "</td>"
                        + "<td>" + tDataJson.refnumber + "</td>"
                        + "<td>" + tDataJson.enginnumber + "</td>"
                        + "<td>" + tDataJson.chachinumber + "</td>"
                        + "<td>" + tDataJson.vehicalnumber + "</td>"
                        + "<td>" + tDataJson.vehicletype + "</td>"
                        + "<td>" + tDataJson.vehiclebrand + "</td>"
                        + "<td>" + tDataJson.vehiclemodle + "</td>"
                        + "<td>" + tDataJson.fueltype + "</td>"
                        + "<td><input type='button' class='btn btn-xs btn-success' value='View Details' onclick='viewVehicleProfileSuppler(" + tDataJson.vid + "); ' /></td>"
                        + "</tr>";


            });

            $('#view-profilesupplier').html(rowData);


        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('Supplier load  error: ' + errorThrown);
            console.log('findAllVehicle_SellBySupplier error: ' + errorThrown);
        }
    });
}

function supplierUpdate(supid) {

    $("#customerModal").modal('show');
    $('#customerModalTitle').text("Update Supplier Details");
    $('#add-customer').text("update");

    var rootURL = '/rest/employeeservices/suplireoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + supid,
        dataType: "json", // data type of response
        success: function (data) {

            $('#supid').val(data.supid);
            $('#companynamess').val(data.companyname);
            $('#contacnumberss').val(data.contacnumber);
            $('#hqaddressss').val(data.hqaddress);
            $('#emailss').val(data.email);
            $('#managernamess').val(data.managername);
            $('#managecontacnumberss').val(data.managecontacnumber);
            $('#managemailss').val(data.managemail);
            $('#vehicleperdayss').val(data.vehicleperday);
        }
    });
}

function supplierConformUpdate(supid) {
    var key = supid;
    var rootURL = '/rest/employeeservices/suplireoparation/supplierupdate';
    var formToJSONvall = formToJSON3();
    //alert(formToJSONvall);
    if (formToJSONvall !== null) {
        $.ajax({
            type: 'PUT',
            contentType: 'application/json',
            url: rootURL,
            dataType: "text",
            data: formToJSONvall,
            success: function (data, textStatus, jqXHR) {
                $("#customerModal").modal('hide');
//                var jspcall = "suplliers_profile.jsp?id=" + key;
//                window.location.href = jspcall;
                var supId = $('#supIDvalue').val();
                findAllSupplierByID(supId);
                findAllVehicle_SellBySupplier(supId);

            },
            error: function (jqXHR, textStatus, errorThrown) {
                // alert('supplierConformUpdate error ' + formToJSON3());
                var supId = $('#supIDvalue').val();
                findAllSupplierByID(supId);
                findAllVehicle_SellBySupplier(supId);
                console.log('Supplier load  error: ' + formToJSON3() + errorThrown);
            }
        });
    } else {
        supplierInputValidation();
    }
}

//check no of vehicle sell by supplier
function supplierDelete(supid) {
    //alert(supid);
    var rootURL = '/rest/employeeservices/vehicleoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbysuplireidid/' + supid,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {

            if (data.length === 0) {
                //alert(data.length);
                $("#supplierDeleteConformModal").modal('show');
            } else {
                $("#supplierDeleteModal").modal('show');
            }

        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('supplierDelete error: ' + errorThrown);
            console.log('supplierDelete error: ' + errorThrown);
        }
    });

}

function supplierConformDelete(supid) {
    //alert(supid);
    var rootURL = '/rest/employeeservices/suplireoparation';
    $.ajax({
        type: 'DELETE',
        url: rootURL + '/delete/' + supid,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {
            var jspcall = "suplliers.jsp";
            window.location.href = jspcall;

        },
        error: function (jqXHR, textStatus, errorThrown) {
            // alert('supplierConformDelete error: ' + textStatus);
            console.log('supplierConformDelete error: ' + errorThrown);
        }
    });
}

//-------------------------------------------------------------------
function comfirmation(i) {


    $("#deleteWorningModal").modal('show');

    $("#btn-del-ok").click(function () {
        deletecus(i);
        console.log(i);
        //$("#deleteWorningModal").modal('hide');
    });


}

function deletecus(i) {


    var rootURL = '/rest/employeeservices/suplireoparation';
    var id = jQuery("#" + i).val();

    console.log('deletecustomer');
    $.ajax({
        type: 'DELETE',
        url: rootURL + '/delete/' + id,
        success: function (data, textStatus, jqXHR) {
            // alert('customer deleted successfully');
            $("#deleteWorningModal").modal('hide');
            findAllSupplierByID(id);

        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('deletecus  error' + errorThrown);
            console.log('deletecus  error' + errorThrown);
        }
    });



}

function viewVehicleProfileSuppler(vid) {

    var jspcall = "vehicle-profile-supplier.jsp?id=" + vid;
    window.location.href = jspcall;

}


