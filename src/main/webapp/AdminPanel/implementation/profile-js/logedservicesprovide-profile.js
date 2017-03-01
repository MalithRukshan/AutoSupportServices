
$(document).ready(function () {

    //loadAuthProviderProfileStartup();
    $("#paymentDate").datepicker({dateFormat: 'yy-mm-dd'});

});

function loadAuthProviderProfileStartup() {

    var sid = $('#provideIdValue').val();

    findservicesproviderById(sid);
    findAllServicesProviderServices(sid);

}

function findservicesproviderById(serid) {
    var rootURL = '/rest/employeeservices/servicesprovideroparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + serid,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {

            $('#servicesproviderprofile_serid').text(data.serid);
            $('#servicesproviderprofile_companyname').text(data.companyname);
            $('#servicesproviderprofile_contacnumber').text(data.contacnumber);
            $('#servicesproviderprofile_hqaddress').text(data.hqaddress);
            $('#servicesproviderprofile_email').text(data.email);
            $('#servicesproviderprofile_managername').text(data.managername);
            $('#servicesproviderprofile_managecontacnumber').text(data.managecontacnumber);
            $('#servicesproviderprofile_managemail').text(data.managemail);
            $('#servicesproviderprofile_vehicleperday').text(data.vehicalperday);

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
            window.location.replace("../login.jsp");
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
            window.location.replace("../login.jsp");
        }
    });
}

function loadServiceProvidersprofileData(data) {
    if (data.length === 0) {

        $('#view-servicesproviders-Services')
                .html("<tr><td colspan='8'class='text-center' style='color:red'>There no services data of Services provider..</td></tr>");
    } else {
        tDataJson = data;
        var rowData = "";
        $.each(data, function (i, tDataJson) {
            rowData += "<tr>"
                    + "<td><input type='hidden' id='" + i + "' value=" + tDataJson.doneseid + " />" + (i + 1) + "</td>"
                    + "<td>" + tDataJson.serdate + "</td>"
                    + "<td>" + tDataJson.servicesName + "</td>"
                    + "<td>" + tDataJson.servicestype + "</td>"
                    + "<td>" + tDataJson.matirial + "</td>"
                    + "<td>" + tDataJson.mile + "</td>"
                    + "<td><input type='button' class='btn btn-xs btn-info '  value='EDIT' onclick='editServiceDetailsModal(" + tDataJson.doneseid + ")' /></td>"
                    + "<td><input type='button' class='btn btn-xs btn-success '  value='VIEW' onclick='viewServiceDetailsModal(" + tDataJson.doneseid + ");' /></td>"
                    + "<td><input type='button' class='btn btn-xs btn-danger '  value='DELETE' onclick='deleteDonServices_AuthProviderProfile(" + tDataJson.doneseid + ");' /></td>"
                    + "</tr>";

        });
        $('#view-servicesproviders-Services').html(rowData);
    }
}

//#####################################oparations#################################################

function addservicesofservicesprovider_auth(serid) {

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
            // alert('addservicesofservicesprovider error' + errorThrown);
            console.log('addservicesofservicesprovider error' + errorThrown);
        }
    });
}

function servicesproviderEditModal(serid) {
    var rootURL = '/rest/employeeservices/servicesprovideroparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + serid,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {

            $('#eidtservicesproviderserid').val(data.serid);
            $('#eidtservicesprovidercompanyname').val(data.companyname);
            $('#eidtservicesprovidercontacnumber').val(data.contacnumber);
            $('#eidtservicesproviderhqaddress').val(data.hqaddress);
            $('#eidtservicesprovideremail').val(data.email);
            $('#eidtservicesprovidermanagername').val(data.managername);
            $('#eidtservicesprovidermanagecontacnumber').val(data.managecontacnumber);
            $('#eidtservicesprovidermanagemail').val(data.managemail);
            $('#eidtservicesprovidervehicleperday').val(data.vehicalperday);

            $('#editservicesproviderModal').modal('show');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('servicesproviderEditModal error: ' + textStatus);
            console.log('servicesproviderEditModal error: ' + textStatus);
        }
    });

}

function servicesProviderJson() {

    var serid = parseInt(jQuery("#eidtservicesproviderserid").val());
    var companyname = jQuery("#eidtservicesprovidercompanyname").val();
    var contacnumber = jQuery("#eidtservicesprovidercontacnumber").val();
    var hqaddress = jQuery("#eidtservicesproviderhqaddress").val();
    var email = jQuery("#eidtservicesprovideremail").val();
    var managername = jQuery("#eidtservicesprovidermanagername").val();
    var managecontacnumber = jQuery("#eidtservicesprovidermanagecontacnumber").val();
    var managemail = jQuery("#eidtservicesprovidermanagemail").val();
    var vehicalperday = parseInt(jQuery("#eidtservicesprovidervehicleperday").val());
    var serviceDataJson = null;
    if (companyname !== "" && contacnumber !== "" && hqaddress !== "" && email !== "" && managername !== "" && managecontacnumber !== "" && managemail !== "" && vehicalperday !== "") {
        serviceDataJson = {
            serid: serid,
            companyname: companyname,
            contacnumber: contacnumber,
            hqaddress: hqaddress,
            email: email,
            managername: managername,
            managecontacnumber: managecontacnumber,
            managemail: managemail,
            vehicalperday: vehicalperday
        };
        return JSON.stringify(serviceDataJson);
    } else {
        servicesproviderInputValidation();
        return serviceDataJson;
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
                console.log("Service Provider Edit Succuss..!" + textStatus);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                //alert('edit_updateservicesprovider error: ' + servicesProviderJson());
                console.log("edit_updateservicesprovider Errpr..!" + errorThrown);
            }
        });
    } else {
        servicesproviderInputValidation();
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

function servicesproviderInputValidation() {
    $("#servicesproviderInputValidation").modal('show');
}

function searcVehicleDetails() {
    console.log("Start Searching Vehicle");

    var regNumber = $('#vehical-regestration-no').val();
    var rootURL = '/rest/employeeservices/vehicleoparation';

    $("#vehical-regestration-no").autocomplete({
        delay: 100,
        source: function (request, response) {

            $.ajax({
                type: 'GET',
                url: rootURL + '/search/' + regNumber,
                dataType: 'json',
                error: function () {
                    // var rError = new Array();
                    response('rError');
                    console.log("Error in Vehicle search");
                },
                success: function (data) {

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

            $('#vehical-regestration-no').val(ui.item.vehicalnumber);
            var vid = ui.item.vid;
            getvehicalforserviesObject(vid);

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
            var vehicleObject = JSON.stringify(data);
            $("#getvehicalforserviesObject").val(vehicleObject);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('getvehicalforserviesObject error');
            console.log('getvehicalforserviesObject error');
        }
    });
}

function addDoneServices() {

    var vehicleObject = $('#getvehicalforserviesObject').val();
    //var serid = $('#serid').val();
    var rootURL = '/rest/employeeservices/donsevicesoparation/addservicesprovider';
    if (vehicleObject.length !== 0) {
        var getDonServicesJsonchecking = getDoneServicesJSON();
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
                    loadAuthProviderProfileStartup();
                    $("html, body").animate({scrollTop: $(document).height()}, 1000);

                },
                error: function (jqXHR, textStatus, errorThrown) {
                    //resetVehicle(); should add reset 
                    //alert("Error Add vehicle System" + errorThrown);
                    console.log("addDoneServices Error " + errorThrown);
                }
            });
        } else {
            ServicesProviderInputValidation();
        }
    } else {
        ServicesProviderInputValidation();
    }
}

function getDoneServicesJSON() {

    var servicesproviderJson = null;
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
        // alert(jsonob);
        // console.log(jsonob);
        return jsonob;
    } else {
        ServicesProviderInputValidation();
    }
}

function resetservicesAddModal() {
    $('#servicesproviderJsonObject').val("");
    $('#getvehicalforserviesObject').val("");
    $('#vehicalDetails_Shortcut').val("");
    $('#paymentDate').val("");
    $('#service1mileage').val("");
    $('#servicesname').val("");
    $('#servicestype').val("");
    $('#servicesmaterial').val("");
}


function servicesproviderInputValidation() {
    $("#ServicesProviderinputValidationModal").modal('show');
}

//---------------edit operation---------------------
function editServiceDetailsModal(servID) {

    $('#servicesEditModal').modal('show');
    fillServiceProviderModal(servID);

}

function fillServiceProviderModal(doneserid) {

    var rootURL = '/rest/employeeservices/donsevicesoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + doneserid,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {

            //alert(JSON.stringify(data));

            $('#servicesproviderJsonObject_Shortcut').val(JSON.stringify(data.servicesprovider));
            $('#getvehicalforserviesObject_Shortcut').val(JSON.stringify(data.vehicle));
            $('#doneserid').val(doneserid);
            $('#vehicalDetails_Shortcut').val(data.vehicle.vehicalnumber);
            $('#paymentDate_edit').val(data.serdate);
            $('#service1mileage_edit').val(data.mile);
            $('#servicesname_edit').val(data.servicesName);
            $('#servicestype_edit').val(data.servicestype);
            $('#servicesmaterial_edit').val(data.matirial);
            $('#vehicalDetails_Shortcut').prop("disabled", true);

        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('findservicesproviderById(): ' + errorThrown);
            console.log('fillServiceProviderModal(): ' + errorThrown);
        }
    });
}

function searchServicesProviderDetails_Shortcut() {


    var nameOrPhoneNo = $('#vehicalDetails_Shortcut').val();
    var rootURL = '/rest/employeeservices/vehicleoparation';
    //var supplierJsonData = null;
    $("#vehicalDetails_Shortcut").autocomplete({
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

            $('#vehicalDetails_Shortcut').val(ui.item.vehicalnumber);
            var supIDvalue = ui.item.vid;
            getvehicalforserviesObject_Shortcut(supIDvalue);

        },
        open: function (event, ui) {

        }

    });

}

function getvehicalforserviesObject_Shortcut(vid) {
    var rootURL = '/rest/employeeservices/vehicleoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + vid,
        success: function (data, textStatus, jqXHR) {
            var serviceObject = JSON.stringify(data);
            $("#getvehicalforserviesObject_Shortcut").val(serviceObject);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('getvehicalforserviesObject_Shortcut error' + errorThrown);
            console.log('getvehicalforserviesObject_Shortcut error' + errorThrown);
        }
    });
}

function updateDoneServices(serid) {

    var vehicleObject = $('#getvehicalforserviesObject_Shortcut').val();
    //  var serid = $('#serid').val();
    var rootURL = '/rest/employeeservices/donsevicesoparation/doneservicesuptate';
    if (vehicleObject.length !== 0) {

        var getDonServicesJsonchecking = getDonServicesJson_Edit();
        if (getDonServicesJsonchecking !== null) {
            $.ajax({
                type: 'PUT',
                contentType: 'application/json',
                url: rootURL,
                dataType: "text",
                data: getDonServicesJsonchecking,
                success: function (data, textStatus, jqXHR) {
                    $("#servicesEditModal").modal('hide');
                    resetservicesAddModal_Edit();
                    loadAuthProviderProfileStartup();
                    $("html, body").animate({scrollTop: $(document).height()}, 1000);
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    //resetVehicle(); should add reset 
                    //alert("addDonServices_Shortcut Error" + errorThrown);
                    console.log("addDonServices_Shortcut Error" + errorThrown);
                }
            });
        } else {
            ServicesProviderInputValidation();
        }
    } else {
        ServicesProviderInputValidation();
    }
}

function getDonServicesJson_Edit() {

    var servicesproviderJson = null;
    var doneseid = parseInt($("#doneserid").val());
    var srvicesprovider = JSON.parse($("#servicesproviderJsonObject_Shortcut").val());
    var vehicle = JSON.parse($("#getvehicalforserviesObject_Shortcut").val());
    var servicespaymentDate = jQuery("#paymentDate_edit").val();
    var service1mileage = jQuery("#service1mileage_edit").val();
    var servicesname = jQuery("#servicesname_edit").val();
    var servicestype = jQuery("#servicestype_edit").val();
    var servicesmaterial = jQuery("#servicesmaterial_edit").val();
    if (srvicesprovider !== "" && servicespaymentDate !== "" && service1mileage !== "" && servicesname !== "") {
        // console.log('Json convert Success');
        servicesproviderJson = {
            doneseid: doneseid,
            servicesprovider: srvicesprovider,
            vehicle: vehicle,
            serdate: servicespaymentDate,
            servicesName: servicesname,
            servicestype: servicestype,
            matirial: servicesmaterial,
            mile: service1mileage
        };
        return JSON.stringify(servicesproviderJson);
    } else {
        ServicesProviderInputValidation();
        return servicesproviderJson;
    }
}

function resetservicesAddModal_Edit() {
    $('#servicesproviderJsonObject_Shortcut').val("");
    $('#getvehicalforserviesObject_Shortcut').val("");
    $('#vehicalDetails_Shortcut').val("");
    $('#paymentDate_edit').val("");
    $('#service1mileage_edit').val("");
    $('#servicesname_edit').val("");
    $('#servicestype_edit').val("");
    $('#servicesmaterial_edit').val("");
}


function ServicesProviderInputValidation() {

    $('#ServicesProviderinputValidationModal').modal('show');
}

