<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="assets/img/favicon.ico" type="image/x-icon">
        <title>Auto Support Service(Pvt) LTD | Vehicle Profile</title>
        
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
                            <%@include file="divLoad/vehicle/vehicle-profile-div.jsp" %> 
                            <script src="implementation/js/vehical-profile-operation.js"></script> 

                            <!--Input validation model--> 
                            <%@include file="divLoad/input-validation-modal.jsp" %> 

                            <!--Delete-worning model--> 
                            <%@include file="divLoad/delete-worning-modal.jsp" %>

                            <!--Custom model--> 
                            <%@include file="divLoad/custom-modal.jsp" %>

                            <!--Vehicle Delete Error Modal-->   
                            <%@include file="divLoad/customer/customer-vehicle-delete-error-modal.jsp" %> 

                            <!--Common error model--> 
                            <%@include file="divLoad/common-error-modal.jsp" %>

                            <!--Vehicle add  model-->               
                            <%@include file="divLoad/vehicle/vehicle-edit-modal.jsp" %> 

                            <!--View Service model-->     
                            <%@include file="divLoad/provider/view-services-modal.jsp" %>

                        </div><!-- /col-lg-9 END SECTION MIDDLE -->

                    </div> <!--/row -->

                </section>
            </section>

            <%@include file="divLoad/adminfooter.jsp" %>

        </section>
        <!-- js placed at the end of the document so the pages load faster -->

        <%@include file="divLoad/cdnJSload.jsp" %>
        <!--script for this page-->

        <!-- load project js  file -->
        <script src="implementation/js/customer-operation.js"></script> 
        <script src="implementation/js/vehical-operation.js"></script>  
        <script src="implementation/js/modal-operation.js"></script> 
        <script src="implementation/js/service-history-display.js"></script> 
        <script src="implementation/js/globle-scripts.js"></script> 

        <script src="implementation/js/myNavFunction.js"></script>    

        <script >
            $(document).ready(function () {
                $('#vehicle-panal-1').addClass("active");

            });

        </Script>
    </body>
</html>
