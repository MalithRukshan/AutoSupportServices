<input type="hidden" id="supIDvalue"/>

<div class="col-md-12" style="margin-top: -35px">
    <h1 class="page-header" >
        Supplier <small>Profile</small>
    </h1>
</div>
<div class="row" >
    <div class="col-xs-12">  
        <div class="panel panel-info"  style="margin-top: -15px">
            <div class="panel-heading">
                <h3 class="panel-title" id="company-full-name">Company Full Name</h3>
            </div>
            <div class="panel-body">
                <input type="hidden" id="supid"/>
                <div class="row">
                    <div class="col-xs-3 col-md-3 " align="center"> <img alt="User Pic" src="../imageuplode/default-profile.png" class="img-circle img-responsive" id="s-profile-picture"> </div>
                    <div class=" col-xs-9 col-md-9 "> 
                        <table class="table table-condensed">
                            <tbody>
                                <tr>
                                    <td id="highlight-data">Company Name :</td>
                                    <td id="companyname" >customer name goes here</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Contact No :</td>
                                    <td id="contacnumber">5555928588222v</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Company Address :</td>
                                    <td id="hqaddress">5aGyghgd6262</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Email :</td>
                                    <td id="email">01/24/1988</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Manager Name :</td>
                                    <td id="managername">Metro Manila,Philippines</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Managers' Contact No :</td>
                                    <td id="managecontacnumber">Metro Manila,Philippines</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Managers' Email :</td>
                                    <td id="managemail"><a href="mailto:info@support.com">info@support.com</a></td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Vehicle per/Month :</td>
                                    <td id="vehicleperday">vcbvc</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row"> 
                        <div class="col-xs-2 col-md-2" style="margin-left: 30px"> 

                            <form method="POST" enctype="multipart/form-data"
                                  action="/rest/employeeservices/fileservice/uploadsuplireimage" class="pull-center">

                                <div class="row" style="margin-left: 5px"> 
                                    <div class="col-xs-7 choose_file"> 

                                        <span id="span-image">Choose File <input type="file" name="upfile" class="btn btn-sm btn-default"/></span>

                                    </div> 
                                    <input type="hidden" name="note" id ="note-value"/>
                                    <div class="col-xs-5"> 
                                        <input type="submit" id="image-submit" value="Upload" class="btn btn-xs btn-default" style="margin-top: 5px"/> 
                                    </div>
                                </div> 
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-footer" style="height: 50px">

                <!--<button  type="button" class="btn btn-sm btn-primary" onclick="" ><a class="glyphicon glyphicon-car"></a>&nbsp;Add Vehicle</button >-->
                <span class="pull-right">
                    <button  type="button" class="btn btn-sm btn-warning" onclick="supplierUpdate(supid);"><i class="glyphicon glyphicon-edit"></i>&nbsp;Edit</button >&nbsp;&nbsp;
                    <button type="button" class="btn btn-sm btn-danger" onclick="supplierDelete(supid);"><i class="glyphicon glyphicon-remove"></i>&nbsp;Delete</button>
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
                        <i class="fa fa-money fa-fw"></i> Suppliers' Vehicle Details 
                    </h3>

                </div>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped"
                           id="transactionTable">
                        <thead>
                            <tr><th></th>
                                <th>Ref NO:&nbsp;&nbsp;&nbsp;</th>
                                <th>Eng NO: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                <th>Chassis NO:</th>
                                <th>Vehicle NO:&nbsp;</th>
                                <th>Vehicle Type&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                <th>Vehicle Brand</th>
                                <th>Vehicle Model</th>
                                <th>Fuel type</th>


                            </tr>
                        </thead>
                        <tbody id="view-profilesupplier">
                            <!-- Total calculated values goes here -->
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>

<script> var supid =<%= request.getParameter("id")%>;

    $('#supIDvalue').val(supid);
    findAllSupplierByID(supid);
    findAllVehicle_SellBySupplier(supid);
    $('#note-value').val(supid);


</script>