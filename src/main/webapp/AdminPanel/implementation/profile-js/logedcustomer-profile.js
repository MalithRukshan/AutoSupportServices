
//$(document).ready(function () {
//    authCustomerStartUp();
//
//});
//
//function authCustomerStartUp() {
//
//    var cAID = $('#c-auth-id').val();
//    logedCustomerProfileDetails(cAID);
//    logCustomerSVehicalDetails(cAID);
//
//}

function logedCustomerProfileDetails(cusid) { //get customer json by customer id
    var rootURL = '/rest/employeeservices/custrmaroparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + cusid,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {
            $('#view-name').text(data.fristname);
            $('#view-nic').text(data.nic);
            $('#view-date').text(data.regesterdate);
            $('#view-laddress').text(data.laddress);
            $('#view-paddress').text(data.paddress);
            $('#view-email').text(data.email);
            $('#view-contactno').text(data.contacnumber);

            $('#image-submit').hide();

            $('#span-image').click(function () {

                $('#image-submit').show();
            });


            if (data.image !== null) {

                $('#auth-profile-picture').attr('src', data.image);
            }

        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('Customer Profile load error: ' + errorThrown);
            console.log('logedCustomerProfileDetails load error: ' + errorThrown);
            window.location.replace("../login.jsp");
        }
    });
}

function logCustomerSVehicalDetails(cusid) {

    var rootURL = '/rest/employeeservices/vehicleoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbycusid/' + cusid,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {

            loadVehicalDetailsByCustomerId(data);
            //viewprofilecustomerloadCustomerProfileDetail(cusid)
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('logCustomerSVehicalDetails error: ' + errorThrown);
            console.log('logCustomerSVehicalDetails error: ' + errorThrown);
            window.location.replace("../login.jsp");
        }
    });
}

function loadVehicalDetailsByCustomerId(data) {
    if (data.length === 0) {
        $('#logedCustomerVehicalData')
                .html("<tr><td colspan='8'class='text-center' style='color:red'>There no services data of Services provider..</td></tr>");
    } else {
        // tDataJson = data;
        var rowData = "";
        $.each(data, function (i, tDataJson) {
            rowData += "<tr>"
                    + "<td><input type='hidden' id='" + i + "' value=" + tDataJson.doneseid + " />" + (i + 1) + "</td>"
                    + "<td>" + tDataJson.refnumber + "</td>"
                    + "<td>" + tDataJson.vehicalnumber + "</td>"
                    + "<td>" + tDataJson.chachinumber + "</td>"
                    + "<td>" + tDataJson.enginnumber + "</td>"
                    + "<td>" + tDataJson.suplire.companyname + "</td>"
                    + "<td>" + tDataJson.paymentdate + "</td>"
                    + "<td><input type='button' class='btn btn-xs btn-success '  value='View' onclick='viewLogedCustomerVehicalData(" + tDataJson.vid + ");' /></td>"
                    + "</tr>";

        });

        $('#logedCustomerVehicalData').html(rowData);
    }
}


function viewLogedCustomerProfileData(cc) {

    var cusid = $('#c-auth-id').val();

    var rootURL = '/rest/employeeservices/custrmaroparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + cusid,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {

            $('#view-customerModal').modal('show');

            $('#viewadd-cuid').val(data.cuid);
            $('#viewadd-fristname').val(data.fristname);
            $('#viewadd-lastname').val(data.lastname);
            $('#viewadd-nic').val(data.nic);
            $('#viewadd-password').val(data.password);
            $('#viewadd-laddress').val(data.laddress);
            $('#viewadd-paddress').val(data.paddress);
            $('#viewadd-contacnum').val(data.contacnumber);
            $('#viewadd-email').val(data.email);
            $('#viewadd-nic').prop("disabled", true);
            //$('#cusObject').val(JSON.stringify(data));
            $('#cusIDmyValue').val(data.cuid);
            $('#cusRegTime').val(data.regesterdate);


        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('viewLogedCustomerProfileData error: ' + errorThrown);
            console.log('viewLogedCustomerProfileData error: ' + errorThrown);
        }
    });
}

function viewLogedCustomerVehicalData(vid) {
    var eiddwithplus = CryptoJS.AES.encrypt(vid + "", "Secret Passphrase");
    var eidd = encodeURIComponent(eiddwithplus);
    var jspcall = "auth-customer-vehical.jsp?id=" + "\'" + eidd + "\'";
    window.location.href = jspcall;
}

function logCustomerUpdateProfile() {

    var cusid = parseInt($('#cusIDmyValue').val());
    var rootURL = '/rest/employeeservices/custrmaroparation/customerupdate';

    var formToJSONValue = formToJSONOne();

    if (formToJSONValue !== null) {
        $.ajax({
            type: 'PUT',
            contentType: 'application/json',
            url: rootURL,
            dataType: "text",
            data: formToJSONValue,
            success: function (data, textStatus, jqXHR) {
                $("#view-customerModal").modal('hide');
                authCustomerStartUp();
            },
            error: function (jqXHR, textStatus, errorThrown) {
                //alert('logCustomerUpdateProfile  error: ' + errorThrown);
                console.log('logCustomerUpdateProfile  error: ' + errorThrown);
                //customerReset();
            }
        });
    } else {

        authCustomerInputValidation();
    }
}

function formToJSONOne() {
    var cuid, fristname, lastname, paddress = "";

    cuid = parseInt($('#viewadd-cuid').val());
    fristname = $('#viewadd-fristname').val();
    lastname = $('#viewadd-lastname').val();
    var nic = $('#viewadd-nic').val();
    var laddress = $('#viewadd-laddress').val();
    paddress = $('#viewadd-paddress').val();
    var password = $('#viewadd-password').val();
    var email = $('#viewadd-email').val();
    var contacnumber = $('#viewadd-contacnum').val();

    var rTime = parseInt($('#cusRegTime').val());
    var date = new Date(rTime);
    var strDate = date.getFullYear() + "-" + (date.getMonth() + 1) + "-"
            + date.getDate();

    var supplierDataJson = null;

    if (fristname !== "" && lastname !== "" && nic !== "" && paddress !== "" && password !== "") {
        supplierDataJson = {
            cuid: cuid,
            fristname: fristname,
            lastname: lastname,
            nic: nic,
            laddress: laddress,
            paddress: paddress,
            password: password,
            email: email,
            contacnumber: contacnumber,
            regesterdate: strDate

        };

        return JSON.stringify(supplierDataJson);

    } else {
        //alert("Emty input");
        authCustomerInputValidation();
        return supplierDataJson;
    }
}


function authCustomerInputValidation() {

    $("#inputValidationModal").modal('show');
}
