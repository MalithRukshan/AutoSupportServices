<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">  
        <meta http-equiv="pragma" content="no-cache" />
        <title>login | Auto Support Service(Pvt)LTD  </title>
        <link rel="icon" href="image/favicon.ico" type="image/x-icon">
        <meta name="generator" content="Bootply" />
        <meta name="viewport"
              content="width=device-width, initial-scale=1, maximum-scale=1">
                <%@include file="templateLoad/analytics.jsp.jsp" %>

        <link
            href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"
            rel="stylesheet">
        <script>
            sessionStorage.setItem("Page2Visited", "True");
        </script>


        <style type="text/css">
            .modal-dialog {
                margin: 80px auto;
                width: 500px;
            }

            body {
                background-image: url(image/tron_lamborghini_aventador-1920x1080.jpg);
                background-repeat: no-repeat;
                font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
                display: block !important;
            }

            .text-center {
                font-size: 35px;
                font-family: serif;
                font-style: bold italic;
                color: #330066; /*#FF0066,#000066,#003399,#CC0066*/
            }

            .modal-dialog{
                opacity: 0.8;
            }


            .modal-backdrop
            {
                opacity:0.5 !important;
            }
        </style>
        <script>

            function loginuserfuntion() {

                var rootURL = '/rest/employeeservices/loginoparation/loginser';
                var formToJSONValue = loginn();
                $.ajax({
                    type: 'POST',
                    contentType: 'application/json',
                    url: rootURL,
                    dataType: "json",
                    data: formToJSONValue,
                    success: function (data, textStatus, jqXHR) {
                        loginredirect(data);
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        //alert("Wrong Username or Password");
                        $("#loginErrorModal").modal("show");
                        //console.log(jqXHR);
                        console('loginuserfuntion : ' + errorThrown);

                    }
                });
            }
            function loginn() {
                var username = jQuery("#username").val();
                var password = jQuery("#password").val();
                var ServicesDataJson = null;
                if (username !== "" && password !== "") {
                    ServicesDataJson = {
                        username: username,
                        password: password

                    };
                    return JSON.stringify(ServicesDataJson);
                }
            }

            function loginredirect(data) {
                // alert(data.userid);
                // alert(data.loginRols);
                var userid = data.userid;
                var loginrol = data.loginRols;
                if (userid !== null && loginrol !== null) {

                    if (userid !== 0 && loginrol === "C_customer") {

                        window.location.replace("AdminPanel/auth-customer-profile.jsp");

                    } else if (userid !== 0 && loginrol === "S_provider")
                    {
                        window.location.replace("AdminPanel/auth-serviceprovider-profile.jsp");

                    } else if (userid !== 0 && loginrol === "suplire") {

                        window.location.replace("AdminPanel/auth-supplier-profile.jsp");

                    } else if (userid !== 0 && loginrol === "admin") {

                        window.location.replace("AdminPanel/index.jsp");

                    } else {

                        window.location.replace("404-page.html");

                    }

                } else {

                    window.location.replace("login.jsp");

                }
            }

        </script>

    </head>
    <body>

        <!--login modal-->
        <div id="loginModal" class="modal show" tabindex="-1" role="dialog"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                                aria-hidden="true" onclick="window.location = 'index.jsp';">×</button>
                        <h1 class="text-center">
                            <img src="image/logo3_1.png" alt="Auto"
                                 style="position: absolute; left: 0px; top: 20px; width: 160px; height: 60px">Login
                        </h1>
                    </div>
                    <div class="modal-body">


                        <form class="form col-md-12 center-block" 
                              method="post" role="form">

                            <div class="form-group">

                                <div id="error-login"> </div>

                            </div>

                            <div class="form-group">
                                <input type="text" name="username" class="form-control input-lg"
                                       placeholder="Username" id="username" required autofocus>
                            </div>
                            <div class="form-group">
                                <input type="password" name="password"
                                       class="form-control input-lg" placeholder="Password" id="password" required>
                            </div>
                            </br>
                            <div class="form-group">
                                <button type="button" class="btn btn-primary btn-block" onclick="loginuserfuntion();" >Log In</button>
                                </br> <span class="pull-right"><a href="index.jsp">Register</a></span><span><a
                                        href="#">Need help?</a></span>
                            </div>
                        </form>
                    </div>

                    <div class="modal-footer">
                        <div class="col-md-12">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- script references -->

        <%--include file="login-error-modal.jsp"--%>

        <script
        src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    </body>
</html>