window.onload = findAllcustomer;

$(document).ready(function () {
    $("#paymentDate").datepicker({dateFormat: 'yy-mm-dd'});
});

function findAllcustomer() {
    $('#add-vehicle').val("addvehicala");
    allVehicle();

    //  $('#add-vehicle').val("addcustome");
    var rootURL = 'http://localhost:8080/AutosupportServices/rest/employeeservices/custrmaroparation/findallcustermer';
    $.ajax({
        type: 'GET',
        contentType: 'application/json',
        url: rootURL,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {
            $.each(data, function (index, value) {
                $('#selectmanu').append('<option value="' + value.cusid + '">' + "Name :-" + value.fristname + " " + value.lastname + "| Contact No :-" + value.contacnum + " | User Name :-" + value.username + '</option>');
            });

        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert('Get Customer error: ' + textStatus);
        }
    });
}
function addVehiclas() {


    if ($('#add-vehicle').val() === "addvehicala") {

        var rootURL = 'http://localhost:8080/AutosupportServices/rest/employeeservices/custrmaroparation';

        var id = $("#selectmanu").val();

        $.ajax({
            type: 'GET',
            url: rootURL + '/findbyid/' + id,
            success: function (data, textStatus, jqXHR) {
                // alert(data.cusid+"sdds");
                formToJSON2(data);



            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert('deleteWine error');
            }
        });
    } else {

        updatevehicles();
    }
}
function formToJSON2(value) {
    var jsonob = JSON.stringify({
        "customer": value,
        "refnumber": jQuery("#refnumber").val(),
        "vehicalNumber": jQuery("#vehicalNumber").val(),
        "chassiNumber": jQuery("#chassiNumber").val(),
        "engningNumber": jQuery("#engningNumber").val(),
        "paymentDate": jQuery("#paymentDate").val()


    });
    addvehicalsystem(jsonob);
    //console.log(jsonob);


}
function addvehicalsystem(datavehicalas) {
    //  if ($('#add-vehicle').val() === "addcustome") {

    console.log(datavehicalas);

    var rootURL = 'http://localhost:8080/AutosupportServices/rest/employeeservices/vehicalsoparation/addvehical';
    console.log('addvehiclas');
    $.ajax({
        type: 'POST',
        contentType: 'application/json',
        url: rootURL,
        dataType: "json",
        data: datavehicalas,
        success: function (data, textStatus, jqXHR) {

            alert("add suscuss addvehicalsystem");
            reset();
            allVehicle();
            $("html, body").animate({scrollTop: $(document).height()}, 1000);

        },
        error: function (jqXHR, textStatus, errorThrown) {
            reset();
            allVehicle();
            alert("Error addvehicalsystem");
        }
    });

}

function allVehicle() {

    var rootURL = 'http://localhost:8080/AutosupportServices/rest/employeeservices/vehicalsoparation/findallVehicals';
    $.ajax({
        type: 'GET',
        contentType: 'application/json',
        url: rootURL,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {

            // alert(data[0].customer.cusid);

            loadStartup(data);


        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert('addWine error: ' + textStatus);
        }
    });

}

function loadStartup(data) {


    var rowData = "";

    if (data.length === 0) {

        $('#vehicalview')
                .html("<tr><td colspan='7'class='text-center'>no any machin contend</td></tr>");


    } else {

        $.each(data, function (x, tDataJson) {

            rowData += "<tr>"
                    + "<td>" + (x + 1) + "<input type='hidden' id='" + x + "' value=" + tDataJson.vid + " />"
                    + "<input type='hidden' id='" + x + "id" + "' value=" + tDataJson.customer.cusid + " /></td>"
                    + "<td>" + tDataJson.refnumber + "</td>"
                    + "<td>" + tDataJson.vehicalNumber + "</td>"
                    + "<td>" + tDataJson.chassiNumber + "</td>"
                    + "<td>" + tDataJson.engningNumber + "</td>"
                    + "<td>" + tDataJson.paymentDate + "</td>"
                    + "<td><input type='button' class='btn btn-xs btn-info '  value='EDIT' onclick='edit(" + x + ")' /></td>"
                    + "<td><input type='button' class='btn btn-xs btn-danger '  value='DELETE' onclick='comfirmation(" + x + ");' /></td>"
                    + "<td><input type='button' class='btn btn-xs btn-success '  value='ViewCustomer' onclick='vewprofile(" + x + ");' /></td>"
                    + "</tr>";


        });

        $('#vehicalview').html(rowData);

    }

    //  allVehicle();


}

function reset() {

    $("#refnumber").val("");
    $("#vehicalNumber").val("");
    $("#chassiNumber").val("");
    $("#engningNumber").val("");
    $("#paymentDate").val("");

}
function comfirmation(x) {
    console.log(x);
    var idd = $("#" + x).val();
    // alert(id);

    deletecus(idd);

}

function deletecus(id) {

    var rootURL = 'http://localhost:8080/AutosupportServices/rest/employeeservices/vehicalsoparation';
    //var id = $("#"+idd).val();
    //  alert(id);

    console.log('deletecustomer');
    $.ajax({
        type: 'DELETE',
        url: rootURL + '/delete/' + id,
        success: function (data, textStatus, jqXHR) {
            alert('customer deleted successfully');

            allVehicle();

        },
        error: function (jqXHR, textStatus, errorThrown) {
            alert('deleteWine error');
        }
    });



}
;


function edit(i) {

    $('html, body').animate({scrollTop: 0}, 'fast');

    $('#add-vehicle').val("SaveUpdate");

    var id = $("#" + i).val();
    var rootURL = 'http://localhost:8080/AutosupportServices/rest/employeeservices/vehicalsoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + id,
        dataType: "json",
        success: function (data) {
            // alert(data.customer);

            $('#modlevalue').val(JSON.stringify(data));
            // jsonob=data.ccustomer;
            $('#vid').val(data.vid);
            $('#refnumber').val(data.refnumber);
            $('#vehicalNumber').val(data.vehicalNumber);
            $('#chassiNumber').val(data.chassiNumber);
            $('#engningNumber').val(data.engningNumber);
            $('#paymentDate').val(data.paymentDate);




        }
    });

}


function updatevehicles() {

    var rootURL = 'http://localhost:8080/AutosupportServices/rest/employeeservices/vehicalsoparation/vehicalsupdate';
    $.ajax({
        type: 'PUT',
        contentType: 'application/json',
        url: rootURL,
        dataType: "json",
        data: stringtojson(),
        success: function (data, textStatus, jqXHR) {

            // alert('Wine updated successfully');
            reset();
            allVehicle();
            $('#add-vehicle').val("addvehicala");
            $('#add-vehicle').text("Add");

        },
        error: function (jqXHR, textStatus, errorThrown) {
            //  alert('updateWine error: ' + textStatus);
            alert('updated error');
            reset();
            allVehicle();
            $('#add-vehicle').val("addvehicala");
            $('#add-vehicle').text("Add");
        }
    });
}

function stringtojson() {

    //  alert("fhdfghdf");
    var modle = $("#modlevalue").val();
    // alert(JSON.parse(modle).customer);
    var modle3 = JSON.parse(modle).customer;
    return JSON.stringify({
        "vid": jQuery("#vid").val(),
        "customer": modle3,
        "refnumber": jQuery("#refnumber").val(),
        "vehicalNumber": jQuery("#vehicalNumber").val(),
        "chassiNumber": jQuery("#chassiNumber").val(),
        "engningNumber": jQuery("#engningNumber").val(),
        "paymentDate": jQuery("#paymentDate").val()

    });

}
function vewprofile(id) {
    // vewprofile(id)
    var key = $("#" + id + "id").val();
    $("#customerid").val(key);
    alert(key);


}
























//##########################################################################################
/*
 function addcustomer() {
 
 
 
 if ($('#add-customer').val() === "addcustome") {
 
 var rootURL = 'http://localhost:8080/AutosupportServices/rest/employeeservices/custrmaroparation/addcustermer';
 //console.log('addcustomer');
 $.ajax({
 type: 'POST',
 contentType: 'application/json',
 url: rootURL,
 dataType: "json",
 data: formToJSON(),
 success: function (data, textStatus, jqXHR) {
 //alert("add suscuss");
 $("#customerModal").modal('hide');
 reset();
 findAllcustomer();
 
 },
 error: function (jqXHR, textStatus, errorThrown) {
 alert('addWine error: ' + errorThrown);
 }
 });
 
 } else {
 
 updatecustomer();
 
 }
 
 }
 
 function formToJSON() {
 
 return JSON.stringify({
 "fristname": jQuery("#fristname").val(),
 "lastname": jQuery("#lastname").val(),
 "address": jQuery("#address").val(),
 "username": jQuery("#username").val(),
 "password": jQuery("#password").val(),
 "email": jQuery("#email").val(),
 "contacnum": jQuery("#contacnum").val()
 });
 
 
 }
 function formToJSON2() {
 return JSON.stringify({
 "cusid": jQuery("#cuidedit").val(),
 "fristname": jQuery("#fristname").val(),
 "lastname": jQuery("#lastname").val(),
 "address": jQuery("#address").val(),
 "username": jQuery("#username").val(),
 "password": jQuery("#password").val(),
 "email": jQuery("#email").val(),
 "contacnum": jQuery("#contacnum").val()
 });
 
 
 }
 function reset() {
 $('#fristname').val("");
 $('#lastname').val("");
 $('#address').val("");
 $('#username').val("");
 $('#password').val("");
 $('#email').val("");
 $('#contacnum').val("");
 }
 
 
 function findAllcustomer() {
 
 $('#add-customer').val("addcustome");
 var rootURL = 'http://localhost:8080/AutosupportServices/rest/employeeservices/custrmaroparation/findallcustermer';
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
 alert('addWine error: ' + textStatus);
 }
 });
 }
 
 function loadStartup(data) {
 
 var rowData = "";
 
 if (data.length === 0) {
 
 $('#view-customer')
 .html("<tr><td colspan='7'class='text-center'>no any machin contend</td></tr>");
 
 
 } else {
 
 $.each(data, function (i, tDataJson) {
 
 rowData += "<tr>"
 + "<td><input type='hidden' id='" + i + "' value=" + tDataJson.cusid + " />" + (i + 1) + "</td>"
 + "<td>" + tDataJson.fristname + "</td>"
 + "<td>" + tDataJson.lastname + "</td>"
 + "<td>" + tDataJson.address + "</td>"
 + "<td>" + tDataJson.username + "</td>"
 + "<td>" + tDataJson.email + "</td>"
 + "<td>" + tDataJson.contacnum + "</td>"
 + "<td><input type='button' class='btn btn-xs btn-success ' value='EDIT' onclick='edit(" + i + ")' /></td>"
 + "<td><input type='button' class='btn btn-xs btn-danger ' value='DELETE' onclick='comfirmation(" + i + ")' /></td>"
 + "</tr>";
 
 
 });
 
 $('#view-customer').html(rowData);
 
 }
 }
 
 function findByName() {
 var searchKey = jQuery("#search-customer").val();
 if (searchKey.length === 0) {
 //  alert(searchKey);
 findAllcustomer();
 } else {
 
 var rootURL = 'http://localhost:8080/AutosupportServices/rest/employeeservices/custrmaroparation';
 $.ajax({
 type: 'GET',
 url: rootURL + '/search/' + searchKey,
 dataType: "json",
 success: function (data, textStatus, jqXHR) {
 //alert(data.length)
 
 loadStartup(data);
 
 },
 error: function (jqXHR, textStatus, errorThrown) {
 // alert('addWine error: ' + textStatus);
 }
 });
 }
 }
 
 
 function edit(i) {
 
 $('#add-customer').val("SaveUpdate");
 $("#customerModal").modal('show');
 $('#customerModalTitle').text("Edit Customer Details");
 $('#add-customer').text("Edit Customer");
 var id = jQuery("#" + i).val();
 var rootURL = 'http://localhost:8080/AutosupportServices/rest/employeeservices/custrmaroparation';
 $.ajax({
 type: 'GET',
 url: rootURL + '/findbyid/' + id,
 dataType: "json",
 success: function (data) {
 $('#cuidedit').val(data.cusid);
 $('#fristname').val(data.fristname);
 $('#lastname').val(data.lastname);
 $('#address').val(data.address);
 $('#username').val(data.username);
 $('#password').val(data.password);
 $('#email').val(data.email);
 $('#contacnum').val(data.contacnum);
 
 
 
 }
 });
 
 }
 ;
 
 
 function updatecustomer() {
 
 var rootURL = 'http://localhost:8080/AutosupportServices/rest/employeeservices/custrmaroparation/customerupdate';
 $.ajax({
 type: 'PUT',
 contentType: 'application/json',
 url: rootURL,
 dataType: "json",
 data: formToJSON2(),
 success: function (data, textStatus, jqXHR) {
 //alert('Wine updated successfully');
 $("#customerModal").modal('hide');
 reset();
 findAllcustomer();
 
 },
 error: function (jqXHR, textStatus, errorThrown) {
 
 alert('updateWine error: ' + textStatus);
 }
 });
 }
 
 
 
 
 function comfirmation(i) {
 
 //
 //    var x;
 //    if (confirm("are you sure you want to delect!") === true) {
 //        deletecus(i);
 //    } else {
 //
 //    }
 
 $("#deleteWorningModal").modal('show');
 
 $("#btn-del-ok").click(function () {
 deletecus(i);
 console.log(i);
 //$("#deleteWorningModal").modal('hide');
 });
 
 
 }
 
 function addcustomerMod() {
 
 
 $("#customerModal").modal('show');
 
 $('#customerModalTitle').text("Add New Customer");
 $('#add-customer').text("New Customer");
 $('#add-customer').val("addcustome");
 reset();
 
 }
 
 
 
 function deletecus(i) {
 
 
 var rootURL = 'http://localhost:8080/AutosupportServices/rest/employeeservices/custrmaroparation';
 var id = jQuery("#" + i).val();
 
 console.log('deletecustomer');
 $.ajax({
 type: 'DELETE',
 url: rootURL + '/delete/' + id,
 success: function (data, textStatus, jqXHR) {
 // alert('customer deleted successfully');
 $("#deleteWorningModal").modal('hide');
 findAllcustomer();
 
 },
 error: function (jqXHR, textStatus, errorThrown) {
 alert('deleteWine error');
 }
 });
 
 
 
 }
 
 */


