<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="assets/img/favicon.ico" type="image/x-icon">
        <title>Auto Support Service(Pvt)LTD | Operation</title>
        
        <%@include file="templateLoad/analytics.jsp" %>

        <%@include file="divLoad/cdnload.jsp" %>
        <%@include file="divLoad/admin/auth-admin.jsp" %>
        <script src="http://maps.googleapis.com/maps/api/js">
        </script>

        <style>


            #map {
                height:540px;
                width: 100%;
                position: relative;
            }
            #over_map {
                top: 60px;
                left: 530px;
                margin-left: 400px;
                z-index: 100000;
                position: absolute;
                width: 300px;
            }
            #over_map1 {
                top: 60px;
                left: 530px;
                margin-left: 400px;
                z-index: 100000;
                position: absolute;
                width: 300px;
            }
            #com {
                font-size:24px;
                color: #4d90fe;
                font-family:Arial, Helvetica, sans-serif;
            }
            .controlss {
                margin-top: 10px;
                border: 1px solid transparent;
                border-radius: 2px 0 0 2px;
                box-sizing: border-box;
                -moz-box-sizing: border-box;
                height: 32px;
                outline: none;
                box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
            }
            .infowindow
            {
                font-size:24px;
                width:100%;
                color: #000;
                font-family:Arial, Helvetica, sans-serif;
            }

            #pac-input {
                background-color: #fff;
                font-family: Roboto;
                font-size: 15px;
                font-weight: 300;
                margin-left: 12px;
                padding: 0 11px 0 13px;
                text-overflow: ellipsis;
                width: 300px;
                z-index: 100000;
            }

            #pac-input:focus {
                border-color: #4d90fe;
            }

            .pac-container {
                font-family: Roboto;
            }

            #type-selector {
                color: #fff;
                background-color: #4d90fe;
                padding: 5px 11px 0px 11px;
            }

            #type-selector label {
                font-family: Roboto;
                font-size: 13px;
                font-weight: 300;
            }
            .myInfobox {

                background-color:rgba(255, 255, 255, 0.5);
                width: 100%;
                color: #000;
                font-family:Arial, Helvetica, sans-serif;
                font-size: 28px;
                font-weight: bold;

            }
            p{
                font-family: Roboto;  
                font-size: 18px; 
                color: #195ab4;
            }

        </style>
        <script type="text/javascript">

            function initAutocomplete() {
                getlatitudeLongitude();

            }

            function report() {

                var catagaryName = $("#catagaryvaluee").val();

                if (catagaryName === "c") {


                } else {

                    findAllServicesProviderServices(catagaryName);

                }

            }


            function findAllServicesProviderServices(catagry) {
//                alert(catagry);
                var rootURL = '/rest/employeeservices/servicesprovideroparation';
                $.ajax({
                    type: 'GET',
                    url: rootURL + '/searchbycatagary/' + catagry,
                    dataType: "json", // data type of response
                    success: function (data, textStatus, jqXHR) {
                        if (textStatus === "success") {// That's HTTP for 'ok'
                            dataobject(data);

                        }

                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        //  alert('findAllServicesProviderServices error: ' + errorThrown);
                        console.log('findAllServicesProviderServices error: ' + errorThrown);

                    }
                });
            }


            function getlatitudeLongitude() {
                var x = null;

                var rootURL = '/rest/employeeservices/servicesprovideroparation/findallServicesprovider';
                $.ajax({
                    type: 'GET',
                    contentType: 'application/json',
                    url: rootURL,
                    dataType: "json", // data type of response
                    success: function (data, textStatus, jqXHR) {
                        if (textStatus === "success") {// That's HTTP for 'ok'
                            dataobject(data);

                        }

                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        //alert('getlatitudeLongitude error: ' + errorThrown);
                        console.log('getlatitudeLongitude error: ' + errorThrown);

                    }
                });


            }

            function dataobject(data) {


                var myLatLng = [{lat: 6.796396, lng: 79.877823}, {lat: 6.717595, lng: 79.9128269}, {lat: 6.8559485, lng: 79.8629683}];

                var map = new google.maps.Map(document.getElementById('map'), {
                    center: {lat: 7.873054, lng: 80.771797},
                    zoom: 8,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                });
                for (var i = 0; i < data.length; i++) {
                    //alert(data[i].latitude+" "+data[i].logitude );
                    var marker = new google.maps.Marker({
                        position: {lat: data[i].latitude, lng: data[i].logitude},
                        map: map,
                        title: 'Hello World!'
                    });
                    attachSecretMessage(marker, data[i]);


                }

                function attachSecretMessage(marker, secretMessage) {
                    var infowindow = new google.maps.InfoWindow({
                        content: '<div class="myInfobox"><center id="com"><h3>'
                                + secretMessage.companyname +
                                '</h3></center><h5 ><p class="text-info">Contacnumber :</p>  <p class="text-muted">' +
                                secretMessage.contacnumber + '</p></h5><h5><p class="text-info">Manage name  : </p> <p class="text-muted">'
                                + secretMessage.managername + '</p></h5><h5><p class="text-info">Manage Contac number  :</p> <p class="text-muted">'
                                + secretMessage.managecontacnumber + '</p></h5><h5><p class="text-info">Address   : </p> <p class="text-muted"> ' +
                                secretMessage.hqaddress +
                                '</p></h5></div>'
                    });


                    marker.addListener('mouseover', function () {
                        infowindow.open(map, this);
                    });


                    marker.addListener('mouseout', function () {
                        infowindow.close();
                    });

                }


                // Create the search box and link it to the UI element.
                var input = document.getElementById('pac-input');
                if (input !== null) {



                    var searchBox = new google.maps.places.SearchBox(input);
                    map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

                    // Bias the SearchBox results towards current map's viewport.
                    map.addListener('bounds_changed', function () {
                        searchBox.setBounds(map.getBounds());
                    });

                    var markers = [];
                    // Listen for the event fired when the user selects a prediction and retrieve
                    // more details for that place.
                    searchBox.addListener('places_changed', function () {
                        var places = searchBox.getPlaces();

                        if (places.length === 0) {
                            return;
                        }

                        // Clear out the old markers.
                        markers.forEach(function (marker) {
                            marker.setMap(null);
                        });
                        markers = [];

                        // For each place, get the icon, name and location.
                        var bounds = new google.maps.LatLngBounds();
                        places.forEach(function (place) {
                            var icon = {
                                url: place.icon,
                                size: new google.maps.Size(71, 71),
                                origin: new google.maps.Point(0, 0),
                                anchor: new google.maps.Point(17, 34),
                                scaledSize: new google.maps.Size(25, 25)
                            };

                            // Create a marker for each place.
                            markers.push(new google.maps.Marker({
                                map: map,
                                icon: icon,
                                title: place.name,
                                position: place.geometry.location
                            }));

                            if (place.geometry.viewport) {
                                // Only geocodes have viewport.
                                bounds.union(place.geometry.viewport);
                            } else {
                                bounds.extend(place.geometry.location);
                            }
                        });
                        map.fitBounds(bounds);
                    });
                }

            }

        </script>


    </head>

    <body>

        <section id="container" >

            <%@include file="divLoad/adminheader.jsp" %>
            <%@include file="divLoad/adminsidebar.jsp" %>

            <!--            main content start-->
            <section id="main-content">

                <section class="wrapper">
                    <input  id="pac-input" class="controlss" type="text" placeholder="Search Box">

                    <div id="over_map">

                        <div id="errorInfo"></div>
                        <div class="panel panel-default">
                            <div class="panel-body"
                                 style="margin: 1px; background-color: rgba(255, 255, 255, 0.7)">

                                <div class="form-group">

                                    <label for="busType">Select Service station category</label> <select
                                        class="form-control input-sm" id="catagaryvaluee" name="busType"
                                        required onchange="report(this.value)">
                                        <option value="c">Select Service </option>
                                        <option value="Service_Station">Service Station</option>
                                        <option value="Mechanical_Repair(Garage)">Mechanical Repair(Garage)</option>
                                        <option value="Tire_Station">Tire Station</option>
                                        <option value="Battery_Station">Battery Station</option>
                                        <option value="Towing_Service">Towing Service</option>
                                        <option value="AC_Service">A/C Service</option>  
                                        <option value="Spare_Parts">Spare Parts</option>
                                        <option value="Vehicle_Rent_&_Taxi">Vehicle Rent & Taxi</option>
                                        <option value="Hotel_and_Accommondation">Hotel and Accommondation</option>
                                        <option value="Ambulance_Service">Ambulance Service</option>
                                        <option value="Fire_Service">Fire Service</option>


                                    </select>
                                </div>	


                            </div>

                        </div>

                    </div>

                    <div id="map"></div>

                </section>
            </section> 
            <!--                <section class="wrapper">-->

            <!--                    <div id="map"></div>
                                <div id="over_map">
                                    <div id="errorInfo"></div>
                                    <div class="panel panel-default">
                                        <div class="panel-body"
                                             style="margin: 1px; background-color: rgba(255, 255, 255, 0.7)">
                                            <form class="form-inline" role="form" action=# method="GET">
                                                <div class="form-group">
                                                    <label for="busType">Select Bus Type</label> <select
                                                        class="form-control input-sm" id="busType" name="busType"
                                                        required onchange="javascript:swapContent('con3');">
            
                                                        <option value="all">All Types</option>
                                                        <option value="normal">Normal</option>
                                                        <option value="semiLux">Semi-Luxury</option>
                                                        <option value="lux">Luxury</option>
                                                    </select>
                                                </div>	
                                            </form>
            
                                        </div>
            
                                    </div>
            
                                </div>-->

            <!--               </section>
                        </section>-->

            <%@include file="divLoad/adminfooter.jsp" %>

        </section>
        <!-- js placed at the end of the document so the pages load faster -->

        <%@include file="divLoad/cdnJSload.jsp" %>

        <!--script for this page-->


        <script>
            $(document).ready(function () {
                $('#oparation-panal-1').addClass("active");

            });

        </script>

        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD4mIQYXgMZrtjLEMN2wlvbhESynHKOhGQ&libraries=places&callback=initAutocomplete"  async defer>
        </script>

        <!-- load project js  file -->

        <script src="implementation/js/myNavFunction.js"></script>  



    </body>
</html>
