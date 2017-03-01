<input type="hidden" id="vidCrypt"/>
<input type="hidden" id="vidRaw"/>

<div class="row" >
    <div class="col-xs-12">  
        <div class="panel panel-info"  style="margin-top: -15px">
            <div class="panel-heading">
                <!--                <h3 class="panel-title" id="viewvehical-brand_one">Vehicle Name</h3>  -->
                <h3 class="panel-title">Vehicle Profile</h3> 
                <h3 class="panel-title text-right" >Reference Number : <a id="viewvehical-number_one"> RN20155858</a> </h3>

            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-3 col-md-3" align="center"> <img alt="Vehicle image" src="../imageuplode/default-vehicle.jpg" class="img-thumbnail img-responsive"> </div>

                    <div class=" col-xs-9 col-md-9"> 
                        <table class="table table-condensed">
                            <tbody>
                                <tr>
                                    <td id="highlight-data">Vehicle Reg No :</td>
                                    <td id="viewvehical-number">Car...</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Vehicle Type :</td>
                                    <td id="viewvehical-type">Car...</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Vehicle Brand :</td>
                                    <td id="viewvehical-brand">Toyota...</td>
                                </tr>                               
                                <tr>
                                    <td id="highlight-data">Vehicle Model :</td>
                                    <td id="viewvehical-modle">Allion...</td>
                                </tr> 

                                <tr>
                                    <td id="highlight-data">Fuel type :</td>
                                    <td id="viewvehical-fueltype">Patrol...</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Engine Number:</td>
                                    <td id="viewvehical-engine">535353535...</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Chassis  Number :</td>
                                    <td id="viewvehical-chassis">995959559...</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Supplier Name :</td>
                                    <td id="viewvehical-supplier">Test...</td>
                                </tr>

                                <tr>
                                    <td id="highlight-data">Payment Date :</td>
                                    <td id="viewvehical-paymentdate">2016-01-09...</td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>

                <!--                <div class="row"> 
                                    <div class="col-xs-2 col-md-2" style="margin-left: 30px"> 
                
                                        <form method="POST" enctype="multipart/form-data"
                                              action="/AutosupportServices/rest/employeeservices/fileservice/uploadcustomerimage" class="pull-center">
                
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
                                </div>-->
            </div>
            <div class="panel-footer">
                <!--<button  type="button" class="btn btn-sm btn-primary" id="addButton11">Add Vehicle</button >-->
                <span class="pull-right">
                    <!--<button  type="button" class="btn btn-sm btn-warning" id="editButton" onclick="editVehicleButtonClick();"><i class="glyphicon glyphicon-edit" ></i>&nbsp;Edit</button >&nbsp;&nbsp;-->
                    <!--<button type="button" class="btn btn-sm btn-danger" id="deleteButton" onclick="vehicleDeleteButtonClick();"><i class="glyphicon glyphicon-remove"></i>&nbsp;Delete</button>-->
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
                    <h3 class="panel-title col-md-4">
                        <i class="fa fa-money fa-fw"></i> Vehicle Service  Details
                    </h3>
                </div>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped"
                           id="transactionTable">
                        <thead class="thead-fix">
                            <tr><th></th>                         
                                <th>Service  Date</th> 
                                <th>Mile Age</th>
                                <th>Service Type</th>
                                <th>Service Name</th>
                                <th>Material </th>
                                <th>Service Provider Name</th>
                            </tr>
                        </thead>
                        <tbody id="dddd">
                            <!-- Total calculated values goes here -->
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>


<script>

    var eid =<%= request.getParameter("id")%>;
    var usid =<%=session.getAttribute("userid")%>;

    var roleName = "${loginRols}";

    console.log(roleName);


    if (usid !== null && roleName === "C_customer") {

        var decrypted = CryptoJS.AES.decrypt(eid, "Secret Passphrase");
        var vid = decrypted.toString(CryptoJS.enc.Utf8);
        $('#vidRaw').val(vid);
        logedCustomerSVehicalDetailsLoad(vid);
        logedCustomerVehicalServicesHistry(vid);


    } else {

        window.location.replace("../login.jsp");
    }


</script>

