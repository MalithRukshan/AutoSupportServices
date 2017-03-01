<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="assets/img/favicon.ico" type="image/x-icon">
        <title>Auto Support Service(Pvt) LTD | Services Provider Profile</title>
        
        <%@include file="templateLoad/analytics.jsp" %>

        <%@include file="divLoad/cdnload.jsp" %>
        <%@include file="divLoad/admin/auth-admin.jsp" %>

    </head>

    <body>

        <section id="container" >

            <%@include file="divLoad/adminheader.jsp" %>
            <%@include file="divLoad/adminsidebar.jsp" %>

            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">
                    <div class="row">
                        <div class="col-md-12 main-chart">
                            <!-- customer container-->
                            <script src="implementation/js/servicesprovider_profile_operation.js"></Script>
                                <%@include file="divLoad/provider/servicesprovider-profile.jsp" %>
                                <%@include file="divLoad/provider/services-provider-edit-modal.jsp" %>
                                <%@include file="divLoad/provider/servicesProvider-deleteCheck-modal.jsp" %>
                                <%@include file="divLoad/provider/servicesProvider-deleteConform-modal.jsp" %>
                                <%@include file="divLoad/provider/services-of-servicesproviders-add-modal.jsp" %>
                                <%@include file="divLoad/provider/provider-input-validation-modal.jsp" %>
                            <!--View Service model-->     
                            <%@include file="divLoad/provider/view-services-modal.jsp" %>
                            <!--Delete-worning model--> 
                            <%@include file="divLoad/delete-worning-modal.jsp" %>



                        </div><!-- /col-lg-9 END SECTION MIDDLE -->

                    </div> <!--/row -->

                </section>
            </section>

            <!--customer model-->               


            <%@include file="divLoad/adminfooter.jsp" %>

        </section>
        <!-- js placed at the end of the document so the pages load faster -->

        <%@include file="divLoad/cdnJSload.jsp" %>      
        <!--script for this page-->

        <!-- load project js  file -->  
        <script src="implementation/js/service-history-display.js"></script> 
        <script src="implementation/js/globle-scripts.js"></script> 
        <script src="implementation/js/myNavFunction.js"></script>  

        <script >
            $(document).ready(function () {
                $('#service-panal-1').addClass("active");

            });

        </Script>


    </body>
</html>
