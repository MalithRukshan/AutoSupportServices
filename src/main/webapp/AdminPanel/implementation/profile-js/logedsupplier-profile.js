
function logedSupplierProfileDetails(supid) { //get customer json by customer id
    var rootURL = '/rest/employeeservices/suplireoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + supid,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {
            $('#auth_companyname').text(data.companyname);
            $('#auth_contacnumber').text(data.contacnumber);
            $('#auth_hqaddress').text(data.hqaddress);
            $('#auth_email').text(data.email);
            $('#auth_managername').text(data.managername);
            $('#auth_managecontacnumber').text(data.managecontacnumber);
            $('#auth_managemail').text(data.managemail);
            $('#auth_vehicleperday').text(data.vehicleperday);

            $('#image-submit').hide();

            $('#span-image').click(function () {

                $('#image-submit').show();
            });

            if (data.image !== null) {
                $('#auth-supplier-picture').attr('src', data.image);
            }

        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('Customer Profile load error: ' + errorThrown);
            console.log('Customer Profile load error: ' + errorThrown);
            window.location.replace("../login.jsp");
        }
    });
}

function logSuppliersSVehicalDetails(supid) {
    // alert(supid);
    var rootURL = '/rest/employeeservices/vehicleoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbysuplireidid/' + supid,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {
            loadVehicalDetailsBySupplierId(data);
            //viewprofilecustomerloadCustomerProfileDetail(cusid)
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('logSuppliersSVehicalDetails error: ' + textStatus);
            console.log('logSuppliersSVehicalDetails error: ' + textStatus);
        }
    });
}

function loadVehicalDetailsBySupplierId(data) {
    if (data.length === 0) {
        $('#logedSupplierVehicalData')
                .html("<tr><td colspan='8'class='text-center' style='color:red'>There no services data of Services provider..</td></tr>");
    } else {
        var rowData = "";
        $.each(data, function (i, tDataJson) {
            rowData += "<tr>"
                    + "<td><input type='hidden' id='" + i + "' value=" + tDataJson.doneseid + " />" + (i + 1) + "</td>"
                    + "<td>" + tDataJson.refnumber + "</td>"
                    + "<td>" + tDataJson.enginnumber + "</td>"
                    + "<td>" + tDataJson.chachinumber + "</td>"
                    + "<td>" + tDataJson.vehicalnumber + "</td>"
                    + "<td>" + tDataJson.vehicletype + "</td>"
                    + "<td>" + tDataJson.vehiclebrand + "</td>"
                    + "<td>" + tDataJson.vehiclemodle + "</td>"
                    + "<td>" + tDataJson.fueltype + "</td>"
                    + "<td><input type='button' class='btn btn-xs btn-success '  value='View' onclick='viewLogedSupplierVehicalData(" + tDataJson.vid + ");' /></td>"
                    + "</tr>";

        });
        $('#logedSupplierVehicalData').html(rowData);
    }
}


function viewLogedSupplierProfileData(supid) {
    var rootURL = '/rest/employeeservices/suplireoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + supid,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {
            tDataJson = data;
            $('#viewadd-supid').val(tDataJson.supid);
            $('#viewadd_companyname').val(tDataJson.companyname);
            $('#viewadd_contacnumber').val(tDataJson.contacnumber);
            $('#viewadd_hqaddress').val(tDataJson.hqaddress);
            $('#viewadd_email').val(tDataJson.email);
            $('#viewadd_managername').val(tDataJson.managername);
            $('#viewadd_managecontacnumber').val(tDataJson.managecontacnumber);
            $('#viewadd_managemail').val(tDataJson.managemail);
            $('#viewadd_vehicleperday').val(tDataJson.vehicleperday);

            $('#viewadd_companyname').prop("disabled", true);
            $('#viewadd_hqaddress').prop("disabled", true);
            $('#viewadd_vehicleperday').prop("disabled", true);
            $('#view-supplierModal').modal('show');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('viewLogedSupplierProfileData error: ' + errorThrown);
            console.log('viewLogedSupplierProfileData error: ' + errorThrown);
        }
    });
}

function viewLogedSupplierVehicalData(vid) {
    var eiddwithplus = CryptoJS.AES.encrypt(vid + "", "Secret Passphrase");
    var eidd = encodeURIComponent(eiddwithplus);
    var jspcall = "auth-supplier-vehical.jsp?id=" + "\'" + eidd + "\'";
    window.location.href = jspcall;
}

function logSupplierUpdateProfile() {
    var supid = $('#viewadd-supid').val();
    //alert(supid);
    var rootURL = '/rest/employeeservices/suplireoparation/supplierupdate';
    var formToJSONValue = formToJSONTwo();
    //alert(formToJSONValue);
    if (formToJSONValue !== null) {
        $.ajax({
            type: 'PUT',
            contentType: 'application/json',
            url: rootURL,
            dataType: "text",
            data: formToJSONValue,
            success: function (data, textStatus, jqXHR) {
                $("#view-supplierModal").modal('hide');
                logSuppliersSVehicalDetails(supid);
                logedSupplierProfileDetails(supid);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                //alert('Customer update  error: ' + errorThrown);
                console.log('Customer update  error: ' + errorThrown);
                //customerReset();
            }
        });
    } else {
        SupplierInputValidation();
    }
}

function formToJSONTwo() {
    //alert("hhhh");
    var supid = parseInt($('#viewadd-supid').val());
    var companyname = $('#viewadd_companyname').val();
    var contacnumber = $('#viewadd_contacnumber').val();
    var hqaddress = $('#viewadd_hqaddress').val();
    var email = $('#viewadd_email').val();
    var managername = $('#viewadd_managername').val();
    var managecontacnumber = $('#viewadd_managecontacnumber').val();
    var managemail = $('#viewadd_managemail').val();
    var vehicleperday = $('#viewadd_vehicleperday').val();
    //alert(supid);
    var supplierDataJson = null;
    if (contacnumber !== "" && email !== "" && managername !== "" && managecontacnumber !== "" && managemail !== "") {
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
        //alert(supplierDataJson);
        SupplierInputValidation();
        return supplierDataJson;
    }
}

function SupplierInputValidation() {
    $("#inputValidationModal").modal('show');
}