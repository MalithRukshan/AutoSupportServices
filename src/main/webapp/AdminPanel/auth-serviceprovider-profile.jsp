<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <title>Auto Support Service(Pvt) LTD | Service Provider Profile</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="assets/img/favicon.ico" type="image/x-icon"> 
        <%@include file="templateLoad/analytics.jsp" %>
        <%@include file="divLoad/cdnload.jsp" %>
        <script type="text/javascript" src="implementation/sessioncheckJS/sessionhaddler.js"></script>
        <!-- <script type="text/javascript" src="implementation/cripto/aes.js"></script>-->
        <script src="http://crypto-js.googlecode.com/svn/tags/3.1.2/build/rollups/aes.js"></script>
    </head>

    <body>
        <section id="container" >

            <%@include file="divLoad/adminheader.jsp" %>

            <section>
                <div class="container">
                    <div class="col-md-12" style="margin-top: 5%">

                    </div>
                </div>  
            </section>

            <section class="content-wrap">
                <div class="container" style="margin-top: 3%">

                    <script type="text/javascript" src="implementation/profile-js/logedservicesprovide-profile.js"></script>
                    <%@include file="profile/serviceprovider_profile.jsp" %>                 
                    <%@include file="profile/view-services-of-servicesproviders-add-modal.jsp" %>
                    <%@include file="profile/services-provider-edit-modal.jsp" %>
                    <%@include file="divLoad/input-validation-modal.jsp" %>
                    <!--Delete-worning model--> 
                    <%@include file="divLoad/delete-worning-modal.jsp" %>
                    <!--View Service model-->     
                    <%@include file="divLoad/provider/view-services-modal.jsp" %>

                    <!--View Service model-->     
                    <%@include file="divLoad/provider/servicesprovider-input-validation-modal.jsp" %>
                    <!-- Service edit  model-->     
                    <%@include file="profile/view-services-of-servicesproviders-edit-modal.jsp" %>
                    <!-- Service Input validation  model-->     
                    <%@include file="divLoad/provider/servicesprovider-input-validation-modal.jsp" %>

                </div>
            </section><!-- /content-wrap -->

            <script src="implementation/js/service-history-display.js"></script> 

            <%@include file="divLoad/adminfooter.jsp" %>
        </section>

    </body>
</html>