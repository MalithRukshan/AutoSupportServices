<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="assets/img/favicon.ico" type="image/x-icon">
        <title>Auto Support Service(Pvt) LTD | Supplier Profile</title>
        
        <%@include file="templateLoad/analytics.jsp" %>

        <!-- load project js  file -->
        <%@include file="divLoad/cdnload.jsp" %>
        <%@include file="divLoad/admin/auth-admin.jsp" %>
        <script src="implementation/js/supplier-profile-operation.js"></script>  
    </head>
    <body>
        <section id="container" >
            <%@include file="divLoad/suplliers/supplier-delete-modal.jsp" %>
            <%@include file="divLoad/suplliers/supplier-deleteConform-modal.jsp" %>
            <%@include file="divLoad/adminheader.jsp" %>
            <%@include file="divLoad/adminsidebar.jsp" %>

            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">
                    <div class="row">
                        <div class="col-md-12 main-chart">
                            <!-- customer container-->
                            <%@include file="divLoad/suplliers/supplier-profile-div.jsp" %> 

                            <%@include file="divLoad/suplliers/supplier-edit-modal.jsp" %>
                            <%@include file="divLoad/suplliers/input-validation-modal.jsp" %>

                        </div><!-- /col-lg-9 END SECTION MIDDLE -->

                    </div> <!--/row -->

                </section>
            </section>

            <!--customer model-->               

            <%@include file="divLoad/cdnJSload.jsp" %>
            <%@include file="divLoad/adminfooter.jsp" %>

        </section>

        <script src="implementation/js/globle-scripts.js"></script> 

        <script >
            $(document).ready(function () {
                $('#suppliers-panal-1').addClass("active");

            });


        </Script>


    </body>
</html>
