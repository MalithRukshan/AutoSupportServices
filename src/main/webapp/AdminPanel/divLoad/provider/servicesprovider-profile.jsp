<input type="hidden" Id="serviceProvideIDValue" />
<input type="hidden" Id="serviceCategory" />

<div class="col-md-12" style="margin-top: -35px">
    <h1 class="page-header" >
        Services Provider <small>Profile</small>
    </h1>
</div>
<div class="row" >
    <div class="col-xs-12">  
        <div class="panel panel-info"  style="margin-top: -15px">
            <div class="panel-heading">
                <h3 class="panel-title" id="s-dtl">Services Provider Details</h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-3 col-md-3 " align="center"> <img alt="User Pic" src="../imageuplode/default-profile.png" class="img-circle img-responsive" id="service-profile-picture"> </div>

                    <div class=" col-xs-9 col-md-9 "> 
                        <table class="table table-condensed">
                            <tbody>
                                <tr>
                                    <td id="highlight-data">Company Name :</td>
                                    <td id="servicesproviderprofile_companyname" >Customer name goes here</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Contact No :</td>
                                    <td id="servicesproviderprofile_contacnumber">5555928588222v</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Company Address :</td>
                                    <td id="servicesproviderprofile_hqaddress">Company Address </td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Email :</td>
                                    <td id="servicesproviderprofile_email">01/24/1988</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Manager Name :</td>
                                    <td id="servicesproviderprofile_managername">Metro Manila,Philippines</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Managers' Contact No :</td>
                                    <td id="servicesproviderprofile_managecontacnumber">Metro Manila,Philippines</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Managers' Email :</td>
                                    <td id="servicesproviderprofile_managemail"><a href="mailto:info@support.com">info@support.com</a></td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Vehicle per/Month :</td>
                                    <td id="servicesproviderprofile_vehicleperday">100</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row"> 
                        <div class="col-xs-2 col-md-2" style="margin-left: 30px"> 

                            <form method="POST" enctype="multipart/form-data"
                                  action="/rest/employeeservices/fileservice/uploadservicesprovider" class="pull-center">

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
            <div class="panel-footer" style="height: 50px">
                <div class="row">
                    <div class="col-md-2">  
                        <button  type="button" class="btn btn-sm btn-primary" onclick="addservicesofservicesprovider(serid);" ><a class="glyphicon glyphicon-car"></a>&nbsp;Add Services</button >
                    </div>
                    <div class="col-md-6"> 
                        <!--                        <input type="text" class="form-control"
                                                       placeholder="Search Vehicle Service History " name="search-services"
                                                       id="search-services" onkeyup="filterVehicleDetails();"/> -->

                    </div>
                    <div class="col-md-4">  
                        <span class="pull-right">
                            <button  type="button" class="btn btn-sm btn-warning" onclick="servicesproviderEdit(serid);"><i class="glyphicon glyphicon-edit"></i>&nbsp;Edit</button >&nbsp;&nbsp;
                            <button type="button" class="btn btn-sm btn-danger" onclick="servicesproviderDelete(serid);"><i class="glyphicon glyphicon-remove"></i>&nbsp;Delete</button>
                        </span>
                    </div>
                </div>
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
                        <i class="fa fa-money fa-fw"></i> Services Details of Vehicles
                    </h3>
                </div>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped"
                           id="transactionTable">
                        <thead>
                            <tr><th></th>
                                <th>Services Date:&nbsp;&nbsp;&nbsp;</th>
                                <th>Services Name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                <th>Services Type:</th>
                                <th>Material:&nbsp;</th>
                                <th>Mile&nbsp;&nbsp;&nbsp;&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody id="view-servicesproviders-Services">
                            <!-- Total calculated values goes here -->
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>
<script>
    var serid =<%= request.getParameter("id")%>;

    $('#note-value').val(serid);
    $('#serviceProvideIDValue').val(serid);


</script>