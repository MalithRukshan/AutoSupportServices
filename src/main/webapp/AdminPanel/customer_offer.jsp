<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="assets/img/favicon.ico" type="image/x-icon">
        <title>Auto Support Service(Pvt) LTD | Offer</title>
        
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


                            <%@include file="divLoad/offer/customer-offer-header.jsp" %>
                            <%@include file="divLoad/offer/offer-send-modal.jsp" %>
                            <script src="implementation/offer/offer-operation.js"></script>                            

                        </div><!-- /col-lg-9 END SECTION MIDDLE -->
                    </div> <!--/row -->
                </section>
            </section>
            <!--customer model-->               
            <%@include file="divLoad/adminfooter.jsp" %>
        </section>
        <!-- js placed at the end of the document so the pages load faster -->
        <%@include file="divLoad/cdnJSload.jsp" %>
        <script src="implementation/js/globle-scripts.js"></script>  
        <script src="implementation/js/myNavFunction.js"></script>   

        <script >

            $(document).ready(function () {
                $('#offer-panal-1').addClass("active");

            });


        </Script>
    </body>
</html>
