<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <title>Auto Support Service(Pvt) LTD | Customer Vehicle Details</title>
        <meta charset="utf-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="icon" href="assets/img/favicon.ico" type="image/x-icon">
        <%@include file="templateLoad/analytics.jsp" %>
        <%@include file="divLoad/cdnload.jsp" %>
        <script type="text/javascript" src="implementation/sessioncheckJS/sessionhaddler.js"></script>
        <!--<script type="text/javascript" src="implementation/cripto/aes.js"></script>-->
        <script src="http://crypto-js.googlecode.com/svn/tags/3.1.2/build/rollups/aes.js"></script>
    </head>

    <body>
        <section id="container" >

            <%@include file="divLoad/adminheader.jsp" %>

            <section>
                <div class="container">
                    <div class="col-md-12" style="margin-top: 5%">
                        <!--<h2 class="page-header" >
                            Vehicle <small>Profile</small>
                                                </h2>-->
                    </div>
                </div>  
            </section>

            <section class="content-wrap">
                <div class="container" style="margin-top: 3%">
                    <script type="text/javascript" src="implementation/profile-js/logedcustomer-viewvehical-profile.js"></script>
                    <%@include file="profile/view-customer-vehicle-profile-div.jsp" %>

                </div>
            </section><!-- /content-wrap -->

            <%@include file="divLoad/adminfooter.jsp" %>

        </section><!-- /content-wrap -->
    </body>
</html>