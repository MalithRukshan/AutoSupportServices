$(document).ready(function () {

    loadVehicleProfileStartup();
});

function loadVehicleProfileStartup() {

    var vID = $('#vehicleIDValue').val();

    var data2 = loadVehicleProfileDetail(vID);
    displayVehicleDetail(data2);

    loadVehicleServicesJson(vID);

}


function loadVehicleProfileDetail(id) {

    var rootURL = '/rest/employeeservices/vehicleoparation';

    var returnData = "";

    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + id,
        dataType: "json", // data type of response
        async: false,
        success: function (data, textStatus, jqXHR) {
            //console.log(JSON.stringify(data));
            var vehicleObject = JSON.stringify(data);
            var customerObject = JSON.stringify(data.customer);
            var supplerObject = JSON.stringify(data.suplire);
            // console.log(supplerObject);
            $("#vehicleJsonObject").val(vehicleObject);
            $("#customerJsonObject").val(customerObject);
            $("#supplerJsonObject").val(supplerObject);
            //  console.log(data.customer.cuid);
            $("#cusIDValue").val(data.customer.cuid);
            setVData(data);


        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('Vehicle Profile load error: ' + errorThrown);
            var rederectLink = 'customer.jsp';
            window.location.href = rederectLink;
            setVData(jqXHR);
        }
    });

    function setVData(data) {
        returnData = data;

    }

    return returnData;
}


function displayVehicleDetail(data2) {
    var data = data2;
    $('#addButton11').hide();
    // console.log(JSON.stringify(data));
    var d = data.paymentdate;
    var date = new Date(d);
    var strDate = date.getFullYear() + "-" + (date.getMonth() + 1) + "-"
            + date.getDate();

    var vFullName = data.vehiclebrand + ' ' + data.vehiclemodle;

    $('#v-date-hidden').val(strDate);
    $('#v-name-full').text(vFullName);
    $('#v-ref-no').text(data.refnumber);
    $('#v-number').text(data.vehicalnumber);
    $('#v-type').text(data.vehicletype);
    $('#v-brand').text(data.vehiclebrand);
    $('#v-modle').text(data.vehiclemodle);
    $('#v-fueltype').text(data.fueltype);
    $('#v-engine').text(data.enginnumber);
    $('#v-chassis').text(data.chachinumber);
    $('#v-supplier').text(data.suplire.companyname);
    $('#v-paymentdate').text(date);

    $('#image-submit').hide();

    $('#span-image').click(function () {

        $('#image-submit').show();
    });


    if (data.image !== null) {

        $('#v-profile-picture').attr('src', data.image);
    }
}
function displayVehicleModal(data) {

    $('#refnumber').val(data.refnumber);
    $('#refnumber').prop("disabled", true);

    $('#vehicalNumber').val(data.vehicalnumber);
    $('#vehicalNumber').prop("disabled", true);

    $('#vechicle-type').val(data.vehicletype);
    $('#brand').val(data.vehiclebrand);
    $('#vehicle-model').val(data.vehiclemodle);
    $('#fuel-type').val(data.fueltype);

    $('#engineNumber').val(data.enginnumber);
    $('#engineNumber').prop("disabled", true);

    $('#chassiNumber').val(data.chachinumber);
    $('#chassiNumber').prop("disabled", true);

    $('#supplier').val(data.suplire.companyname);
    $('#paymentDate').val(data.paymentdate);
    $('#service1').val(data.frstserviceskm);
    $('#service2').val(data.secondserviceskm);
    $('#service3').val(data.threadserviceskm);

}

function editVehicleButtonClick() {

    $('#VoperationSelection').val('vedit');

    editVechicleProfileModal();

    var data = loadVehicleProfileDetail($('#vehicleIDValue').val());

    displayVehicleModal(data);

}


function editVechicleProfileModal() {

    $("#vechicleEditModal").modal('show');



    resetVehicle();

    $('#vechicleAddModalTitle').text("Edit Vehicle Detail");
    $('#VoperationSelection').text("Edit Vehicle");
    $('#VoperationSelection').val("vedit");
    $('#refnumber').prop('disabled', true);
    //    var cusid = $("#cusIDValue").val();
    // loadCustomerProfileDetail(cusid);


}

function updateVehicleDetails() {

    var rootURL = '/rest/employeeservices/vehicleoparation/vehiclerupdate';


    var vehicleID = parseInt($('#vehicleIDValue').val());
    var vehicleJSONValue = getVehicleJson();

    var vehicleJSONValueONObject = JSON.parse(vehicleJSONValue);
    vehicleJSONValueONObject.vid = vehicleID;


    var paymentdateValue = $('#v-date-hidden').val();
    vehicleJSONValueONObject.paymentdate = paymentdateValue;
    var sendObject = JSON.stringify(vehicleJSONValueONObject);
    //console.log(paymentdateValue);
    // alert(sendObject);

    if (vehicleJSONValue !== null) {

        //console.log(sendObject);

        $.ajax({
            type: 'PUT',
            contentType: 'application/json',
            url: rootURL,
            dataType: "text",
            data: sendObject,
            success: function (data, textStatus, jqXHR) {

                $("#vechicleEditModal").modal('hide');
                resetVehicle();
                displayVehicleDetail(loadVehicleProfileDetail(vehicleID));

            },
            error: function (jqXHR, textStatus, errorThrown) {

                //alert('updateVehicleDetails error: ' + errorThrown);
                console.log('updateVehicleDetails error: ' + errorThrown);
                //customerReset();
            }
        });
    } else {

        CustomerInputValidation();
        //alert('Error - Please enter all the fields..!');

    }

}
function loadVehicleServicesJson(vID) {


    var rootURL = '/rest/employeeservices/donsevicesoparation';


    $.ajax({
        type: 'GET',
        contentType: 'application/json',
        url: rootURL + '/findby_vehicle_id/' + vID,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {
            //alert(data.length)

            var serviceDataJson = data;
            getAllVehicleServices(serviceDataJson);

        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('Error in loding service history details : ' + errorThrown);
            $("#commonErrorModal").modal('show');
            $("#common-error-h2").text('There are no service history details..!');
            $('#view-service-history')
                    .html("<tr><td colspan='7'class='text-center' style='color:red'>no any services done yet</td></tr>");
        }
    });



}

function getAllVehicleServices(serviceDataJson) {

    var rowData = "";

    if (serviceDataJson.length === 0) {

        $('#view-service-history')
                .html("<tr><td colspan='10'class='text-center' style='color:red'>no any services done yet</td></tr>");
    } else {

        $.each(serviceDataJson, function (x, tDataJson) {

            rowData += "<tr>"
                    + "<td>" + (x + 1) + "<input type='hidden' id='" + x + "' value=" + tDataJson.doneseid + " />"
                    + "<td align='center'><input type='checkbox' class='check' name='check[]' value=" + tDataJson.doneseid + " id=" + (x + 1) + " > </td>"
                    + "<input type='hidden' id='" + x + "id" + "' value='" + tDataJson.servicesprovider.serid + "' /></td>"
                    + "<td>" + tDataJson.serdate + "</td>"
                    + "<td>" + tDataJson.mile + "</td>"
                    + "<td>" + tDataJson.servicestype + "</td>"
                    + "<td>" + tDataJson.servicesName + "</td>"
                    + "<td>" + tDataJson.matirial + "</td>"
                    + "<td>" + tDataJson.servicesprovider.companyname + "</td>"
//                    + "<td><input type='button' class='btn btn-xs btn-info '  value='EDIT' onclick='editService(" + x + ")' /></td>"                 
                    + "<td><input type='button' class='btn btn-xs btn-success '  value='View' onclick='viewServiceDetailsModal(" + tDataJson.doneseid + ");' /></td>"
                    + "<td><input type='button' class='btn btn-xs btn-danger '  value='DELETE' onclick='deleteDonServices_VehicleProfile(" + tDataJson.doneseid + ");' /></td>"
                    + "</tr>";
        });

        $('#view-service-history').html(rowData + "<tr><td colspan='11' align='left'><button type='button' class='btn btn-sm btn-danger'  onclick='selectServices();' >Delete All</button></td></tr>");
    }

}

function selectServices() {
    var values = new Array();
    $.each($("input[name='check[]']:checked"), function () {
        values.push($(this).val());
    });

    // var delReturnArray = new Object();
    var delReturnArray = new Array();

    if (values.length !== 0) {
        for (var i = 0; i < values.length; i++) {
            delReturnArray.push({"id": parseInt(values[i])});
        }
    }

    sendDelID(JSON.stringify(delReturnArray));

}

$('#selectallServices').click(function () {
    if ($(this).is(':checked')) {

        $('.check').attr('checked', this.checked);

    } else {
        var vID = $('#vehicleIDValue').val();
        loadVehicleServicesJson(vID);
    }
});

function sendDelID(delReturnArray) {

    var rootURL = '/rest/employeeservices/donsevicesoparation/deletall';

    $.ajax({
        type: 'POST',
        contentType: 'application/json',
        url: rootURL,
        dataType: "text",
        data: delReturnArray,
        success: function (data, textStatus, jqXHR) {
            // alert('sendDelID success : ' + textStatus);
            //console.log('sendDelID success : ' + textStatus);
            loadVehicleProfileStartup();

        },
        error: function (jqXHR, textStatus, errorThrown) {

            //alert('sendDelID Error  : ' + errorThrown);
            console.log('sendDelID Error  : ' + errorThrown);
        }
    });
}



