<input type="hidden" id="cusObject"/>
<input type="hidden" id="cusIDmyValue"/>
<input type="hidden" id="cusRegTime"/>
<input type="hidden" id="c-auth-id"/>

<div class="col-md-12" style="margin-top: -35px">
    <!--    <h1 class="page-header" >
            Services Provider <small>Profile</small>
        </h1>-->
</div>
<div class="row" >
    <div class="col-xs-12">  
        <div class="panel panel-info"  style="margin-top: -15px">
            <div class="panel-heading">
                <h3 class="panel-title" id="tgdg">Customer Details</h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-3 col-md-3 " align="center"> <img alt="User Pic" src="../imageuplode/default-profile.png" class="img-thumbnail img-responsive" id="auth-profile-picture"> </div>

                    <div class=" col-xs-9 col-md-9 "> 
                        <table class="table table-condensed">
                            <tbody>
                                <tr>
                                    <td id="highlight-data">Customer Name :</td>
                                    <td id="view-name">customer name goes here</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">NIC Number :</td>
                                    <td id="view-nic">44</td>
                                </tr>                               
                                <tr>
                                    <td id="highlight-data">Register Date :</td>
                                    <td id="view-date">2015-12-31</td>
                                </tr> 
                                <tr>
                                    <td id="highlight-data">Living Address :</td>
                                    <td id="view-laddress">Metro Manila,Philippines</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Permanent Address :</td>
                                    <td id="view-paddress">Colombo,Sri Lanka</td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Email :</td>
                                    <td id="view-email"><a href="mailto:info@support.com">info@autosupport.com</a></td>
                                </tr>
                                <tr>
                                    <td id="highlight-data">Contact Number :</td>
                                    <td id="view-contactno">123-4567-890(Landline)</br>
                                        555-4567-890(Mobile)
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="row"> 
                        <div class="col-xs-2 col-md-2" style="margin-left: 30px"> 

                            <form method="POST" enctype="multipart/form-data"
                                  action="/rest/employeeservices/fileservice/uploadAuth_customerimage" class="pull-center">

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

                <!--<button  type="button" class="btn btn-sm btn-primary" onclick="addservicesofservicesprovider(serid);" ><a class="glyphicon glyphicon-car"></a>&nbsp;Add Services</button >-->
                <span class="pull-right">
                    <button  type="button" class="btn btn-sm btn-warning" onclick="viewLogedCustomerProfileData(cusid);"><i class="glyphicon glyphicon-edit"></i>&nbsp;Edit</button >&nbsp;&nbsp;
                    <!--<button type="button" class="btn btn-sm btn-danger" onclick="servicesproviderDelete(serid);"><i class="glyphicon glyphicon-remove"></i>&nbsp;Delete</button>-->
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
                        <tbody id="logedCustomerVehicalData">
                            <!-- Total calculated values goes here -->
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>

<script>
    var cusid =<%= session.getAttribute("userid")%>;
    <%String test = String.valueOf(session.getAttribute("loginRols"));%>
//    var roleName = "<%=test%>";
//    console.log("<%=test%>");

    var roleName = "${loginRols}";
    console.log(roleName);

    if (cusid !== null && roleName === "C_customer") {

        $('#c-auth-id').val(cusid);
        $('#note-value').val(cusid);

        logedCustomerProfileDetails(cusid);
        logCustomerSVehicalDetails(cusid);

    } else {

        cusid = null;
        window.location.replace("../login.jsp");
    }

</script>




