//$(document).ready(function () {
//    authVehicleProfileStartUp();
//
//});
//
//function authVehicleProfileStartUp() {
//
//    var vid = $('#vidRaw').val();
//    logedCustomerSVehicalDetailsLoad(vid);
//    logedCustomerVehicalServicesHistry(vid);
//}

function logedCustomerSVehicalDetailsLoad(vid) { //get customer json by customer id
    var rootURL = '/rest/employeeservices/vehicleoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + vid,
        dataType: "json",
        success: function (data, textStatus, jqXHR) {
            //console.log(data);
            $('#viewvehical-number').text(data.vehicalnumber);
            $('#viewvehical-number_one').text(data.refnumber);
            $('#viewvehical-type').text(data.vehicletype);
            $('#viewvehical-brand').text(data.vehiclebrand);
            $('#viewvehical-brand_one').text(data.vehiclebrand + ' ' + data.vehiclemodle);
            $('#viewvehical-modle').text(data.vehiclemodle);
            $('#viewvehical-fueltype').text(data.fueltype);
            $('#viewvehical-engine').text(data.enginnumber);
            $('#viewvehical-chassis').text(data.chachinumber);
            $('#viewvehical-supplier').text(data.suplire.companyname);
            $('#viewvehical-paymentdate').text(data.paymentdate);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('logedCustomerSVehicalDetailsLoad error: ' + errorThrown);
            console.log('logedCustomerSVehicalDetailsLoad error: ' + errorThrown);
            window.location.replace("../login.jsp");
        }
    });
}


//window.onload = viewprofilecustomershowVehiclehistryTableFilter;

function logedCustomerVehicalServicesHistry(vid) {
    var rootURL = '/rest/employeeservices/donsevicesoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findby_vehicle_id/' + vid,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {
            vloadVehicalServicesHistryByVid(data);
            //viewprofilecustomerloadCustomervehicalDetail(vid);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('logedCustomerVehicalServicesHistry error: ' + errorThrown);
            console.log('logedCustomerVehicalServicesHistry error: ' + errorThrown);
        }
    });
}

function vloadVehicalServicesHistryByVid(data) {
    if (data.length === 0) {
        $('#dddd')
                .html("<tr><td colspan='8'class='text-center' style='color:red'>There no services data of Services provider..</td></tr>");
    } else {
        var rowData = "";
        $.each(data, function (i, tDataJson) {
            rowData += "<tr>"
                    + "<td><input type='hidden' id='" + i + "' value=" + tDataJson.doneseid + " />" + (i + 1) + "</td>"
                    + "<td>" + tDataJson.serdate + "</td>"
                    + "<td>" + tDataJson.servicesName + "</td>"
                    + "<td>" + tDataJson.servicestype + "</td>"
                    + "<td>" + tDataJson.matirial + "</td>"
                    + "<td>" + tDataJson.mile + "</td>"
                    + "<td>" + tDataJson.servicesprovider.companyname + "</td>"
//                    + "<td><input type='button' class='btn btn-xs btn-success '  value='View' onclick='viewprofilecustomervewprofile(" + tDataJson.vid + ");' /></td>"
                    + "</tr>";

        });

        $('#dddd').html(rowData);
    }
}