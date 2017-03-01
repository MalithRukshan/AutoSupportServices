function viewServiceDetailsModal(serviceID) {
    // alert(serviceID);
    var rootURL = '/rest/employeeservices/donsevicesoparation';
    $.ajax({
        type: 'GET',
        url: rootURL + '/findbyid/' + serviceID,
        dataType: "json", // data type of response
        success: function (data, textStatus, jqXHR) {

            $('#servicesproviderprofile_serid').text(data.doneseid);
            $('#don-sv-date').text(data.serdate);
            $('#don-sv-name').text(data.servicesName);
            $('#don-sv-vehicalmodal').text(data.vehicle.vehiclemodle);
            $('#don-sv-regNo').text(data.vehicle.vehicalnumber);
            $('#don-sv-type').text(data.servicestype);
            $('#don-sv-material').text(data.matirial);
            $('#don-sv-mile').text(data.mile);
            $("#viewServiceModal").modal('show');
        },
        error: function (jqXHR, textStatus, errorThrown) {
            //alert('viewServiceDetailsModal(): ' + errorThrown);
            console.log('viewServiceDetailsModal(): ' + errorThrown);
        }
    });
}


function deleteDonServices_VehicleProfile(donserid) {


    $("#deleteWorningModal").modal('show');
    $("#btn-del-ok").click(function () {

        var rootURL = 'rest/employeeservices/donsevicesoparation';
        $.ajax({
            type: 'DELETE',
            url: rootURL + '/delete/' + donserid,
            success: function (data, textStatus, jqXHR) {
                $("#deleteWorningModal").modal('hide');
                loadVehicleProfileStartup();

            },
            error: function (jqXHR, textStatus, errorThrown) {
                $("#deleteWorningModal").modal('hide');
                console.log('deleteDonServicesId error' + errorThrown);
            }
        });
        $("#deleteWorningModal").modal('hide');
    });


}

function deleteDonServices_AuthProviderProfile(donserid) {


    $("#deleteWorningModal").modal('show');
    $("#btn-del-ok").click(function () {

        var rootURL = '/rest/employeeservices/donsevicesoparation';
        $.ajax({
            type: 'DELETE',
            url: rootURL + '/delete/' + donserid,
            success: function (data, textStatus, jqXHR) {
                $("#deleteWorningModal").modal('hide');
                loadAuthProviderProfileStartup();

            },
            error: function (jqXHR, textStatus, errorThrown) {
                $("#deleteWorningModal").modal('hide');
                console.log('deleteDonServicesId error' + errorThrown);
            }
        });
        $("#deleteWorningModal").modal('hide');
    });


}

function deleteDonServicesId(donserid) {

    $("#deleteWorningModal").modal('show');
    $("#btn-del-ok").click(function () {

        var rootURL = '/rest/employeeservices/donsevicesoparation';
        $.ajax({
            type: 'DELETE',
            url: rootURL + '/delete/' + donserid,
            success: function (data, textStatus, jqXHR) {
                $("#deleteWorningModal").modal('hide');
                var serid = $('#serviceProvideIDValue').val();
                findservicesproviderById(serid);
                findAllServicesProviderServices(serid);

            },
            error: function (jqXHR, textStatus, errorThrown) {
                $("#deleteWorningModal").modal('hide');
                console.log('deleteDonServicesId error' + errorThrown);
            }
        });
        $("#deleteWorningModal").modal('hide');
    });

}
