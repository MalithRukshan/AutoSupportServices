<input type="hidden" id="vehicleIDValue"/>
<input type="hidden" id="cusIDValue"/>
<input type="hidden" id="supIDValue"/>
<input type="hidden" id="v-date-hidden"/>

<div class="col-md-12" style="margin-top: -35px">
    <h1 class="page-header" >
        Vehicle <small>Profile</small>
    </h1>
</div>
<div class="row" >
    <div class="col-xs-12">  
        <div class="panel panel-info"  style="margin-top: -15px">
            <div class="panel-heading">
                <h3 class="panel-title" id="v-name-full">Vehicle Name</h3>  
                <h3 class="panel-title text-right" >Reference Number : <a id="v-ref-no"> RN20155858</a> </h3>
                <!--src="http://www.buntycars.com/contents/member/carwalls/photos/2011-toyota-allion-toyot.jpg
                default-vehicle.jpg-->
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-3 col-md-3" align="center"> <img alt="Vehicle image" src="../imageuplode/default-vehicle.jpg" class="img-thumbnail img-responsive" id="v-profile-picture" > </div>

                    <div class=" col-xs-9 col-md-9"> 
                        <table class="table table-condensed">
                            <tbody>
                                <tr>
                                    <td id="highlight-data">Vehicle Reg No :</td>
                                    <td id="v-number">Car</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Vehicle Type :</td>
                                    <td id="v-type">Car</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Vehicle Brand :</td>
                                    <td id="v-brand">Toyota</td>
                                </tr>                               
                                <tr>
                                    <td id="highlight-data">Vehicle Model :</td>
                                    <td id="v-modle">Allion</td>
                                </tr> 

                                <tr>
                                    <td id="highlight-data">Fuel type :</td>
                                    <td id="v-fueltype">Patrol</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Engine Number:</td>
                                    <td id="v-engine">535353535</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Chassis  Number :</td>
                                    <td id="v-chassis">995959559</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Supplier Name :</td>
                                    <td id="v-supplier">Test</td>
                                </tr>

                                <tr>
                                    <td id="highlight-data">Payment Date :</td>
                                    <td id="v-paymentdate">2016-01-09</td>
                                </tr>

                            </tbody>
                        </table>
                    </div>

                    <div class="row"> 
                        <div class="col-xs-2 col-md-2" style="margin-left: 30px"> 

                            <form method="POST" enctype="multipart/form-data"
                                  action="/rest/employeeservices/fileservice/uploadvehicleimage" class="pull-center">

                                <div class="row" style="margin-left: 5px"> 
                                    <div class="col-xs-9 choose_file"> 

                                        <span id="span-image">Change Image <input type="file" name="upfile" class="btn btn-sm btn-default"/></span>

                                    </div> 
                                    <input type="hidden" name="note" id ="note-value"/>
                                    <div class="col-xs-3"> 
                                        <input type="submit"  id="image-submit" value="Upload" class="btn btn-xs btn-default" style="margin-top: 5px"/> 
                                    </div>
                                </div> 
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel-footer" style="height: 50px">
            <button  type="button" class="btn btn-sm btn-primary" id="addButton11">Add Vehicle</button >
            <span class="pull-right">
                <button  type="button" class="btn btn-sm btn-warning" id="editButton" onclick="editVehicleButtonClick();"><i class="glyphicon glyphicon-edit" ></i>&nbsp;Edit</button >&nbsp;&nbsp;
                <button type="button" class="btn btn-sm btn-danger" id="deleteButton" onclick="vehicleDeleteButtonClick();"><i class="glyphicon glyphicon-remove"></i>&nbsp;Delete</button>
            </span>
        </div>
    </div>

</div>
</div>


<!-- /.row -->
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="row">
                    <h3 class="panel-title col-md-3">
                        <i class="fa fa-money fa-fw"></i> Vehicle Service History Details
                    </h3>
                </div>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped"
                           id="transactionTable">
                        <thead class="thead-fix">
                            <tr><th></th>
                                <th ><input type="checkbox" id="selectallServices" /></th>
                                <th>Service  Date</th> 
                                <th>Mile Age</th>
                                <th>Service Type</th>
                                <th>Service Name</th>
                                <th>Material </th>
                                <th>Service Provider Name</th>
                            </tr>
                        </thead>
                        <tbody id="view-service-history">
                            <!-- Total calculated values goes here -->
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>

<script> var vehicleID =<%= request.getParameter("id")%>;

    $('#vehicleIDValue').val(vehicleID);
    $('#note-value').val(vehicleID);
    console.log($('#note-value').val());

</script>