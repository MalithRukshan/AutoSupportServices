<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="image/favicon.ico" type="image/x-icon">
        <title>Auto Support Service(Pvt) LTD | Contact</title>     
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css">
        <link href="css/responsive.css" rel="stylesheet" type="text/css">
        <link href="css/customer.css" rel="stylesheet" type="text/css">
        <link href="css/icon-font.css" rel="stylesheet" type="text/css">
        
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

        <div class="section-banner" style="background-image:url(images/contact-mainimg.png);"></div>

        <section>
            <div class="container">
                <div class="title-box">
                    <div class="title-box-inner">
                        <h3 class="page-title">Contact Us</h3>
                        <ul class="breadcrumb">
                            <li><a href="#">Home</a></li>
                            <li class="active"><a href="#">Contact us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!--<div class="section-map" id="map-street"></div>-->
        <section class="contact-bg-color">
            <div class="container">
                <div class="contact-main">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="reach-us">
                                <h3>HOW TO REACH US</h3>
                                <div class="working-hours"> <i class="fa fa-clock-o"></i>
                                    <h4>WORKING HOURS</h4>
                                    <span>MONDAY-TO-SUNDAY: 24 HOURSE</span> </div>
                                <div class="address-info"> <i class="fa fa-newspaper-o"></i>
                                    <h4>ADDRESS INFO</h4>
                                    9/1 Wijaya Place
                                    Gangodawila,
                                    Nugegoda<br>
                                    SriLanka
                                </div>
                                <div class="contact-info"> <i class="fa fa-phone"></i>
                                    <h4>CONTACT INFO</h4>
                                    <span>+(94) 77 960 0640</span><br>
                                    <span>+(94) 71 230 6229</span> </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="mail-us">
                                <h3>SEND US EMAIL</h3>
                            </div>
                            <div class="main-contact-form">
                                <div id="message"></div>
                                <form id="maincontact_form" action="#" name="contactform" method="post">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <i class="fa fa-user"></i>
                                                <input class="form-control" id="contact_name" type="text" placeholder="YOUR NAME*">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <i class="fa fa-envelope-o"></i>
                                                <input class="form-control" id="contact_email" type="email" placeholder="EMAIL ADDRESS*">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <i class="fa fa-phone"></i>
                                                <input class="form-control" id="contact_phone" type="text" placeholder="PHONE">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <i class="fa fa-lightbulb-o"></i>
                                                <input class="form-control" id="contact_subject" type="text" placeholder="SUBJECT">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <i class="fa fa-comment"></i>
                                                <textarea class="form-control" id="contact_message" placeholder="MESSAGE"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <button type="submit" id="submit" class="btn btn-primary">SEND MESSAGE</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <footer>

            <%@include file="templateLoad/footer.jsp" %>

        </footer>

        <script type="text/javascript" src="js/jquery.js"></script> 
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/jquery.photobox.js"></script> 
        <script type="text/javascript" src="js/script.js"></script> 


        <!-- Google Map -->
        <!-- <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
         <script type="text/javascript">
             /*var locations = [
              ['<div class="infobox">121 King Street, Melbourne Victoria 3000<br />United States of America, CA 90017</div>', 40.5458921,-74.1843522, 2],
              ['<div class="infobox">121 King Street, Melbourne Victoria 3000<br />United States of America, CA 90017</div>', 40.550121,-74.187378, 3],
              ['<div class="infobox">Vineland Avenue, Staten Island, NY<br />United States of America, CA 90017</div>', 40.5474649,-74.187468, 2]
              ];
      
              var map = new google.maps.Map(document.getElementById('map-street'), {
              zoom: 15,
              scrollwheel: false,
              navigationControl: true,
              mapTypeControl: false,
              scaleControl: false,
              draggable: true,
      
              center: new google.maps.LatLng(40.550121,-74.187378),
              mapTypeId: google.maps.MapTypeId.ROADMAP
              });
      
              var infowindow = new google.maps.InfoWindow();
      
              var marker, i;
      
              for (i = 0; i < locations.length; i++) {  
      
              marker = new google.maps.Marker({
              position: new google.maps.LatLng(locations[i][1], locations[i][2]), 
              map: map ,
              icon: 'images/marker.png'
              });
      
              google.maps.event.addListener(marker, 'click', (function(marker, i) {
              return function() {
              infowindow.setContent(locations[i][0]);
              infowindow.open(map, marker);
              };
              })(marker, i));
              }*/
             var myLatlng = new google.maps.LatLng(-25.363882, 131.044922);
             var mapOptions = {
                 zoom: 15,
                 center: myLatlng
             }
             var map = new google.maps.Map(document.getElementById("map-street"), mapOptions);
 
             var marker = new google.maps.Marker({
                 position: myLatlng,
                 title: "Hello World!"
             });
 
         // To add the marker to the map, call setMap();
             marker.setMap(map);
 
         </script>-->

        <script>
            $(document).ready(function () {
                $('#contact-nav').addClass("active");

            });
        </Script>



    </body>

</html>
