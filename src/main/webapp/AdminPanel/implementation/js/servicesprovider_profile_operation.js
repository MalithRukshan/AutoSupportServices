$(document).ready(function () {

    serviceProviderStartup();
    $("#paymentDate").datepicker({dateFormat: 'yy-mm-dd'});

});
function serviceProviderStartup() {
    var serid = $('#serviceProvideIDValue').val();
    findservicesproviderById(serid);
    findAllServicesProviderServices(serid);
}

function findservicesproviderById(serid) {
    var rootURL = '/rest/employeeservices/servicesprovideroparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + serid,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {
            tDataJson = data;
            $('#servicesproviderprofile_serid').text(tDataJson.serid);
            $('#servicesproviderprofile_companyname').text(tDataJson.companyname);
            $('#servicesproviderprofile_contacnumber').text(tDataJson.contacnumber);
            $('#servicesproviderprofile_hqaddress').text(tDataJson.hqaddress);
            $('#servicesproviderprofile_email').text(tDataJson.email);
            $('#servicesproviderprofile_managername').text(tDataJson.managername);
            $('#servicesproviderprofile_managecontacnumber').text(tDataJson.managecontacnumber);
            $('#servicesproviderprofile_managemail').text(tDataJson.managemail);
            $('#servicesproviderprofile_vehicleperday').text(tDataJson.vehicalperday);

            $('#image-submit').hide();

            $('#span-image').click(function () {

                $('#image-submit').show();
            });

            if (data.image !== null) {

                $('#service-profile-picture').attr('src', data.image);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('findservicesproviderById(): ' + errorThrown);
            console.log('findservicesproviderById(): ' + errorThrown);
        }
    });
}

function findAllServicesProviderServices(serid) {
    var rootURL = '/rest/employeeservices/donsevicesoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyservices_provider_id/' + serid,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {

            loadServiceProvidersprofileData(data);

        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('findAllServicesProviderServices error: ' + textStatus);
            console.log('findAllServicesProviderServices error: ' + textStatus);
        }
    });
}

function servicesproviderEdit(serid) {
    var rootURL = '/rest/employeeservices/servicesprovideroparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + serid,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {
            tDataJson = data;
            $('#eidtservicesproviderserid').val(tDataJson.serid);
            $('#eidtservicesprovidercompanyname').val(tDataJson.companyname);
            $('#eidtservicesprovidercontacnumber').val(tDataJson.contacnumber);
            $('#eidtservicesproviderhqaddress').val(tDataJson.hqaddress);
            $('#eidtservicesprovideremail').val(tDataJson.email);
            $('#eidtservicesprovidermanagername').val(tDataJson.managername);
            $('#eidtservicesprovidermanagecontacnumber').val(tDataJson.managecontacnumber);
            $('#eidtservicesprovidermanagemail').val(tDataJson.managemail);
            $('#eidtservicesprovidervehicleperday').val(tDataJson.vehicalperday);
            $("#longitude").val(tDataJson.logitude);
            $("#latitude").val(tDataJson.latitude);
            $("#serviceCategory").val(tDataJson.sevices_catagary);

            $('#editservicesproviderModal').modal('show');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('servicesproviderEdit error: ' + textStatus);
            console.log('servicesproviderEdit error: ' + textStatus);
        }
    });

}

function servicesProviderJson() {

    var serid = parseInt(jQuery("#serviceProvideIDValue").val());
    var companyname = jQuery("#eidtservicesprovidercompanyname").val();
    var contacnumber = jQuery("#eidtservicesprovidercontacnumber").val();
    var hqaddress = jQuery("#eidtservicesproviderhqaddress").val();
    var email = jQuery("#eidtservicesprovideremail").val();
    var managername = jQuery("#eidtservicesprovidermanagername").val();
    var managecontacnumber = jQuery("#eidtservicesprovidermanagecontacnumber").val();
    var managemail = jQuery("#eidtservicesprovidermanagemail").val();
    var vehicalperday = parseInt(jQuery("#eidtservicesprovidervehicleperday").val());
    var logitude = jQuery("#longitude").val();
    var latitude = jQuery("#latitude").val();

    var sevices_catagary = "";
    $.each($('.service-catagoy:checked'), function () {
        sevices_catagary = sevices_catagary.concat($(this).val() + ' , ');
    });
    if (sevices_catagary === "") {
        sevices_catagary = $("#serviceCategory").val();
    }
    var serviceProviderDataJson = null;
    if (companyname !== "" && contacnumber !== "" && hqaddress !== "" && email !== "" && managername !== "" && managecontacnumber !== "" && managemail !== "" && vehicalperday !== "") {
        serviceProviderDataJson = {
            serid: serid,
            companyname: companyname,
            contacnumber: contacnumber,
            hqaddress: hqaddress,
            email: email,
            managername: managername,
            managecontacnumber: managecontacnumber,
            managemail: managemail,
            vehicalperday: vehicalperday,
            logitude: logitude,
            latitude: latitude,
            sevices_catagary: sevices_catagary
        };

        // alert(JSON.stringify(serviceProviderDataJson));
        return JSON.stringify(serviceProviderDataJson);
    } else {
        servicesproviderInputValidation();
        return serviceProviderDataJson;
    }
}

function edit_updateservicesprovider(serid) {
    var rootURL = '/rest/employeeservices/servicesprovideroparation/Servicesproviderupdate';
    var formToJSONvalled = servicesProviderJson();
    if (formToJSONvalled !== null) {
        $.ajax({
            type: 'PUT',
            contentType: 'application/json',
            url: rootURL,
            dataType: "text",
            data: formToJSONvalled,
            success: function (data, textStatus, jqXHR) {
                $("#editservicesproviderModal").modal('hide');
                findservicesproviderById(serid);
                findAllServicesProviderServices(serid);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                //alert('edit_updateservicesprovider error: ' + errorThrown);
                console.log('edit_updateservicesprovider error: ' + errorThrown);
            }
        });
    } else {
        servicesproviderInputValidation();
    }
}

function servicesproviderDelete(serid) {
    var rootURL = '/rest/employeeservices/donsevicesoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyservices_provider_id/' + serid,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {

            if (data.length === 0) {
                //alert(data.length);
                $("#servicesProviderDeleteConformModal").modal('show');
            } else {
                $("#servicesproviderDeleteCheckingModal").modal('show');
            }
        }
    });
}

function servicesProviderConformDelete(serid) {
    //alert(supid);
    var rootURL = '/rest/employeeservices/servicesprovideroparation';
    $.ajax({
        type: 'DELETE',
        url: rootURL + '/delete/' + serid,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {
            var jspcall = "servicesprovider.jsp";
            window.location.href = jspcall;
        },
        error: function (jqXHR, textStatus, errorThrown) {
            // alert('servicesProviderConformDelete: ' + errorThrown);
            console.log('servicesProviderConformDelete: ' + errorThrown);
        }
    });
}

function loadServiceProvidersprofileData(data) {
    if (data.length === 0) {

        $('#view-servicesproviders-Services')
                .html("<tr><td colspan='7'class='text-center' style='color:red'>There no services data of Services provider..</td></tr>");
    } else {
        //tDataJson = data;
        var rowData = "";
        $.each(data, function (i, tDataJson) {
            rowData += "<tr>"
                    + "<td><input type='hidden' id='" + i + "' value=" + tDataJson.doneseid + " />" + (i + 1) + "</td>"
                    + "<td>" + tDataJson.serdate + "</td>"
                    + "<td>" + tDataJson.servicesName + "</td>"
                    + "<td>" + tDataJson.servicestype + "</td>"
                    + "<td>" + tDataJson.matirial + "</td>"
                    + "<td>" + tDataJson.mile + "</td>"
//                    + "<td><input type='button' class='btn btn-xs btn-info '  value='EDIT' onclick='edit(" + (i + 1) + ")' /></td>"
                    + "<td><input type='button' class='btn btn-xs btn-success '  value='View' onclick='viewServiceDetailsModal(" + tDataJson.doneseid + ");' /></td>"
                    + "<td><input type='button' class='btn btn-xs btn-danger '  value='DELETE' onclick='deleteDonServicesId(" + tDataJson.doneseid + ");' /></td>"
                    + "</tr>";

        });
        $('#view-servicesproviders-Services').html(rowData);
    }
}

function editresetservicesprovider() {
    $('#eidtservicesprovidercompanyname').val("");
    $('#eidtservicesprovidercontacnumber').val("");
    $('#eidtservicesproviderhqaddress').val("");
    $('#eidtservicesprovideremail').val("");
    $('#eidtservicesprovidermanagername').val("");
    $('#eidtservicesprovidermanagecontacnumber').val("");
    $('#eidtservicesprovidermanagemail').val("");
    $('#eidtservicesprovidervehicleperday').val("");
}

function addservicesofservicesprovider(serid) {
    var rootURL = '/rest/employeeservices/servicesprovideroparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + serid,
        success: function (data, textStatus, jqXHR) {
            var supplierObject = JSON.stringify(data);
            $("#servicesproviderJsonObject").val(supplierObject);
            $('#serid').val(serid);
            $('#servicesAddModal').modal('show');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('addservicesofservicesprovider error' + errorThrown);
            console.log('addservicesofservicesprovider error' + errorThrown);
        }
    });
}

function searchServicesProviderDetails() {
    var nameOrPhoneNo = $('#vehicalDetails').val();
    var rootURL = '/rest/employeeservices/vehicleoparation';

    //var supplierJsonData = null;

    $("#vehicalDetails").autocomplete({
        delay: 100,
        source: function (request, response) {

            $.ajax({
                type: 'GET',
                url: rootURL + '/search/' + nameOrPhoneNo,
                dataType: 'json',
                error: function () {
                    // var rError = new Array();
                    response('rError');
                    console.log("Error in supplier search");
                },
                success: function (data) {
                    // supplierJsonData = data;
                    //console.log(data);
                    var array = data.error ? [] : $.map(data, function (m) {

                        return {
                            label: m.vehicalnumber,
                            value: m.vehicalnumber,
                            vid: m.vid
                        };
                    });
                    //console.log(array);
                    response(array);
                }
            });
        },
        minLength: 1,
        select: function (event, ui) {

            $('#vehicalDetails').val(ui.item.vehicalnumber);
            var supIDvalue = ui.item.vid;
            getvehicalforserviesObject(supIDvalue);

        },
        open: function (event, ui) {

        }

    });

}

function getvehicalforserviesObject(vid) {
    var rootURL = '/rest/employeeservices/vehicleoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + vid,
        success: function (data, textStatus, jqXHR) {
            var supplierObject = JSON.stringify(data);
            $("#getvehicalforserviesObject").val(supplierObject);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('getvehicalforserviesObject error');
            console.log('getvehicalforserviesObject error');
        }
    });
}

function addDonServices(serid) {

    var vehicalObject = $("#getvehicalforserviesObject").val();
    var serid = $('#serid').val();
    var rootURL = '/rest/employeeservices/donsevicesoparation/addservicesprovider';
    if (vehicalObject.length !== 0) {
        var getDonServicesJsonchecking = getDonServicesJson();
        if (getDonServicesJsonchecking !== null) {
            $.ajax({
                type: 'POST',
                contentType: 'application/json',
                url: rootURL,
                dataType: "text",
                data: getDonServicesJsonchecking,
                success: function (data, textStatus, jqXHR) {
                    $("#servicesAddModal").modal('hide');
                    resetservicesAddModal();
                    findservicesproviderById(serid);
                    findAllServicesProviderServices(serid);
                    $("html, body").animate({scrollTop: $(document).height()}, 1000);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    //resetVehicle(); should add reset 
                    console.log("addDonServices Error" + errorThrown);
                }
            });
        } else {
            servicesproviderInputValidation();
        }
    } else {
        servicesproviderInputValidation();
    }
}

function getDonServicesJson() {
    servicesproviderJson = null;
    var srvicesprovider = JSON.parse($("#servicesproviderJsonObject").val());
    var vehicle = JSON.parse($("#getvehicalforserviesObject").val());

    var servicespaymentDate = jQuery("#paymentDate").val();
    var service1mileage = jQuery("#service1mileage").val();
    var servicesname = jQuery("#servicesname").val();
    var servicestype = jQuery("#servicestype").val();
    var servicesmaterial = jQuery("#servicesmaterial").val();
    if (srvicesprovider !== "" && servicespaymentDate !== "" && service1mileage !== "" && servicesname !== "") {
        // console.log('Json convert Success');
        servicesproviderJson = {
            servicesprovider: srvicesprovider,
            vehicle: vehicle,
            serdate: servicespaymentDate,
            servicesName: servicesname,
            servicestype: servicestype,
            matirial: servicesmaterial,
            mile: service1mileage
        };
        var jsonob = JSON.stringify(servicesproviderJson);
        // console.log(jsonob);
        return jsonob;
    } else {
        servicesproviderInputValidation();
    }
}

function resetservicesAddModal() {
    $('#servicesproviderJsonObject').val("");
    $('#getvehicalforserviesObject').val("");
    $('#vehicalDetails').val("");
    $('#paymentDate').val("");
    $('#service1mileage').val("");
    $('#servicesname').val("");
    $('#servicestype').val("");
    $('#servicesmaterial').val("");
}

function servicesproviderInputValidation() {
    $("#servicesproviderInputValidation").modal('show');
}


function viewServiceDetailsModal(serviceID) {

    $("#viewServiceModal").modal('show');
}
