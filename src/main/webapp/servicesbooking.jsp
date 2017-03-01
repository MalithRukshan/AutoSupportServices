<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="image/favicon.ico" type="image/x-icon">
        <title>Auto Support Service(Pvt) LTD | Book</title>  
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/responsive.css" rel="stylesheet" type="text/css">

        <%@include file="templateLoad/analytics.jsp" %>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    </head>

    <body>

        <header class="bg-img">
            <div class="container">
                <div class="upper-header">
                    <div class="logo"><a href="index.jsp"><img src="images/logo3.png" alt="cardinal"></a></div>
                    <div class="contact-strip">
                        <div class="timing" style="font-style: italic" >
                            <h5>OPENING HOURS:</h5>
                            <h4 style="color: #ff5252;">MONDAY-TO-SUNDAY: 24 HOURSE</h4>
                        </div>
                        <div class="phone-no">
                            <h5>HOTLINE:</h5>
                            <span class="text-secondary" style="font-size: 20px"> +(94) 702 707 707</span>
                        </div>
                    </div><!-- /contact-strip -->
                </div><!-- /upper-header -->
                <!--<div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                </button>				
                        </div>-->
            </div>


        </header>

        <div class="container rel">
            <%@include file="templateLoad/navibar.jsp" %>
        </div>



        <div class="section-banner" style="background-image:url(images/book-mainimg.png);"></div>

        <section>
            <div class="container">
                <div class="title-box">
                    <div class="title-box-inner">
                        <h3 class="page-title">Book your car wash</h3>
                        <ul class="breadcrumb">
                            <li><a href="#">Home</a></li>
                            <li class="active"><a href="#">Wash Book</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <section class="content-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <div class="book-form">
                            <form id="book_form" action="http://wpmines.com/demos/cardinal/book.html" class="row" name="bookingform" method="post">
                                <div class="form-group row">

                                    <label class="col-md-3 col-sm-3">YOUR NAME</label>
                                    <div class="col-sm-6">
                                        <div class="input"> <i class="fa fa-user"></i>
                                            <input class="form-control" type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">

                                    <label class="col-md-3 col-sm-3">PHONE NUMBER</label>
                                    <div class="col-sm-6">
                                        <div class="input"> <i class="fa fa-phone"></i>
                                            <input class="form-control" type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">

                                    <label class="col-md-3 col-sm-3">EMAIL</label>
                                    <div class="col-sm-6">
                                        <div class="input"> <i class="fa fa-envelope-o"></i>
                                            <input class="form-control" type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">

                                    <label class="col-md-3 col-sm-3">VEHICLE MODEL</label>
                                    <div class="col-sm-6">
                                        <div class="input"> <i class="fa fa-car"></i>
                                            <input class="form-control" type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">

                                    <label class="col-md-3 col-sm-3">VEHICLE NUMBER</label>
                                    <div class="col-sm-6">
                                        <div class="input"> <i class="fa fa-flag"></i>
                                            <input class="form-control" type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">

                                    <label class="col-md-3 col-sm-3">TYPE OF SERVICE</label>
                                    <div class="col-sm-6">
                                        <div class="input">
                                            <div class="select-box">
                                                <select name="dropdown">
                                                    <option value="3000">Select The Service Package</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row form-dropdown">

                                    <label class="col-md-3 col-sm-3">SELECT YOUR OUTLET</label>
                                    <div class="col-sm-6">
                                        <div class="input">
                                            <div class="select-box">
                                                <select name="dropdown">
                                                    <option value="3000">Select The Nearby Outlet</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">

                                    <label class="col-md-3 col-sm-3">DATE FOR WASH</label>
                                    <div class="col-sm-6">
                                        <div class="input"> <i class="fa fa-calendar"></i>
                                            <input class="form-control" type="text" placeholder="(DD/MM/YYYY)">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">

                                    <label class="col-md-3 col-sm-3">RESIDENTIAL ADDRESS</label>
                                    <div class="col-sm-6"> 
                                        <div class="input"><i class="fa fa-map-marker"></i>
                                            <input class="form-control" type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">

                                    <label class="col-md-3 col-sm-3">MESSAGE ( IF ANY ) </label>
                                    <div class="col-sm-6">
                                        <div class="input">
                                            <textarea class="form-control"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">

                                    <div class="col-sm-6 col-sm-push-3">
                                        <input type="submit" class="btn btn-primary btn-lg" value="Send Message">
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="side-bar">
                            <!--					<div class="widget blog-search">
                                                                            <form method="post" action="#">
                                                                                    <input type="text" placeholder="Search">
                                                                                    <input type="submit" value="submit">
                                                                            </form>
                                                                    </div> /blog-search -->
                            <div class="widget about-car" align="center">
                                <h5 class="widget-title">Services Booking</h5>
                                <img src="images/mega-menu-img.png" class="img-responsive" alt="image">
                            </div>
                            <div class="widget widget-social-icons">
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin-square"></i></a>
                                <a href="#"><i class="fa fa-facebook-square"></i></a>
                                <a href="#"><i class="fa fa-skype"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                            <!--                                        
                                                                    <div class="widget recent-work">
                                                                            <h4 class="widget-title">RECENT WORKS</h4>
                                                                            <ul class="recent-work-img">
                                                                                    <li>
                                                                                            <div class="recent-img">
                                                                                                    <img src="images/recent-work1.png" class="img-responsive" alt="iamge">
                                                                                                    <div class="work-hover"> <a href="#"><i class="fa fa-link"></i></a> </div>
                                                                                            </div>
                                                                                    </li>
                                                                                    <li>
                                                                                            <div class="recent-img">
                                                                                                    <img src="images/recent-work2.png" class="img-responsive" alt="image">
                                                                                                    <div class="work-hover"> <a href="#"><i class="fa fa-link"></i></a> </div>
                                                                                            </div>
                                                                                    </li>
                                                                                    <li>
                                                                                            <div class="recent-img last">
                                                                                                    <img src="images/recent-work3.png" class="img-responsive" alt="image">
                                                                                                    <div class="work-hover"> <a href="#"><i class="fa fa-link"></i></a> </div>
                                                                                            </div>
                                                                                    </li>
                                                                                    <li>
                                                                                            <div class="recent-img">
                                                                                                    <img src="images/recent-work4.png" class="img-responsive" alt="image">
                                                                                                    <div class="work-hover"> <a href="#"><i class="fa fa-link"></i></a> </div>
                                                                                            </div>
                                                                                    </li>
                                                                                    <li>
                                                                                            <div class="recent-img">
                                                                                                    <img src="images/recent-work5.png" class="img-responsive" alt="image">
                                                                                                    <div class="work-hover"> <a href="#"><i class="fa fa-link"></i></a> </div>
                                                                                            </div>
                                                                                    </li>
                                                                                    <li>
                                                                                            <div class="recent-img last">
                                                                                                    <img src="images/recent-work6.png" class="img-responsive" alt="image">
                                                                                                    <div class="work-hover"> <a href="#"><i class="fa fa-link"></i></a> </div>
                                                                                            </div>
                                                                                    </li>
                                                                            </ul>
                                                                    </div>
                            -->

                        </div>
                    </div>
                </div>
            </div>
        </section><!-- /content-wrap -->


        <footer>
            <%@include file="templateLoad/footer.jsp" %>
        </footer>

        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/script.js"></script>

        <script>
            $(document).ready(function () {
                $('#booking-nav').addClass("active");

            });
        </Script>

    </body>

</html>