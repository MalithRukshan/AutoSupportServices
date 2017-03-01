window.onload = findAllcustomer;


function addcustomerMod() {

    $("#customerModal").modal('show');

    customerReset();

    $('#customerModalTitle').text("Add New Customer");
    $('#add-customer').text("Add Customer");
    $('#add-customer').val("addcustome");
    $("#password").val(randomString(8));

}


function addVehicle() {

    $("#customerModal").modal('hide');
    $("#vechicleAddModal").modal('show');

    addVechicleMod();


}

function  CustomerInputValidation() {

    $('#inputValidationModal').modal('show');
    //alert("Enter All dield");

}

function customerReset() {

    $('#fristname').val("");
    $('#lastname').val("");
    $('#laddress').val("");
    $('#paddress').val("");
    $('#nic').val("");
    $('#password').val("");
    $('#email').val("");
    $('#contacnum').val("");
}


function findAllcustomer() {

    var rootURL = '/rest/employeeservices/custrmaroparation/findallcustermer';

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

            //alert('Error in loding customers : ' + textStatus);
            console.log('Error in loding customers : ' + textStatus);
        }
    });
}


function loadStartup(data) {

    var rowData = "";

    if (data.length === 0) {

        $('#view-customer')
                .html("<tr><td colspan='8'class='text-center' style='color:red'>There no Customer to display</td></tr>");

    } else {

        $.each(data, function (i, tDataJson) {

            rowData += "<tr>"
                    + "<td><input type='hidden' id='" + i + "' value=" + tDataJson.cuid + " />" + (i + 1) + "</td>"
                    + "<td>" + tDataJson.fristname + "</td>"
                    + "<td>" + tDataJson.lastname + "</td>"
                    + "<td>" + tDataJson.nic + "</td>"
                    + "<td>" + tDataJson.laddress + "</td>"
//                    + "<td>" + tDataJson.vehicles + "</td>"
                    + "<td>" + tDataJson.contacnumber + "</td>"
                    + "<td>" + tDataJson.email + "</td>"
                    + "<td><input type='button' class='btn btn-xs btn-success ' value='View Profile' onclick='viewCustomerProfile(" + i + ")' /></td>"
                    + "<td><input type='button' class='btn btn-xs btn-info ' value='Add Vehicle' onclick='addVechicleModHome(" + tDataJson.cuid + ")' /></td>"
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

        var rootURL = '/rest/employeeservices/custrmaroparation';
        $.ajax({
            type: 'GET',
            url: rootURL + '/search/' + searchKey,
            dataType: "json",
            success: function (data, textStatus, jqXHR) {
                //alert(data.length)
                loadStartup(data);

            },
            error: function (jqXHR, textStatus, errorThrown) {

                //alert('Customer search error ' + errorThrown);
                console.log('Customer search error ' + errorThrown);
            }
        });
    }
}


function addCustomer() {

    var rootURL = '/rest/employeeservices/custrmaroparation/addcustermer';

    var formToJSONValue = formToJSON();

    //alert(formToJSONValue);

    if (formToJSONValue !== null) {
        $.ajax({type: 'POST', contentType: 'application/json',
            url: rootURL,
            dataType: "text",
            data: formToJSONValue,
            success: function (data, textStatus, jqXHR) {
                $("#customerModal").modal('hide');
                customerReset();
                addVehicle();
                findAllcustomer();

                //$("html, body").animate({scrollTop: $(document).height()}, 1000);
            },
            error: function (jqXHR, textStatus, errorThrown) {

                CustomerInputValidation();

                //alert('addCustomer() Error: ' + errorThrown);
                console.log('addCustomer() Error: ' + errorThrown);
            }
        });


    } else {

        CustomerInputValidation();
        $("#inputValidationModal-H2").text("Please Enter all the fields");
        //alert('Error - Please enter all the fields..!');

    }

}

function formToJSON() {

    var nic = jQuery("#nic").val();
    var fristname = jQuery("#fristname").val();
    var lastname = jQuery("#lastname").val();
    var laddress = jQuery("#laddress").val();
    var paddress = jQuery("#paddress").val();
    var password = jQuery("#password").val();
    jQuery("#password").val(randomString(8));
    var password = randomString(8);
    var email = jQuery("#email").val();
    var contacnumber = jQuery("#contacnum").val();
    var regesterdate = getFormattedDate();

    // checkEmail(email);

    var customerDataJson = null;

    if (nic !== "" && fristname !== "" && password !== "" && contacnumber !== "") {
        //console.log('Json pass Success');
        customerDataJson = {
            nic: nic,
            fristname: fristname,
            lastname: lastname,
            laddress: laddress,
            paddress: paddress,
            password: password,
            email: email,
            contacnumber: contacnumber,
            regesterdate: regesterdate
        };

        $("#customerNIC").val(nic);
        //alert(customerDataJson);
        return JSON.stringify(customerDataJson);


    } else {
        CustomerInputValidation();
        $("#inputValidationModal-H2").text("Please Enter all the fields");
        console.log('Data fields are empty');
        return customerDataJson;

    }

}

function viewCustomerProfile(i) {
    var key = $("#" + i).val();
    var jspcall = "customer-profile.jsp?id=" + key;
    window.location.href = jspcall;

}
//
//function addCustomer() {
//
//
//    var customerJSONValue = customerToJson();
//
//    $("input:text").css({
//        'border-color': '#C0C0C0'
//    });
//    if (customerJSONValue.nic === "") {
//        $('#nic').css('border-color', 'red');
//
//    }
//    if (customerJSONValue.fristname === "") {
//        $('#fristname').css('border-color', 'red');
//    }
//    if (customerJSONValue.email === "") {
//        $('#email').css('border-color', 'red');
//
//    }
//    if (!isEmail(customerJSONValue.email)) {
//        CustomerInputValidation();
//        $("#inputValidationModal-H2").text("Please correctly enter email..!");
//
//    } else {
//
//        addCustomerAjax(customerJSONValue);
//
//    }
//
//}
//
//function addCustomerAjax(jsonData) {
//
//    var rootURL = '/AutosupportServices/rest/employeeservices/custrmaroparation/addcustermer';
//
//    var sendData = JSON.stringify(jsonData);
//    alert(sendData);
//
//    $.ajax({
//        type: 'POST',
//        contentType: 'application/json',
//        url: rootURL,
//        dataType: "text",
//        data: sendData,
//        success: function (data, textStatus, jqXHR) {
//            $("#customerModal").modal('hide');
//            customerReset();
//            addVehicle();
//            findAllcustomer();
//
//            //$("html, body").animate({scrollTop: $(document).height()}, 1000);
//        },
//        error: function (jqXHR, textStatus, errorThrown) {
//
//            alert('addCustomer() Error: ' + errorThrown);
//        }
//    });
//}
//
//function customerToJson() {
//
//    var nic, fristname, lastname, laddress, laddress, email, paddress, password, contacnumber = "";
//
//    nic = jQuery("#nic").val();
//    fristname = jQuery("#fristname").val();
//    lastname = jQuery("#lastname").val();
//    laddress = jQuery("#laddress").val();
//    paddress = jQuery("#paddress").val();
//    password = randomString(8);
//    jQuery("#password").val(password);
//    email = jQuery("#email").val();
//    contacnumber = jQuery("#contacnum").val();
//    regesterdate = getFormattedDate();
//    $("#customerNIC").val(nic);
//
//    var customerDataJson = null;
//
//    customerDataJson = {
//        nic: nic,
//        fristname: fristname,
//        lastname: lastname,
//        laddress: laddress,
//        paddress: paddress,
//        password: password,
//        email: email,
//        contacnumber: contacnumber,
//        regesterdate: regesterdate
//    };
//
//    return customerDataJson;
//}

//
//$('form').validate({
//    rules: {
//        firstname: {
//            minlength: 3,
//            maxlength: 15,
//            required: true
//        },
//        lastname: {
//            minlength: 3,
//            maxlength: 15,
//            required: true
//        }
//    },
//    highlight: function (element) {
//        $(element).closest('.form-group').addClass('has-error');
//    },
//    unhighlight: function (element) {
//        $(element).closest('.form-group').removeClass('has-error');
//    },
//    errorElement: 'span',
//    errorClass: 'help-block',
//    errorPlacement: function (error, element) {
//        if (element.parent('.input-group').length) {
//            error.insertAfter(element.parent());
//        } else {
//            error.insertAfter(element);
//        }
//    }
//});
//



$(document).ready(function () {
    var next = 1;
    $(".add-more").click(function (e) {
        e.preventDefault();
        var addto = "#field" + next;
        var addRemove = "#field" + (next);
        next = next + 1;
        var newIn = '<input autocomplete="off" class="input form-control" id="field' + next + '" name="field' + next + '" type="text">';
        var newInput = $(newIn);
        var removeBtn = '<button id="remove' + (next - 1) + '" class="btn btn-danger remove-me" >-</button></div><div id="field">';
        var removeButton = $(removeBtn);
        $(addto).after(newInput);
        $(addRemove).after(removeButton);
        $("#field" + next).attr('data-source', $(addto).attr('data-source'));
        $("#count").val(next);

        $('.remove-me').click(function (e) {
            e.preventDefault();
            var fieldNum = this.id.charAt(this.id.length - 1);
            var fieldID = "#field" + fieldNum;
            $(this).remove();
            $(fieldID).remove();
        });
    });

});
