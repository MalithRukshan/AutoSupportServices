<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="assets/img/favicon.ico" type="image/x-icon">
        <title>Auto Support Service(Pvt)LTD | Admin Home</title>
        
        <%@include file="templateLoad/analytics.jsp" %>

        <%@include file="divLoad/cdnload.jsp" %>
        <%@include file="divLoad/admin/auth-admin.jsp" %>

        <script src="implementation/chart/Chart.js"></script>
        <script src="implementation/chart/mycharts.js"></script>

    </head>

    <body>

        <section id="container" >

            <%@include file="divLoad/adminheader.jsp" %>
            <%@include file="divLoad/adminsidebar.jsp" %>

            <!--main content start-->
            <section id="main-content">
                <section class="wrapper">

                    <div class="row">
                        <div class="col-lg-9 main-chart">
                            <%--<%@include file="admincontaner1.jsp" %>--%>
                            <%--<%@include file="admincontaner2.jsp" %>--%>
                            <%--<%@include file="admincontaner3.jsp" %>--%>
                            <%--<%@include file="admincontaner4.jsp" %>--%>  
                            <%@include file="divLoad/admin/admin-user-count.jsp" %>

                            <%@include file="divLoad/admin/admin-chart.jsp" %>

                            <!--customer add model-->               
                            <%@include file="divLoad/customer/customer-add-modal.jsp" %> 
                        </div><!-- /col-lg-9 END SECTION MIDDLE -->

                        <div class="col-lg-3 ds">
                            <%@include file="divLoad/adminnotification.jsp" %>
                            <%@include file="divLoad/adminteammembers.jsp" %>   
                            <%--    <%@include file="divLoad/admincalender.jsp" %> --%>  
                        </div><!-- /col-lg-3 -->
                    </div> <!--/row -->

                </section>
            </section>

            <%@include file="divLoad/adminfooter.jsp" %>

        </section>
        <!-- js placed at the end of the document so the pages load faster -->

        <%@include file="divLoad/cdnJSload.jsp" %>

        <!--script for this page-->
        <!--        <script src="assets/js/sparkline-chart.js"></script>    
                <script src="assets/js/zabuto_calendar.js"></script>	-->

        <!-- load project js  file -->
        <script src="implementation/js/globle-scripts.js"></script>  
        <script src="implementation/js/myNavFunction.js"></script> 
        <script >

            $(document).ready(function () {
                $('#admin-panal-1').addClass("active");

            });


        </Script>

    </body>
</html>
