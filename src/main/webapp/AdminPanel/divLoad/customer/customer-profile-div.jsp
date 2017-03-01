<input type="hidden" id="customerIDValue"/>
<input type="hidden" id="c-date-hidden"/>

<div class="col-md-12" style="margin-top: -35px">
    <h1 class="page-header" >
        Customer <small>Profile</small>
    </h1>
</div>
<div class="row" >
    <div class="col-xs-12">  
        <div class="panel panel-info"  style="margin-top: -15px">
            <div class="panel-heading">
                <!--                <h3 class="panel-title" id="c-name-full">Customer Full Name</h3>  -->
                <h3 class="panel-title" >Customer Details</h3> 
                <h3 class="panel-title text-right" >NIC Number : <a id="customer-nic"> RN20155858</a> </h3>

            </div>

            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-3 col-md-3 " align="center"> <img alt="User Pic" src="../imageuplode/default-profile.png" class="img-thumbnail img-responsive" id="profile-picture"> </div>
                    <div class=" col-xs-9 col-md-9 "> 
                        <table class="table table-condensed">
                            <tbody>
                                <tr>
                                    <td id="highlight-data">Customer Name :</td>
                                    <td id="c-name">customer name goes here</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">NIC Number :</td>
                                    <td id="c-nic">5555928588222v</td>
                                </tr>                               
                                <tr>
                                    <td id="highlight-data">Register Date :</td>
                                    <td id="c-date">2015-12-31</td>
                                </tr> 
                                <tr>
                                    <td id="highlight-data">Living Address :</td>
                                    <td id="c-laddress">Metro Manila,Philippines</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Permanent Address :</td>
                                    <td id="c-paddress">Colombo,Sri Lanka</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Email :</td>
                                    <td id="c-email"><a href="mailto:info@support.com">info@autosupport.com</a></td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Contact Number :</td>
                                    <td id="c-contactno">123-4567-890(Landline)</br>
                                        555-4567-890(Mobile)
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row"> 
                        <div class="col-xs-2 col-md-2" style="margin-left: 30px"> 

                            <form method="POST" enctype="multipart/form-data"
                                  action="/rest/employeeservices/fileservice/uploadcustomerimage" class="pull-center">

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
            <div class="panel-footer">
                <button  type="button" class="btn btn-sm btn-primary" id="addButton" onclick="addVechicleModProfile();"><a class="glyphicon glyphicon-car"></a>&nbsp;Add Vehicle</button >
                <span class="pull-right">
                    <button  type="button" class="btn btn-sm btn-warning" id="editButton" onclick="editButtonClick();"><i class="glyphicon glyphicon-edit" ></i>&nbsp;Edit</button >&nbsp;&nbsp;
                    <button type="button" class="btn btn-sm btn-danger" id="deleteButton" onclick="customerDeleteButtonClick();"><i class="glyphicon glyphicon-remove"></i>&nbsp;Delete</button>
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
                        <i class="fa fa-money fa-fw"></i> Customer Vehicle Details
                    </h3>
                </div>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped"
                           id="transactionTable">
                        <thead class="thead-fix">
                            <tr><th></th>
                                <th>Reference Number</th>
                                <th>Vehicle Number</th>
                                <th>Chassis  Number</th>                                
                                <th>Engine Number</th>
                                <th>Supplier Name</th>
                                <th>Payment Date</th>
                            </tr>
                        </thead>
                        <tbody id="view-customer-vehicles">
                            <!-- Total calculated values goes here -->
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>

<script> var customerID =<%= request.getParameter("id")%>;

    $('#customerIDValue').val(customerID);
    $('#note-value').val(customerID);

    //console.log($('#note-value').val());
</script>
