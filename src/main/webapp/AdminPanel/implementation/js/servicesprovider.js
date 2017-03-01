window.onload = findAllservicesprovider();

$(document).ready(function () {
    $("#paymentDate").datepicker({dateFormat: 'yy-mm-dd'});

});

function findAllservicesprovider() {
    var rootURL = '/rest/employeeservices/servicesprovideroparation/findallServicesprovider';
    $.ajax({
        type: 'GET',
        contentType: 'application/json',
        url: rootURL,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {
            loadservicesproviderStartup(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('findAllservicesprovider error: ' + textStatus);
            console.log('findAllservicesprovider error: ' + textStatus);
        }
    });
}

function loadservicesproviderStartup(data) {
    var rowData = "";
    if (data.length === 0) {
        $('#view-servicesprovider')
                .html("<tr><td colspan='10'class='text-center' style='color:red'>There no Services Providets' to display</td></tr>");
    } else {
        $.each(data, function (i, tDataJson) {
            rowData += "<tr>"
                    + "<td><input type='hidden' id='" + i + "' value=" + tDataJson.serid + " />" + (i + 1) + "</td>"
                    + "<td>" + tDataJson.companyname + "</td>"
                    + "<td>" + tDataJson.contacnumber + "</td>"
                    + "<td>" + tDataJson.hqaddress + "</td>"
                    + "<td>" + tDataJson.email + "</td>"
//                    + "<td>" + tDataJson.managername + "</td>"
//                    + "<td>" + tDataJson.managecontacnumber + "</td>"
//                    + "<td>" + tDataJson.managemail + "</td>"
                    + "<td>" + tDataJson.vehicalperday + "</td>"
                    + "<td><input type='button' class='btn btn-xs btn-success ' value='View Profile' onclick='viewprofileservicesprovider(" + i + ");' /></td>"
                    + "<td><input type='button' class='btn btn-xs btn-info ' value='Add Service' onclick='addservicesofservicesproviderBycusid(" + tDataJson.serid + ");' /></td>"

                    + "</tr>";
        });
        $('#view-servicesprovider').html(rowData);
    }
}

function viewprofileservicesprovider(i) {
    var key = $("#" + i).val();
    var jspcall = "servicesprovider_profile.jsp?id=" + key;
    window.location.href = jspcall;
}

// this function using for view tha add services provider modal
function addservicesproviderModal() {
    $('#addservicesproviderModal').modal('show');
    resetservicesprovider();
}

function addservicesprovider() {
    var rootURL = '/rest/employeeservices/servicesprovideroparation/addservicesprovider';
    var formToJSONchecking = formToJSONOnServicesProvider();
    if (formToJSONchecking !== null) {
        $.ajax({
            type: 'POST',
            contentType: 'application/json',
            url: rootURL,
            dataType: "text",
            data: formToJSONchecking,
            success: function (data, textStatus, jqXHR) {
                resetservicesprovider();
                $("#addservicesproviderModal").modal('hide');
                $("html, body").animate({scrollTop: $(document).height()}, 1000);
                findAllservicesprovider();
            },
            error: function (jqXHR, textStatus, errorThrown) {
                //alert('addservicesprovider: ' + formToJSON());
                console.log('addservicesprovider: ' + errorThrown);
            }
        });
    } else {
        ServicesProviderInputValidation();
    }
}

function findByservicesprovider() {
    var searchKey = jQuery("#search-servicesprovider").val();
    if (searchKey.length === 0) {
        findAllservicesprovider();
    } else {
        var rootURL = '/rest/employeeservices/servicesprovideroparation';
        $.ajax({
            type: 'GET',
            url: rootURL + '/search/' + searchKey,
            dataType: "json",
            success: function (data, textStatus, jqXHR) {
                loadservicesproviderStartup(data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                //alert('findByservicesprovider error ' + errorThrown);
                console.log('findByservicesprovider error ' + errorThrown);
            }
        });
    }
}

function resetservicesprovider() {
    $('#servicesprovidercompanyname').val("");
    $('#servicesprovidercontacnumber').val("");
    $('#servicesproviderhqaddress').val("");
    $('#servicesprovideremail').val("");
    $('#servicesprovidermanagername').val("");
    $('#servicesprovidermanagecontacnumber').val("");
    $('#servicesprovidermanagemail').val("");
    $('#servicesprovidervehicleperday').val("");
}

function formToJSONOnServicesProvider() {

    var companyname = jQuery("#servicesprovidercompanyname").val();
    var contacnumber = jQuery("#servicesprovidercontacnumber").val();
    var hqaddress = jQuery("#servicesproviderhqaddress").val();
    var email = jQuery("#servicesprovideremail").val();
    var managername = jQuery("#servicesprovidermanagername").val();
    var managecontacnumber = jQuery("#servicesprovidermanagecontacnumber").val();
    var managemail = jQuery("#servicesprovidermanagemail").val();
    var vehicalperday = jQuery("#servicesprovidervehicleperday").val();
    var logitude = jQuery("#longitude").val();
    var latitude = jQuery("#latitude").val();
//    var sevices_catagary = [];
//    $.each($('.service-catagoy:checked'), function () {
//        sevices_catagary.push($(this).val());
//    });
//
//    alert(JSON.stringify(sevices_catagary));

    var sevices_catagary = "";
    $.each($('.service-catagoy:checked'), function () {
        sevices_catagary = sevices_catagary.concat($(this).val() + ' , ');
    });

    //alert(sevices_catagary);

    var ServicesDataJson = null;
    if (companyname !== "" && contacnumber !== "" && managername !== "" && vehicalperday !== ""
            && hqaddress !== "" && email !== "" && managecontacnumber !== "") {
        ServicesDataJson = {
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
        return JSON.stringify(ServicesDataJson);
    } else {
        ServicesProviderInputValidation();
        return ServicesDataJson;
    }
}

function ServicesProviderInputValidation() {
    $('#ServicesProviderinputValidationModal').modal('show');
}

function addservicesofservicesproviderBycusid(serid) {
    //alert(serid);
    var rootURL = '/rest/employeeservices/servicesprovideroparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + serid,
        success: function (data, textStatus, jqXHR) {
            var supplierObject = JSON.stringify(data);
            $("#servicesproviderJsonObject_Shortcut").val(supplierObject);
            $('#serid').val(serid);
            $('#servicesAddModal_Shortcut').modal('show');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('addservicesofservicesproviderBycusid error');
            console.log('addservicesofservicesproviderBycusid error');
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
            var supplierObject = JSON.stringify(data);
            $("#getvehicalforserviesObject_Shortcut").val(supplierObject);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('getvehicalforserviesObject_Shortcut error' + errorThrown);
            console.log('getvehicalforserviesObject_Shortcut error' + errorThrown);
        }
    });
}

function addDonServices_Shortcut(serid) {
    var vehicleObject = $('#getvehicalforserviesObject_Shortcut').val();
    var serid = $('#serid').val();
    var rootURL = '/rest/employeeservices/donsevicesoparation/addservicesprovider';
    if (vehicleObject.length !== 0) {
        var getDonServicesJsonchecking = getDonServicesJson_Shortcut();
        if (getDonServicesJsonchecking !== null) {
            $.ajax({
                type: 'POST',
                contentType: 'application/json',
                url: rootURL,
                dataType: "text",
                data: getDonServicesJsonchecking,
                success: function (data, textStatus, jqXHR) {
                    $("#servicesAddModal_Shortcut").modal('hide');
                    resetservicesAddModal_Shortcut();
                    findAllservicesprovider();
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

function getDonServicesJson_Shortcut() {
    servicesproviderJson = null;
    var srvicesprovider = JSON.parse($("#servicesproviderJsonObject_Shortcut").val());
    var vehicle = JSON.parse($("#getvehicalforserviesObject_Shortcut").val());
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
        //alert(jsonob);
        // console.log(jsonob);
        return jsonob;
    } else {
        ServicesProviderInputValidation();
    }
}

function resetservicesAddModal_Shortcut() {
    $('#servicesproviderJsonObject_Shortcut').val("");
    $('#getvehicalforserviesObject_Shortcut').val("");
    $('#vehicalDetails_Shortcut').val("");
    $('#paymentDate').val("");
    $('#service1mileage').val("");
    $('#servicesname').val("");
    $('#servicestype').val("");
    $('#servicesmaterial').val("");
}
