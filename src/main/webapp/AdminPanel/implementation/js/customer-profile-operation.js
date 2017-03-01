$(document).ready(function () {

    var customerID = $('#customerIDValue').val();

    var data2 = loadCustomerProfileDetail(customerID);

    displayCustomerDetail(data2);
    getAllVehicles();
    $('#image-submit').hide();
    $('#span-image').click(function () {

        $('#image-submit').show();
    });
});

function loadCustomerProfileDetail(id) { //get customer json by customer id

    var rootURL = '/rest/employeeservices/custrmaroparation';

    var returnData = "";

    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + id,
        dataType: "json", // data type of response
        async: false,
        success: function (data, textStatus, jqXHR) {
            // console.log(JSON.stringify(data));
            var customerObject = JSON.stringify(data);
            $("#customerJsonObject").val(customerObject);
            setData(data);


        },
        error: function (jqXHR, textStatus, errorThrown) {
            // alert('Customer Profile load error: ' + errorThrown);
            var rederectLink = 'customer.jsp';
            window.location.href = rederectLink;
            setData(jqXHR);
        }
    });

    function setData(data) {
        returnData = data;

    }

    return returnData;
}


function displayCustomerDetail(data2) {
    var data = data2;
    // console.log(JSON.stringify(data));
    var d = data.regesterdate;
    var date = new Date(d);
    var strDate = date.getFullYear() + "-" + (date.getMonth() + 1) + "-"
            + date.getDate();

    var fullName = data.fristname + ' ' + data.lastname;
    $('#c-date-hidden').val(strDate);

    $('#c-name').text(fullName);
    $('#customer-nic').text(data.nic);
    $('#c-name-full').text(fullName);
    $('#c-nic').text(data.nic);
    $('#c-date').text(date);
    $('#c-laddress').text(data.laddress);
    $('#c-paddress').text(data.paddress);
    $('#c-email').text(data.email);
    $('#c-contactno').text(data.contacnumber);

    $('#image-submit').hide();

    $('#span-image').click(function () {

        $('#image-submit').show();
    });

    if (data.image !== null) {

        $('#profile-picture').attr('src', data.image);
    }

}
function displayCustomerModal(data) {

    $('#customerIDValue').val(data.cuid);
    $('#fristname').val(data.fristname);
    $('#lastname').val(data.lastname);
    $('#laddress').val(data.laddress);
    $('#paddress').val(data.paddress);
    $('#nic').val(data.nic);
    $('#nic').prop("disabled", true);
    $('#password').val(data.password);
    $('#email').val(data.email);
    $('#contacnum').val(data.contacnumber);

}

function editButtonClick() {

    $('#operationSelection').val('editSelection');
    editCustomerMod();
    var data = loadCustomerProfileDetail($('#customerIDValue').val());

    displayCustomerModal(data);

}

function editCustomerMod() {

    $("#customerEditModal").modal('show');
    customerReset();
    $('#customerModalTitle').text("Edit Customer Details");
    $('#add-customer').text("Edit Customer");
    $('#add-customer').val("editcustome");

}

function addVechicleModProfile() {

    $("#vechicleAddModal").modal('show');

    resetVehicle();

    $('#vechicleAddModalTitle').text("Add New Vehicle");
    $('#refnumber').val(refNoGenrate());
    $('#VoperationSelection').val("Add Vehicle");
    $('#VoperationSelection').text("Add Vehicle");
    $('#refnumber').prop('disabled', true);



}


function updateCustomerDetails() {

    var rootURL = '/rest/employeeservices/custrmaroparation/customerupdate';

    var formToJSONValue = formToJSON();
    var formToJSONObject = JSON.parse(formToJSONValue);
    var customerID = parseInt($('#customerIDValue').val());
    formToJSONObject.cuid = customerID;
    var regesterdateValue = $('#c-date-hidden').val();
    formToJSONObject.regesterdate = regesterdateValue;

    var sendObject = JSON.stringify(formToJSONObject);

    // alert(sendObject);

    if (formToJSONValue !== null) {

        $.ajax({
            type: 'PUT',
            contentType: 'application/json',
            url: rootURL,
            dataType: "text",
            data: sendObject,
            success: function (data, textStatus, jqXHR) {

                $("#customerEditModal").modal('hide');
                customerReset();
                displayCustomerDetail(loadCustomerProfileDetail(customerID));

            },
            error: function (jqXHR, textStatus, errorThrown) {

                //alert('Customer update  error: ' + errorThrown);
                console.log('Customer update  error: ' + errorThrown);
                //customerReset();
            }
        });
    } else {

        CustomerInputValidation();
        //alert('Error - Please enter all the fields..!');

    }

}

//check no of vehicle registed for customer
function customerDeleteButtonClick() {
    //alert('customerDeleteButtonClick(');
    var rootURL = '/rest/employeeservices/vehicleoparation';

    var cid = $('#customerIDValue').val();

    $.ajax({
        type: 'GET',
        url: rootURL + '/findbycusid/' + cid,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {

            // alert(data.length);
            if (data.length === 0) {
                cusomerDeleteComfirmation();

            } else {
                // alert(data.length);
                $("#customerDeleteErrorModal").modal('show');

            }

        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('supplierDelete error: ' + errorThrown);
            console.log('customer delete error: ' + errorThrown);
        }
    });

}



function cusomerDeleteComfirmation() {

    $("#deleteWorningModal").modal('show');

    $("#btn-del-ok").click(function () {

        var customerID = $('#customerIDValue').val();
        deleteCustomerByID(customerID);

        $("#deleteWorningModal").modal('hide');
    });

}

function deleteCustomerByID(id) {
    var rootURL = '/rest/employeeservices/custrmaroparation';
    $.ajax({
        type: 'DELETE',
        url: rootURL + '/delete/' + id,
        success: function (data, textStatus, jqXHR) {

            // alert('Customer delete  Sucess');
            $("#deleteWorningModal").modal('hide');
            var rederectLink = 'customer.jsp';
            window.location.href = rederectLink;

        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('Customer delete  error');
            $("#deleteWorningModal").modal('hide');
            $("#commonErrorModal").modal('show');
            $("#common-error-h2").text('Error in deleting customer. Please delete vehicles before..!');

        }
    });

}

function getAllVehicles() {

    var rootURL = '/rest/employeeservices/vehicleoparation/findallvehicle';
    $.ajax({
        type: 'GET',
        contentType: 'application/json',
        url: rootURL,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {

            showVehicleTableFilter(data);
            // showVehicleTable(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('Error - getAllVehicles() -' + errorThrown);
            console.log('Error - getAllVehicles() -' + errorThrown);
        }
    });

}

function showVehicleTableFilter(data) {

    var rowData = "";

    var customerID = $('#customerIDValue').val();

    if (data.length === 0) {

        $('#view-customer-vehicles')
                .html("<tr><td colspan='7'class='text-center'  style='color:red'>no any machin contend</td></tr>");

    } else {
        var i = 0;
        $.each(data, function (x, tDataJson) {

            //console.log(customerID);

            if (parseInt(customerID) === tDataJson.customer.cuid) {

                var customID = tDataJson.customer.cuid;
                rowData += "<tr>"
                        + "<td>" + (++i)
                        + "<input type='hidden' id='" + x + "' value=" + tDataJson.vid + " />"
                        + "<input type='hidden' id='" + x + "id" + "' value=" + customID + " /></td>"
                        + "<td>" + tDataJson.refnumber + "</td>"
                        + "<td>" + tDataJson.vehicalnumber + "</td>"
                        + "<td>" + tDataJson.chachinumber + "</td>"
                        + "<td>" + tDataJson.enginnumber + "</td>"
                        + "<td>" + tDataJson.suplire.companyname + "</td>"
                        + "<td>" + tDataJson.paymentdate + "</td>"
//                        + "<td><input type='button' class='btn btn-xs btn-info '  value='EDIT' onclick='edit(" + x + ")' /></td>"
                        + "<td><input type='button' class='btn btn-xs btn-success '  value='View' onclick='viewVehicleProfile(" + x + ");' /></td>"
                        + "<td><input type='button' class='btn btn-xs btn-danger '  value='DELETE' onclick='vehicleDelConfirm(" + tDataJson.vid + ");' /></td>"
                        + "</tr>";
            }

        });
        if (rowData === "") {

            rowData = "<tr><td colspan='7'class='text-center' style='color:red'>No any Registerd vehicles..!</td></tr>";

        }

        $('#view-customer-vehicles').html(rowData);

    }

}

function viewVehicleProfile(i) {
    var key = $("#" + i).val();
    var jspcall = "vehicle-profile.jsp?id=" + key;
    window.location.href = jspcall;

}


/*
 function showVehicleTable(data) {
 
 var rowData = "";
 
 if (data.length === 0) {
 
 $('#vehicalview')
 .html("<tr><td colspan='7'class='text-center'>no any machin contend</td></tr>");
 
 } else {
 
 $.each(data, function (x, tDataJson) {
 
 rowData += "<tr>"
 + "<td>" + (x + 1) + "<input type='hidden' id='" + x + "' value=" + tDataJson.vid + " />"
 + "<input type='hidden' id='" + x + "id" + "' value=" + tDataJson.customer.cuid + " /></td>"
 + "<td>" + tDataJson.refnumber + "</td>"
 + "<td>" + tDataJson.vehicalnumber + "</td>"
 + "<td>" + tDataJson.chachinumber + "</td>"
 + "<td>" + tDataJson.enginnumber + "</td>"
 + "<td>" + tDataJson.suplire.companyname + "</td>"
 + "<td>" + tDataJson.paymentdate + "</td>"
 + "<td><input type='button' class='btn btn-xs btn-info '  value='EDIT' onclick='edit(" + x + ")' /></td>"
 + "<td><input type='button' class='btn btn-xs btn-success '  value='View' onclick='editVehicleButtonClick(" + x + ");' /></td>"
 + "<td><input type='button' class='btn btn-xs btn-danger '  value='DELETE' onclick='comfirmation(" + x + ");' /></td>"
 + "</tr>";
 
 
 });
 
 $('#view-customer-vehicles').html(rowData);
 
 }
 
 }
 
 */


