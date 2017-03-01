$(document).ready(function () {
    $("#paymentDate").datepicker({dateFormat: 'yy-mm-dd'});

});



function addDonServices(serid) {
    //var kk = $("#servicesproviderJsonObject").val(supplierObject);
    var vehicalObject = $("#getvehicalforserviesObject").val();
    //alert("jkjkj" + (vehicalObject.length !== 0) + "kkkk");
    var serid = $('#serid').val();
    var rootURL = '/AutosupportServices/rest/employeeservices/donsevicesoparation/addservicesprovider';
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
                    //alert("Error Add vehicle System" + errorThrown);
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

