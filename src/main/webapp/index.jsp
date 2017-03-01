<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
    <head>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="image/favicon.ico" type="image/x-icon">
        <title>Auto Support Service(Pvt) LTD | Home</title>
        <link type="text/css" rel="stylesheet" href="css/carousel.css">
        <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">

        <link href="css/font-awesome.css" rel="stylesheet" type="text/css">
        <link href="css/icon-font.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/owl.carousel.css" rel="stylesheet" type="text/css">
        <link href="css/photobox.css" rel="stylesheet" type="text/css">
        <link href="css/responsive.css" rel="stylesheet" type="text/css">
        <link href="css/customer.css" rel="stylesheet" type="text/css">

        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
        
        <%@include file="templateLoad/analytics.jsp" %>
        <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script> 
        <script src="js/implementation/offer-display-operation.js"></script>
    </head>
    <body>
        <header class="bg-img">
            <div class="container">
                <div class="upper-header">
                    <div class="logo"><a href="index.jsp"><img src="images/logo3.png" alt="cardinal" ></a></div>
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
                <!--                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>				
                                </div>-->
        </header>
        <div class="container rel" >
            <%@include file="templateLoad/navibar.jsp" %>
        </div>
        <section>
            <div class="home-banner home-slider owl-carousel">
                <div class="item">
                    <div class="sliderimg" style="background-image:url(images/main-img.png);"></div>
                    <div class="banner-container">
                        <div class="banner">
                            <div class="banner-content banner-content-arrow">
                                <div class="banner-inner-1">
                                    <div class="banner-inner-2">
                                        <h4><span class="text-secondary">CAR &nbsp;&nbsp;</span> WASH &nbsp;&nbsp;</span> REPAIR &nbsp;&nbsp; TIRE & BATTERY</h4>
                                        <h1>WE  GIVE<span class="text-secondary"> THE BEST</span>  SERVICE</h1>
                                        <p> &nbsp;&nbsp;&nbsp;&nbsp;                                </p>
                                        <button type="button" onclick="location.href = 'servicesbooking.jsp';" class="btn btn-secondary">BOOK NOW</button>
                                        <button type="button"   onclick="location.href = 'contact.jsp';" class="btn btn-primary">CONTACT US</button>
                                    </div><!-- /banner-inner-2 -->
                                </div><!-- /banner-inner-1 -->
                            </div><!-- /banner-content -->
                        </div><!-- /banner -->			

                    </div>
                </div>
                <div class="item">
                    <div class="sliderimg" style="background-image:url(images/main-img2.png);"></div>
                    <div class="banner-container">
                        <div class="banner">
                            <div class="banner-content banner-content-arrow">
                                <div class="banner-inner-1">
                                    <div class="banner-inner-2">
                                        <h4><span class="text-secondary">CAR &nbsp;&nbsp;</span> WASH &nbsp;&nbsp;</span> REPAIR &nbsp;&nbsp; TIRE & BATTERY</h4>
                                        <h1>WE  GIVE<span class="text-secondary"> THE BEST</span>  SERVICE</h1>
                                        <p> &nbsp;&nbsp;&nbsp;&nbsp;                                </p>
                                        <button type="button" onclick="location.href = 'servicesbooking.jsp';" class="btn btn-secondary">BOOK NOW</button>
                                        <button type="button"   onclick="location.href = 'contact.jsp';" class="btn btn-primary">CONTACT US</button>
                                    </div><!-- /banner-inner-2 -->
                                </div><!-- /banner-inner-1 -->
                            </div><!-- /banner-content -->
                        </div><!-- /banner -->			

                    </div>
                </div>

            </div><!-- /home-banner -->
        </section>

        <section class="bg-gallery clearfix" style="margin-top:0px;">
            <div class="container" style="margin-top: 20px">
                <div class="section-heading">
                    <!--                    <h2>ADVERTISEMENT</h2> -->
                    <!--<p>Saque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</p>-->
                </div>
            </div>
            <div class="section-detail ">
                <div class="gallery-container">


                    <div class="caroursel rotator-main" data-setting = '{
                         "width":1000,
                         "margin":1,
                         "height":250,
                         "rotatorWidth":640,
                         "rotatorHeight":400,
                         "scale":0.8,
                         "algin":"middle"
                         }'>
                        <ul class="rotator-list" id="rotator-list-div">
                            <!--
                                                        <li class="rotator-item"><img src="https://unsplash.it/640/400?image=820" width="100%" height="100%"></li>
                                                        <li class="rotator-item"><img src="https://unsplash.it/640/400?image=723" width="100%" height="100%"></li>
                                                        <li class="rotator-item"><img src="https://unsplash.it/640/400?image=523"  width="100%" height="100%"></li>
                                                        <li class="rotator-item"><img src="https://unsplash.it/640/400?image=623"  width="100%" height="100%"></li>
                                                        <li class="rotator-item"><img src="https://unsplash.it/640/400?image=423" width="100%" height="100%"></li>
                                                        <li class="rotator-item"><img src="https://unsplash.it/640/400?image=323" width="100%" height="100%"></li>
                                                        <li class="rotator-item"><img src="https://unsplash.it/640/400?image=223" width="100%" height="100%"></li>
                                                        <li class="rotator-item"><img src="https://unsplash.it/640/400?image=123" width="100%" height="100%"></li>
                                                        <li class="rotator-item"><img src="https://unsplash.it/640/400?image=123" width="100%" height="100%"></li>-->
                        </ul>
                        <div class="rotator-btn rotator-prev-btn"></div>
                        <div class="rotator-btn rotator-next-btn"></div>
                    </div>
                    <!--<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>-->
                    <script src="js/jquery.carousel.js"></script>
                    <script>
                                    findAllAddImages2();
                                    Caroursel.init($('.caroursel'));

                    </script>
                </div>
            </div>
        </section>

        <section class="section bg-gray-gradient">
            <div class="container">
                <div class="section-heading" style="padding-top: 45px">
                    <h2>WHAT WE DO</h2>
                    <p>Auto Support services Pvt Ltd , provide below services island wide
                        for the customers to use our network stations for
                        their requirement</p>
                </div>
                <div class="section-detail">
                    <div class="row">
                        <div class="col-md-4 col-sm-6">
                            <div class="service-box">
                                <div class="service-1">
                                    <div class="service-img"> <img src="images/service1-img.png" class="img-responsive" alt="image"> </div>
                                    <div class="service-name">
                                        <div class="service-icon"> <a href="#"><i class="icon-local-car-wash"></i></a> </div>
                                        <h5>Car Wash and Service</h5>
                                        <div class="service-detail">

                                            <p>Under warranty given to customers there are free services offered and Labor charges on below items will be 100% free of charge</p>


                                            <a href="#">Learn More<i class="fa fa-play"></i></a> </div>
                                    </div>
                                </div>
                            </div><!-- /service-box -->
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="service-box">
                                <div class="service-1">
                                    <div class="service-img"> <img src="images/service2-img.jpg" class="img-responsive" alt="image"> </div>
                                    <div class="service-name">
                                        <div class="service-icon"> <a href="#"><i class="icon-local-car-wash"></i></a> </div>
                                        <h5>Emergency Breakdown Recovery</h5>
                                        <div class="service-detail">
                                            <p>In a breakdown on anywhere, we will arrange to fix your vehicle on the spot or at mechanical service center.</p>
                                            <a href="#">Learn More<i class="fa fa-play"></i></a> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6">
                            <div class="service-box">
                                <div class="service-1">
                                    <div class="service-img"> <img src="images/service3-img.jpg" class="img-responsive" alt="image"> </div>
                                    <div class="service-name">
                                        <div class="service-icon"> <a href="#"><i class="icon-tools-2"></i></a> </div>
                                        <h5>Battery Replacement</h5>
                                        <div class="service-detail">
                                            <p>When you with a battery issue, we will arrange you a battery replacement for your location.</p>
                                            <a href="#">Learn More<i class="fa fa-play"></i></a> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section" style="padding-bottom: 0px">
            <div class="container">
                <div class="section-heading" style="padding-top: 20px">
                    <h2>WHY COOSE US?</h2>
                    <p style="height: 0px"></p>
                </div>
                <div class="section-detail">
                    <div class="tab-section">
                        <div class="row">
                            <div class="col-md-3 col-sm-4">
                                <div class="tab">
                                    <ul class="nav nav-stacked">
                                        <li class="active"><a data-toggle="tab" href="#about" aria-expanded="true"> <span class="curve"><i class="icon-rocket2"></i></span> <span class="curve-text">Our Mission</span></a></li>
                                        <li><a data-toggle="tab" href="#service"><span class="curve"><i class="icon-cog12"></i></span><span class="curve-text">Our Service</span></a></li>
                                        <li><a data-toggle="tab" href="#offers"><span class="curve"><i class="icon-tools-2"></i></span><span class="curve-text">Special Offers</span></a></li>
                                        <li><a data-toggle="tab" href="#delivery"><span class="curve"><i class="icon-like"></i></span><span class="curve-text">To Obtain Our Service</span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-8">
                                <div class="tab-content">
                                    <div id="about" class="tab-pane fade in active">
                                        <h4>Our Mission</h4>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <ul class="services-name">
                                                    <li><i class="icon-steering-wheel"></i><span style="font-size: 16px">To provide comprehensive value added services to manage warranty and allied services offered to the vehicles by the sellers.</span></li>
                                                    <li><i class="icon-steering-wheel"></i><span style="font-size: 16px">To provide road way assistance to motorists in any emergency situation</span></li>
                                                    <li><i class="icon-steering-wheel"></i><span style="font-size: 16px">To Provide assistance and technical support to maintain a trouble free vehicle.</span></li>
                                                    <li><i class="icon-steering-wheel"></i><span style="font-size: 16px">To Provide special offers and discounts on vehicle accessories and components.</span></li>

                                                </ul>
                                            </div>

                                        </div>

                                    </div>
                                    <div id="service" class="tab-pane fade">
                                        <h4>Our Service</h4>
                                        <p style="font-size: larger">Auto support Services Pvt Ltd is established to provide managerial
                                            services for the warranty &  allied services offered by the vehicle
                                            sellers to ultimate users. In the competitive vehicle trade it has
                                            become a essential requirement to offer the warranty on the
                                            vehicles that sells to the end user. At the same time it need to
                                            manager the warranty offered and for which our company has
                                            come forward to manage the warranty on behalf of the trader.<br><br>
                                            Auto Support services Pvt Ltd , provide below services island wide
                                            for the customers to use our network stations for
                                            their requirement.


                                        </p>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <ul class="services-name">
                                                    <li><i class="icon-keyboard5"></i><span><h4>Full Auto Service & Maintenance</h4></span></li>
                                                    <p style="font-size: large">
                                                        Under warranty given to customers there are free
                                                        services offered and Labor charges on below items will
                                                        be 100% free of charge
                                                    </p>
                                                    <ul>
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-6">  

                                                                    <li><i class="icon-tools-2"></i><span><h5>Under Wash</h5></span></li> 
                                                                    <li><i class="icon-tools-2"></i><span><h5>Body wash</h5></span></li> 
                                                                    <li><i class="icon-tools-2"></i><span><h5>Vacuum Cleaning</h5></span></li> 

                                                                </div>

                                                                <div class="col-md-6">  


                                                                    <li><i class="icon-tools-2"></i><span><h5>Oil & Coolant Change</h5></span></li> 
                                                                    <li><i class="icon-tools-2"></i><span><h5>Body Wax</h5></span></li> 
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ul>
                                                    <p style="font-size: large">
                                                        How ever for the material used for the services will be
                                                        charged at a concessionary price.
                                                    </p>

                                                </ul>

                                                <!--  -->
                                                <ul class="services-name">
                                                    <li><i class="icon-keyboard5"></i><span><h4>Mechanical And Technical Services</h4></span></li>
                                                    <p  aling="justify" style="font-size: large" >
                                                        Based on the warranty offered on Hybrid vehicles Battery
                                                        will be scanned and checked and will be given a report on
                                                        the condition, Gearbox will be checked and technical
                                                        report on the condition will be issued. Also on request client
                                                        will be provided any other technical support and assistance
                                                        that required to maintain a trouble free vehicle.<br> <br>
                                                        Under the above categories customers are able to select our
                                                        service and technical service center for his convenience and
                                                        we will manage the warranty given by the seller until end of
                                                        the warranty period.<br><br>
                                                        Going beyond the general warranty conditions Auto Support
                                                        service is also provide following island wide additional 24 x 7
                                                        services to motorists an emergency support with.
                                                    </p>
                                                    <ul>
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-12">  

                                                                    <li><i class="icon-tools-2"></i><span><h5>Towing Services</h5></span></li> 
                                                                    <li><i class="icon-tools-2"></i><span><h5>Garage Services</h5></span></li> 
                                                                    <li><i class="icon-tools-2"></i><span><h5>Battery Back up and technical services</h5></span></li> 
                                                                    <li><i class="icon-tools-2"></i><span><h5>Wheels and Tire related services</h5></span></li> 
                                                                    <li><i class="icon-tools-2"></i><span><h5>Auto Air condition Services</h5></span></li> 
                                                                    <li><i class="icon-tools-2"></i><span><h5>Hotel and Accommodation</h5></span></li> 
                                                                    <li><i class="icon-tools-2"></i><span><h5>Ambulance & fire Services</h5></span></li> 
                                                                    <li><i class="icon-tools-2"></i><span><h5>Rent a Car or Taxi services on an Emergency Needs</h5></span></li> 
                                                                </div>


                                                            </div>
                                                        </div>
                                                    </ul>


                                                </ul>
                                                <!-- -->
                                                <ul class="services-name">
                                                    <li><i class="icon-keyboard5"></i><span><h4>Service Package</h4></span></li>

                                                    <ul>
                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-6">  

                                                                    <li><i class="icon-tools-2"></i><span><h5>Under Wash</h5></span></li> 
                                                                    <li><i class="icon-tools-2"></i><span><h5>Vacuum</h5></span></li> 

                                                                </div>
                                                                <div class="col-md-6">  

                                                                    <li><i class="icon-tools-2"></i><span><h5>Body Wash</h5></span></li> 
                                                                    <li><i class="icon-tools-2"></i><span><h5>Waxing</h5></span></li> 

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ul>
                                                    <ul>

                                                        <div class="col-md-12">
                                                            <div class="row">
                                                                <div class="col-md-12">  
                                                                    <li><i class="icon-tools-2"></i><span><h5>Oil Change (Engine/Coolant)</h5></span></li> 

                                                                    <div class="col-md-12">
                                                                        <ul>
                                                                            <li><i class="icon-wrench3"></i><span><h6>Battery Scan (Paid by vehicle owner)</h6></span></li> 
                                                                            <li><i class="icon-wrench3"></i><span><h6>Vehicle Scan (Paid by vehicle owner)</h6></span></li> 
                                                                            <li><i class="icon-wrench3"></i><span><h6>Material Cost must paid by vehicle owner</h6></span></li> 

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ul>
                                                </ul>
                                            </div>
                                        </div>
                                        <a href="#" class="btn btn-primary">Learn More</a>
                                    </div>
                                    <div id="offers" class="tab-pane fade">
                                        <h4>Special Offers and Discounts</h4>
                                        <p style="font-size: larger">Members are entitle for special offers and discounts offered on
                                            following items though our network of island wide dealers</p>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <ul class="services-name">
                                                    <li><i class="icon-steering-wheel"></i><span style="font-size: 16px">Tires</span></li>
                                                    <li><i class="icon-steering-wheel"></i><span style="font-size: 16px">Batteries</span></li>
                                                    <li><i class="icon-steering-wheel"></i><span style="font-size: 16px">Spare parts</span></li>
                                                    <li><i class="icon-steering-wheel"></i><span style="font-size: 16px">Lubricants</span></li>
                                                    <li><i class="icon-steering-wheel"></i><span style="font-size: 16px">Hotels and Accommodations</span></li>

                                                </ul>
                                            </div>

                                        </div>
                                        <!--  <a href="#" class="btn btn-primary">Learn More</a>-->
                                    </div>
                                    <div id="delivery" class="tab-pane fade">
                                        <h4>How To Obtain Our Service</h4>
                                        <p style="font-size: larger">Customer has to register with us prior to obtain the
                                            service and obtain a member ship with the
                                            company. Once the membership is obtained customers
                                            details will be linked in to our system. After words its a
                                            matter of dialing or connecting to our system to get the
                                            24 x 7 support service from any part of Sri Lanka from
                                            our network of service centers.</p>


                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-1">
                                <div class="offer-img"> <img src="images/service-man.png" class="img-responsive" alt="image"> </div>
                            </div>
                        </div>
                    </div><!-- /tab-sectionssection -->
                </div>
            </div>
        </section>

        <!--<section class="bg-map">
                        <div class="container">
                                <div class="section-heading">
                                        <h2>WHAT OUR CLIENT SAY</h2>
                                </div>
                                <div class="section-detail no-padding-bottom">
                                        <div class="testimonial">
                                                <div class="testim-carousel owl-carousel">
                                                        <div class="item">
                                                                <div class="testim-box">
                                                                        <div class="client-comments">
                                                                                <p>? Suscipit lobortis dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam<br/>
                                                                                        erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.?</p>
                                                                        </div>
                                                                        <div class="client-img"> <img src="images/client-img.png" class="img-responsive" alt="image"></div>
                                                                        <div class="person-detail">
                                                                                <h5>Lucica Katzeline</h5>
                                                                                <p>Professtional Details</p>
                                                                        </div>
                                                                </div><!-- /testim-box --> <!--
                                                        </div>
                                                        <div class="item">
                                                                <div class="testim-box">
                                                                        <div class="client-comments">
                                                                                <p>? Suscipit lobortis dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam<br/>
                                                                                        erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.?</p>
                                                                        </div>
                                                                        <div class="client-img"> <img src="images/client-img.png" class="img-responsive" alt="image"></div>
                                                                        <div class="person-detail">
                                                                                <h5>Lucica Katzeline</h5>
                                                                                <p>Professtional Details</p>
                                                                        </div>
                                                                </div><!-- /testim-box -->
        <!--	</div>
                <div class="item">
                        <div class="testim-box">
                                <div class="client-comments">
                                        <p>? Suscipit lobortis dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam<br/>
                                                erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis.?</p>
                                </div>
                                <div class="client-img"> <img src="images/client-img.png" class="img-responsive" alt="image"></div>
                                <div class="person-detail">
                                        <h5>Lucica Katzeline</h5>
                                        <p>Professtional Details</p>
                                </div>
                        </div><!-- /testim-box -->
        <!--</div>
</div><!-- /testim-carousel -->
        <!--	</div>
        </div>
</div>
</section> -->
        <!--<section class="bg-counter">
                <div class="container">
                        <div class="state-section">
                                <div class="row">
                                        <div class="col-md-3 col-sm-6">
                                                <div class="washes-done">
                                                        <i class="fa fa-tint"></i>
                                                        <span class="stat-count">8564</span>
                                                        <h5>Repairs Solved</h5>
                                                </div>
                                        </div>
                                        <div class="col-md-3 col-sm-6">
                                                <div class="washes-done">
                                                        <i class="fa fa-smile-o"></i>
                                                        <span class="stat-count">9630</span>
                                                        <h5>Happy Clients</h5>
                                                </div>
                                        </div>
                                        <div class="col-md-3 col-sm-6">
                                                <div class="washes-done">
                                                        <i class=" icon-dollar3"></i>
                                                        <span class="stat-count">1452</span>
                                                        <h5>Premium Customers</h5>
                                                </div>
                                        </div>
                                        <div class="col-md-3 col-sm-6">
                                                <div class="washes-done">
                                                        <i class="fa fa-users"></i>
                                                        <span class="stat-count">112</span>
                                                        <h5>Clever Workers</h5>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
        </section>-->
        <!--<section>
                <div class="container">
                        <div class="section-heading">
                                <h2>EXCELLENT WORKERS</h2>
                                <p>Saque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</p>
                        </div>
                        <div class="section-detail">
                                <div class="row">
                                        <div class="col-md-3 col-sm-6">
                                                <div class="team-box">
                                                        <div class="team-member">
                                                                <div class="member-img"> <img src="images/worker-01.png" class="img-responsive" alt="" /> </div>
                                                                <div class="member-detail">
                                                                        <h5>DAVID MARTIN</h5>
                                                                        <p>MACHANIC EXPERT</p>
                                                                </div>
                                                                <div class="member-hover">
                                                                        <div class="half-circle"></div>
                                                                        <div class="member-detail">
                                                                                <h5>DAVID MARTIN</h5>
                                                                                <p>MACHANIC EXPERT</p>
                                                                                <div class="member-contact">
                                                                                        <span>PHONE:+61 123 456 789<br/>
                                                                                        Email: <a href="mailto:example@info.com">example@info.com</a>
                                                                                        </span>
                                                                                </div>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                </div>
                                        </div>
                                        <div class="col-md-3 col-sm-6">
                                                <div class="team-box">
                                                        <div class="team-member">
                                                                <div class="member-img"> <img src="images/worker-02.png" class="img-responsive" alt="" /> </div>
                                                                <div class="member-detail">
                                                                        <h5>DUKE VENDER</h5>
                                                                        <p>SPECIAL MACHANIC</p>
                                                                </div>
                                                                <div class="member-hover">
                                                                        <div class="half-circle"></div>
                                                                        <div class="member-detail">
                                                                                <h5>DUKE VENDER</h5>
                                                                                <p>SPECIAL MACHANIC</p>
                                                                                <div class="member-contact"> <span>PHONE:+61 123 456 789<br/>
                                                                                        Email: <a href="mailto:example@info.com">example@info.com</a></span> </div>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                </div>
                                        </div>
                                        <div class="col-md-3 col-sm-6">
                                                <div class="team-box">
                                                        <div class="team-member">
                                                                <div class="member-img"> <img src="images/worker-03.png" class="img-responsive" alt="" /> </div>
                                                                <div class="member-detail">
                                                                        <h5>ROCK LANCER</h5>
                                                                        <p>CHIEF MACHANIC</p>
                                                                </div>
                                                                <div class="member-hover">
                                                                        <div class="half-circle"></div>
                                                                        <div class="member-detail">
                                                                                <h5>ROCK LANCER</h5>
                                                                                <p>CHIEF MACHANIC</p>
                                                                                <div class="member-contact"> <span>PHONE:+61 123 456 789<br/>
                                                                                        Email: <a href="mailto:example@info.com">example@info.com</a></span> </div>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                </div>
                                        </div>
                                        <div class="col-md-3 col-sm-6">
                                                <div class="team-box">
                                                        <div class="team-member">
                                                                <div class="member-img"> <img src="images/worker-04.png" class="img-responsive" alt="" /> </div>
                                                                <div class="member-detail">
                                                                        <h5>CHRIS BINVA</h5>
                                                                        <p>ENGINE MACHANIC</p>
                                                                </div>
                                                                <div class="member-hover">
                                                                        <div class="half-circle"></div>
                                                                        <div class="member-detail">
                                                                                <h5>CHRIS BINVA</h5>
                                                                                <p>ENGINE MACHANIC</p>
                                                                                <div class="member-contact"> <span>PHONE:+61 123 456 789<br/>
                                                                                        Email: <a href="mailto:example@info.com">example@info.com</a></span> </div>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
        </section>-->
        <!--<section class="bg-blog">
                <div class="container">
                        <div class="section-heading">
                                <h2>LATEST NEWS FROM BLOG</h2>
                                <p>Saque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</p>
                        </div>
                        <div class="section-detail">
                                <div class="blog-controls">
                                        <span class="caro-prev caro-prev-blog"></span>
                                        <span class="caro-next caro-next-blog"></span>
                                </div>
                                <div class="blog-carousel owl-carousel">
                                        <div class="item">
                                                <div class="blog-box">
                                                        <div class="blog-text">
                                                                <ul class="blog-info">
                                                                        <li>March 20, 2015</li>
                                                                        <li><a href="#">5 comments</a></li>
                                                                </ul>
                                                                <h4><a href="blog-single-post.html">The standard blog post title</a></h4>
                                                                <p>Friendly neighbors there that's where we meet. Can you tell me how to get how to get to Sesam Street Texas tea <a href="blog-single-post.html" class="read-more">[...]</a></p>
                                                                <div class="post-img">
                                                                        <img src="images/admin-1.png" class="img-responsive" alt="image">
                                                                </div>
                                                                <p class="favorite">By<a href="#" class="text-secondary"> Admin</a>,  Favorite  23 </p>
                                                        </div>
                                                        <figure class="blog-image">
                                                                <img src="images/blog-1.jpg" alt="image">
                                                                <figcaption><a href="#" class="blog-link"><i class="fa fa-plus"></i></a></figcaption>
                                                        </figure>
                                                </div><!-- /blog-box -->
        <!--</div>
        <div class="item">
                <div class="blog-box">
                        <div class="blog-text">
                                <ul class="blog-info">
                                        <li>March 20, 2015</li>
                                        <li><a href="#">5 comments</a></li>
                                </ul>
                                <h4><a href="blog-single-post.html">The standard blog post title</a></h4>
                                <p>Friendly neighbors there that's where we meet. Can you tell me how to get how to get to Sesam Street Texas tea <a href="blog-single-post.html" class="read-more">[...]</a></p>
                                <div class="post-img">
                                        <img src="images/admin-2.png" class="img-responsive" alt="image">
                                </div>
                                <p class="favorite">By<a href="#" class="text-secondary"> Admin</a>,  Favorite  23 </p>
                        </div>
                        <figure class="blog-image">
                                <img src="images/blog-2.jpg" alt="image">
                                <figcaption><a href="#" class="blog-link"><i class="fa fa-plus"></i></a></figcaption>
                        </figure>
                </div><!-- /blog-box -->
        <!--	</div>
                <div class="item">
                        <div class="blog-box">
                                <div class="blog-text">
                                        <ul class="blog-info">
                                                <li>March 20, 2015</li>
                                                <li><a href="#">5 comments</a></li>
                                        </ul>
                                        <h4><a href="blog-single-post.html">The standard blog post title</a></h4>
                                        <p>Friendly neighbors there that's where we meet. Can you tell me how to get how to get to Sesam Street Texas tea <a href="blog-single-post.html" class="read-more">[...]</a></p>
                                        <div class="post-img">
                                                <img src="images/admin-1.png" class="img-responsive" alt="image">
                                        </div>
                                        <p class="favorite">By<a href="#" class="text-secondary"> Admin</a>,  Favorite  23 </p>
                                </div>
                                <figure class="blog-image">
                                        <img src="images/blog-1.jpg" alt="image">
                                        <figcaption><a href="#" class="blog-link"><i class="fa fa-plus"></i></a></figcaption>
                                </figure>
                        </div><!-- /blog-box -->
        <!--</div>
        <div class="item">
                <div class="blog-box">
                        <div class="blog-text">
                                <ul class="blog-info">
                                        <li>March 20, 2015</li>
                                        <li><a href="#">5 comments</a></li>
                                </ul>
                                <h4><a href="blog-single-post.html">The standard blog post title</a></h4>
                                <p>Friendly neighbors there that's where we meet. Can you tell me how to get how to get to Sesam Street Texas tea <a href="blog-single-post.html" class="read-more">[...]</a></p>
                                <div class="post-img">
                                        <img src="images/admin-2.png" class="img-responsive" alt="image">
                                </div>
                                <p class="favorite">By<a href="#" class="text-secondary"> Admin</a>,  Favorite  23 </p>
                        </div>
                        <figure class="blog-image">
                                <img src="images/blog-2.jpg" alt="image">
                                <figcaption><a href="#" class="blog-link"><i class="fa fa-plus"></i></a></figcaption>
                        </figure>
                </div><!-- /blog-box -->
        <!--</div>
</div><!-- /blog-carousel -->
        <!--	</div><!-- /section-detail -->
        <!--</div>
</section> -->
        <section>
            <div class="container">
                <div class="partners" padding-top: 0px>
                     <div class="section-heading" style="padding-top: 20px">
                        <h2>BRANDS &amp; PARTNERS</h2>
                    </div>
                    <div class="section-detail">
                        <div class="brands-section">
                            <div class="brands-controls">
                                <span class="caro-prev caro-prev-brand"></span>
                                <span class="caro-next caro-next-brand"></span>
                            </div>

                            <div class="brand-carousel owl-carousel">


                                <div class="item">
                                    <a href="#" class="brand-image "><img src="images/prodcut/3.png" alt="image"></a>
                                </div>
                                <div class="item">
                                    <a href="#" class="brand-image "><img src="images/prodcut/4.png" alt="image"></a>
                                </div>
                                <div class="item">
                                    <a href="#" class="brand-image "><img src="images/prodcut/5.png" alt="image"></a>
                                </div>
                                <div class="item">
                                    <a href="#" class="brand-image "><img src="images/prodcut/6.png" alt="image"></a>
                                </div>

                                <div class="item">
                                    <a href="#" class="brand-image "><img src="images/prodcut/8.png" alt="image"></a>
                                </div>

                                <div class="item">
                                    <a href="#" class="brand-image "><img src="images/prodcut/10.png" alt="image"></a>
                                </div>
                                <div class="item">
                                    <a href="#" class="brand-image "><img src="images/prodcut/11.png" alt="image"></a>
                                </div>
                                <div class="item">
                                    <a href="#" class="brand-image "><img src="images/prodcut/7.png" alt="image"></a>
                                </div>
                                <div class="item banaersize">
                                    <a href="#" class="brand-image "><img src="images/prodcut/1.png" alt="image"></a>
                                </div>
                                <div class="item banaersize">
                                    <a href="#" class="brand-image "><img src="images/prodcut/12.png" alt="image"></a>
                                </div>

                                <div class="item banaersize">
                                    <a href="#" class="brand-image "><img src="images/prodcut/14.png" alt="image"></a>
                                </div>
                                <div class="item banaersize">
                                    <a href="#" class="brand-image "><img src="images/prodcut/15.png" alt="image"></a>
                                </div>
                                <div class="item banaersize">
                                    <a href="#" class="brand-image "><img src="images/prodcut/16.png" alt="image"></a>
                                </div>
                                <div class="item banaersize">
                                    <a href="#" class="brand-image "><img src="images/prodcut/17.png" alt="image"></a>
                                </div>
                                <div class="item banaersize">
                                    <a href="#" class="brand-image "><img src="images/prodcut/18.png" alt="image"></a>
                                </div>
                                <div class="item banaersize">
                                    <a href="#" class="brand-image "><img src="images/prodcut/19.png" alt="image"></a>
                                </div>
                                <div class="item banaersize">
                                    <a href="#" class="brand-image "><img src="images/prodcut/20.png" alt="image"></a>
                                </div>
                                <div class="item banaersize">
                                    <a href="#" class="brand-image "><img src="images/prodcut/21.png" alt="image"></a>
                                </div>

                                <div class="item banaersize">
                                    <a href="#" class="brand-image "><img src="images/prodcut/23.png" alt="image"></a>
                                </div>


                            </div>
                        </div>
                    </div><!-- /section-detail -->
                </div>
            </div>
        </section>

        <footer>
            <%@include file="templateLoad/footer.jsp" %>
        </footer>

        <script type="text/javascript" src="js/jquery.js"></script> 
        <script type="text/javascript" src="js/bootstrap.js"></script> 
        <script type="text/javascript" src="js/owl.carousel.min.js"></script> 
        <script type="text/javascript" src="js/jquery.photobox.js"></script> 
        <script type="text/javascript" src="js/script.js"></script> 
        <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
        <script type="text/javascript">

                        var locations = [
                            ['Bondi Beach', -33.890542, 151.274856, 4],
                            ['Coogee Beach', -33.923036, 151.259052, 5],
                            ['Cronulla Beach', -34.028249, 151.157507, 3],
                            ['Manly Beach', -33.80010128657071, 151.28747820854187, 2],
                            ['Maroubra Beach', -33.950198, 151.259302, 1]
                        ];

                        var map = new google.maps.Map(document.getElementById('map-street'), {
                            zoom: 15,
                            center: new google.maps.LatLng(-33.92, 151.25),
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        });

                        var infowindow = new google.maps.InfoWindow();

                        var marker, i;

                        for (i = 0; i < locations.length; i++) {
                            marker = new google.maps.Marker({
                                position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                                map: map
                            });

                            google.maps.event.addListener(marker, 'click', (function (marker, i) {
                                return function () {
                                    infowindow.setContent(locations[i][0]);
                                    infowindow.open(map, marker);
                                };
                            })(marker, i));
                        }

        </script>
        <script>
            $(document).ready(function () {
                $('#home-nav').addClass("active");

            });
        </Script> 
    </body>

</html>
