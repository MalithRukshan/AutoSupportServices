$(document).ready(function () {
    $("#paymentDate").datepicker({dateFormat: 'yy-mm-dd'});

});


function addVechicleMod() {

    $("#vechicleAddModal").modal('show');

    resetVehicle();

    $('#vechicleAddModalTitle').text("Add New Vehicle");

    $('#refnumber').val(refNoGenrate());
    $('#VoperationSelection').val("Add Vehicle");
    $('#VoperationSelection').text("Add Vehicle");
    $('#refnumber').prop('disabled', true);

    var customerNIC = $("#customerNIC").val();

    loadCustomerDetails(customerNIC);

}

//add addVechicleModHome---------------------------------------------------

function addVechicleModHome(customerID) {

    $("#vechicleAddModal").modal('show');

    resetVehicle();

    $('#vechicleAddModalTitle').text("Add New Vehicle");

    $('#refnumber').val(refNoGenrate());
    $('#VoperationSelection').val("vadd");
    $('#VoperationSelection').text("Add Vehicle");
    $('#refnumber').prop('disabled', true);

    loadCustomerProfileByID(customerID);

}

//$('#vechicleAddModal')
//        .on('show.bs.modal', function () {
//            $('body').css('overflow', 'hidden');
//        })
//        .on('hide.bs.modal', function () {
//            // Also if you are using multiple modals (cascade) - additional check
//            if ($('.modal.in').length === 1) {
//                $('body').css('overflow', 'auto');
//            }
//        });

//$('#vechicleAddModal').on('touchstart touchmove touchend', function (e) {
//    e.stopPropagation();
//});
//
//$('#vechicleAddModal').on('shown.bs.modal', function () {
//    $(this).find('.modal-dialog').css({
//        //width: 'auto',
//        height: 'auto',
//        'max-height': '100%'});
//});

function loadCustomerDetails(customerNIC) {


    var rootURL = '/rest/employeeservices/custrmaroparation';

    var nic = customerNIC;

    $.ajax({
        type: 'GET',
        url: rootURL + '/findnic/' + nic,
        success: function (data, textStatus, jqXHR) {

            var customerObject = JSON.stringify(data);
            $("#customerJsonObject").val(customerObject);

        },
        error: function (jqXHR, textStatus, errorThrown) {
            // alert('Add vehicle error - loadCustomerDetails(customerNIC) |' + errorThrown);
            console.log('Add vehicle error - loadCustomerDetails(customerNIC) |' + errorThrown);
            //window.location.replace("../login.jsp");
        }
    });

}

function loadCustomerProfileByID(id) { //get customer json by customer id

    //alert('Customer ID : ' + id);

    var rootURL = '/rest/employeeservices/custrmaroparation';

    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + id,
        dataType: "json", // data type of response
        async: false,
        success: function (data, textStatus, jqXHR) {
            // console.log(JSON.stringify(data));
            var customerObject = JSON.stringify(data);
            $("#customerJsonObject").val(customerObject);

            //alert(customerObject);



        },
        error: function (jqXHR, textStatus, errorThrown) {
            // alert('Customer Profile load error: ' + errorThrown);
            console('Customer Profile load error: ' + errorThrown);

        }
    });


}


function searchSupplierDetails() {
    var nameOrPhoneNo = $('#supplier').val();
    var rootURL = '/rest/employeeservices/suplireoparation';

    //var supplierJsonData = null;

    $("#supplier").autocomplete({
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
                            label: m.companyname,
                            value: m.companyname,
                            contacnumber: m.contacnumber,
                            email: m.email,
                            hqaddress: m.hqaddress,
                            supid: m.supid

                        };
                    });
                    // console.log(array);
                    response(array);
                }
            });
        },
        minLength: 1,
        select: function (event, ui) {

            $('#supplier').val(ui.item.companyname);
            var supIDvalue = ui.item.supid;
            getSupplierObject(supIDvalue);

        },
        open: function (event, ui) {

        }

    });

}

function getSupplierObject(supid) {

    var rootURL = '/rest/employeeservices/suplireoparation';

    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + supid,
        success: function (data, textStatus, jqXHR) {
            var supplierObject = JSON.stringify(data);
            $("#supplerJsonObject").val(supplierObject);

        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('Error getSupplierObject()' + errorThrown);
            console.log('Error getSupplierObject()' + errorThrown);
        }
    });

}

function getVehicleJson() {


    vechicleJson = null;
    var suplire = "";
    var supValue = $("#supplerJsonObject").val();



    if (supValue === "") {

        CustomerInputValidation();

        $("#inputValidationModal-H2").text("Please correctly search Supplier");
    }


    var customer = JSON.parse($("#customerJsonObject").val());
//    var customer = jQuery("#customerJsonObject").val();
    var refnumber = jQuery("#refnumber").val();
    var vehicalnumber = jQuery("#vehicalNumber").val();
    var chachinumber = jQuery("#chassiNumber").val();
    var enginnumber = jQuery("#engineNumber").val();
    suplire = JSON.parse(supValue);
//    var suplire = jQuery("#supplerJsonObject").val();
    var vehicletype = jQuery("#vechicle-type").val();
    var vehiclebrand = jQuery("#brand").val();
    var vehiclemodle = jQuery("#vehicle-model").val();
    var fueltype = jQuery("#fuel-type").val();
    var frstserviceskm = jQuery("#service1").val();
    var secondserviceskm = jQuery("#service2").val();
    var threadserviceskm = jQuery("#service3").val();
    var fourthservice = jQuery("#service4").val();
    var fifthservice = jQuery("#service5").val();
    var sixthservice = jQuery("#service6").val();
    var seventhservice = jQuery("#service7").val();
    var eighthservice = jQuery("#service8").val();
    var paymentdate = jQuery("#paymentDate").val();


    if (customer !== "" && vehicalnumber !== "" && chachinumber !== "" && enginnumber !== "" && suplire !== 0 && paymentdate !== "") {
        // console.log('Json convert Success');
        vechicleJson = {
            customer: customer,
            refnumber: refnumber,
            vehicalnumber: vehicalnumber,
            chachinumber: chachinumber,
            enginnumber: enginnumber,
            suplire: suplire,
            vehicletype: vehicletype,
            vehiclebrand: vehiclebrand,
            vehiclemodle: vehiclemodle,
            fueltype: fueltype,
            frstserviceskm: frstserviceskm,
            secondserviceskm: secondserviceskm,
            threadserviceskm: threadserviceskm,
            fourthservice: fourthservice,
            fifthservice: fifthservice,
            sixthservice: sixthservice,
            seventhservice: seventhservice,
            eighthservice: eighthservice,
            paymentdate: paymentdate
        };

        var jsonob = JSON.stringify(vechicleJson);
        console.log(jsonob);
        return jsonob;


    } else {

        CustomerInputValidation();
        $("#inputValidationModal-H2").text("Please Enter all the fields");
        console.log('Data fields are empty');
        return "";
    }

}

function addVehicleSystem() {

    var rootURL = '/rest/employeeservices/vehicleoparation/addvehile';

    var getVehicleJsonValue = getVehicleJson();

    console.log(getVehicleJsonValue);

    $.ajax({
        type: 'POST',
        contentType: 'application/json',
        url: rootURL,
        dataType: "text",
        data: getVehicleJsonValue,
        success: function (data, textStatus, jqXHR) {

            //alert("Suscuss -  Add vehicle System");
            resetVehicle();
            $("#vechicleAddModal").modal('hide');
            $("html, body").animate({scrollTop: $(document).height()}, 1000);

            getAllVehicles();

        },
        error: function (jqXHR, textStatus, errorThrown) {

            //resetVehicle();
            CustomerInputValidation();
            $("#inputValidationModal-H2").text("Please Enter all the filed");
            console.log("Error Add vehicle System" + errorThrown);
        }
    });

}


function vehicleDeleteButtonClick() {

    vehicleDeleteComfirmation();

}


function vehicleDeleteButtonClick() {
//Check conflicting data
    var vIDByDel = $('#vehicleIDValue').val();
    var rootURL = '/rest/employeeservices/donsevicesoparation';

    $.ajax({
        type: 'GET',
        url: rootURL + '/findby_vehicle_id/' + vIDByDel,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {
            if (data.length === 0) {
                // alert(data.length + "Can delete");
                vehicleDeleteComfirmation();

            } else {
                // alert(data.length + "Canot delete");
                $("#customerVehicleDeleteErrorModal").modal('show');
            }

        },
        error: function (jqXHR, textStatus, errorThrown) {
            // alert('vehicleDeleteButtonClick error (//Check conflicting data): ' + errorThrown);
            console.log('vehicleDeleteButtonClick error (Check conflicting data): ' + errorThrown);
            $("#customerVehicleDeleteErrorModal").modal('show');
        }
    });
}



function vehicleDeleteComfirmation() {

    $("#deleteWorningModal").modal('show');

    $("#btn-del-ok").click(function () {
        var vID = $('#vehicleIDValue').val();
        deleteVehicleByID(parseInt(vID));

        $("#deleteWorningModal").modal('hide');
    });

}

function vehicleDelConfirm(vID) {
    //Check conflicting data

    var rootURL = '/rest/employeeservices/donsevicesoparation';

    $.ajax({
        type: 'GET',
        url: rootURL + '/findby_vehicle_id/' + vID,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {
            if (data.length === 0) {

                $("#deleteWorningModal").modal('show');
                $("#btn-del-ok").click(function () {

                    var rootURL = '/rest/employeeservices/vehicleoparation';
                    $.ajax({
                        type: 'DELETE',
                        url: rootURL + '/delete/' + vID,
                        success: function (data, textStatus, jqXHR) {

                            $("#deleteWorningModal").modal('hide');

                            getAllVehicles();
                        },
                        error: function (jqXHR, textStatus, errorThrown) {

                            console.log('vehicleDeleteButtonClick error (Check conflicting data): ' + errorThrown);
                            $("#customerVehicleDeleteErrorModal").modal('show');
                        }
                    });

                });

            } else {
                // alert(data.length + "Canot delete");
                $("#customerVehicleDeleteErrorModal").modal('show');
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            // alert('vehicleDeleteButtonClick error (//Check conflicting data): ' + errorThrown);
            console.log('vehicleDeleteButtonClick error (Check conflicting data): ' + errorThrown);
            $("#customerVehicleDeleteErrorModal").modal('show');
        }
    });

}

function deleteVehicleByID(id) {

    var rootURL = '/rest/employeeservices/vehicleoparation';
    $.ajax({
        type: 'DELETE',
        url: rootURL + '/delete/' + id,
        success: function (data, textStatus, jqXHR) {

            // alert('Vehicle delete  Sucess');
            var cusIDValue = $("#cusIDValue").val();
            $("#deleteWorningModal").modal('hide');
            var rederectLink = 'customer-profile.jsp?id=' + cusIDValue;
            window.location.href = rederectLink;

        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('Vehicle delete  error');
            $("#deleteWorningModal").modal('hide');
            $("#commonErrorModal").modal('show');
            $("#common-error-h2").text('Error in deleting Vehicle..!');

        }
    });

}



function resetVehicle() {

    $("#refnumber").val("");
    $("#vehicalNumber").val("");
    $("#chassiNumber").val("");
    $("#engningNumber").val("");
    $("#paymentDate").val("");
    $("#supplerJsonObject").val("");
    $("#supplier").val("");
    $("#brand").val("");
    $("#vehicle-model").val("");
    $("#fuel-type").val("");
    $("#service1").val("");
    $("#service2").val("");
    $("#service3").val("");
    $("#service4").val("");
    $("#service5").val("");
    $("#service6").val("");
    $("#service7").val("");
    $("#service8").val("");

}


function refNoGenrate() {

    var randNo = Math.floor((Math.random() * 100) + 1);
    var currentTime = getFormattedDateMM();
    var refNo = 'RN' + currentTime + randNo;

    // console.log(refNo);
    return refNo;

}

function getFormattedDateMM() {
    var date = new Date();
    var str = date.getFullYear() + "" + (date.getMonth() + 1) + "" + date.getDate();
    //console.log(str);
    return str;
}






