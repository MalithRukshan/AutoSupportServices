/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//----fuction for get time------------
function getFormattedDate() {
    var date = new Date();
    var str = date.getFullYear() + "-" + (date.getMonth() + 1) + "-"
            + date.getDate();
    // + " " + date.getHours() + ":" + date.getMinutes()
//            + ":" + date.getSeconds();

    return str;
}

function randomString(length) {
    var chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVa45WssDWXTZabcdefghiklmnopqrstuvwxyz'.split('');

    if (!length) {
        length = Math.floor(Math.random() * chars.length);
    }

    var str = '';
    for (var i = 0; i < length; i++) {
        str += chars[Math.floor(Math.random() * chars.length)];
    }
    return str;
}


function ValidateEmail(inputText)
{
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    if (inputText.value.match(mailformat))
    {
        return inputText;

    } else
    {
        //alert("You have entered an invalid email address!");
        console.log("You have entered an invalid email address!");

        return "";
    }
}

function checkEmail(el) {

    var email = $(el).val();

    var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
    if (!emailReg.test(email)) {
        CustomerInputValidation();

        $("#inputValidationModal-H2").text("Please Enter Valid email address");

    } else {

    }
}

function isEmail(el) {

    var email = $(el).val();

    var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;

    if (!emailReg.test(email)) {
        
        return false;

    } else {
        return true;
    }
}




function addCustomerOneClick() {

    var redirectLink = "customer.jsp";
    window.location.href = redirectLink;

    $("#customerModal").modal('show');

    $('#customerModalTitle').text("Add New Customer");
    $('#add-customer').text("New Customer");
    $('#add-customer').val("addcustome");


}
function viewCustomerOneClick() {

    var redirectLink = "customer.jsp";
    window.location.href = redirectLink;


}




