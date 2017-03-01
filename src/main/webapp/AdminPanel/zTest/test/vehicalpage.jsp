<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="utility/images/favicon.ico" type="image/x-icon">
        <title>Auto Support Service(Pvt)LTD | Vehicles</title>
        <!-- <link rel="stylesheet"
                href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script
                src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"
                type="text/javascript"></script>
        <script
                src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"
                type="text/javascript"></script>
        <link
                href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
                rel="stylesheet">
                
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/themes/smoothness/jquery-ui.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script> -->

        <!-- local cdn -->
        <link href="cdn/bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet">
        <link href="cdn/font-awesome-4.4.0/css/font-awesome.min.css"
              rel="stylesheet">
        <script src="cdn/jquery-1.11.3/jquery-1.11.3.min.js"
        type="text/javascript"></script>
        <script src="cdn/jquery-1.11.3/jquery-migrate-1.1.1.js" type="text/javascript"></script>
        <script src="cdn/bootstrap-3.3.5/js/bootstrap.min.js"
        type="text/javascript"></script>
        <script src="cdn/jquery-1.11.3/jquery-ui.min.js" type="text/javascript"></script>
        <link href="cdn/jquery-1.11.3/jquery-ui.min.css" rel="stylesheet">
        <!-- end of local cdn -->


        <!-- custom js and css -->
        <link href="utility/css/main.css" rel="stylesheet">

        <!-- function main 
        <script src="utility/js/main.js" type="text/javascript"></script>-->

        <!-- function vehical operations -->
        <script src="utility/js/vehical-operation.js" type="text/javascript"></script>


    </head>
    <body>
        <div id="wrapper">
            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span> <span class="icon-bar"></span> 
                        <span  class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.php">Auto Support Service (Pvt) LTD</a>
                </div>
                <!-- Top Menu Items -->
                <ul class="nav navbar-right top-nav">
                    <li class="dropdown"><a href="#" class="dropdown-toggle"
                                            data-toggle="dropdown"><i class="fa fa-envelope"></i> <b
                                class="caret"></b></a>
                        <ul class="dropdown-menu message-dropdown">
                            <li class="message-preview"><a href="#">
                                    <div class="media">
                                        <span class="pull-left"> <img class="media-object"
                                                                      src="http://placehold.it/50x50" alt="">
                                        </span>
                                        <div class="media-body">
                                            <h5 class="media-heading">
                                                <strong>John Smith</strong>
                                            </h5>
                                            <p class="small text-muted">
                                                <i class="fa fa-clock-o"></i> Yesterday at 4:32 PM
                                            </p>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </div>
                                </a></li>
                            <li class="message-preview"><a href="#">
                                    <div class="media">
                                        <span class="pull-left"> <img class="media-object"
                                                                      src="http://placehold.it/50x50" alt="">
                                        </span>
                                        <div class="media-body">
                                            <h5 class="media-heading">
                                                <strong>Admin</strong>
                                            </h5>
                                            <p class="small text-muted">
                                                <i class="fa fa-clock-o"></i> Yesterday at 4:32 PM
                                            </p>
                                            <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                        </div>
                                    </div>
                                </a></li>

                            <li class="message-footer"><a href="#">Read All New Messages</a></li>
                        </ul></li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle"
                                            data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                        <ul class="dropdown-menu alert-dropdown">
                            <li><a href="#">Alert Name <span class="label label-default">Alert
                                        Badge</span></a></li>
                            <li><a href="#">Alert Name <span class="label label-primary">Alert
                                        Badge</span></a></li>


                            <li class="divider"></li>
                            <li><a href="#">View All</a></li>
                        </ul></li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle"
                                            data-toggle="dropdown"><i class="fa fa-user"></i> Admin <b
                                class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="fa fa-fw fa-user"></i> Profile</a></li>
                            <li><a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a></li>
                            <li><a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a></li>
                        </ul></li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li ><a href="customer.jsp"><i
                                    class="fa fa-fw fa-user"></i>Customer</a></li>
                        <li class="active"><a href="vehicalpage.jsp"><i class="fa fa-fw fa-car"></i>
                                Vehicle</a></li>
                        <li><a href="service.jsp"><i class="fa fa-fw fa-table"></i>
                                Service &AMP; Categories</a></li>
                        <li><a href="suppliers.php"><i class="fa fa-fw fa-edit"></i>
                                Suppliers</a></li>
                        <li><a href="reports.php"><i class="fa fa-fw fa-desktop"></i>
                                Reports</a></li>

                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>

            <div id="page-wrapper" >
                <div class="container-fluid" style="height: 700px">   
                    <div class="row "  >
                        <div class="col-md-12" style="margin-top: -40px">
                            <h1 class="page-header" >
                                Vehicles <small>details</small>
                            </h1>
                        </div> 
                    </div>

                    <div class="row"  >
                        <div class="col-md-12" >
                            <div class="panel panel-primary" >
                                <div class="panel-heading">
                                    <h3 class="panel-title">
                                        <i class="fa fa-bar-chart-o fa-fw"></i> Add and edit Vehicle details
                                    </h3>
                                </div>
                                <div class="panel-body">
                                    <input type="hidden" id="customerid"/>
                                    <input type="hidden" id="modlevalue"/>
                                    <input type="hidden" id="vid"/>
                                    <div class="row" >

                                        <div class="col-xs-6">
                                            <div id="imaginary_container">
                                                <div class="input-group stylish-input-group">
                                                    <label for="refnumber"
                                                           class="control-label">Select Customer:</label>

                                                    <select class="form-control input-md" id="selectmanu"
                                                            name="selectmanu">                                                
                                                        <!--  <option value="all">All</option>-->

                                                    </select>
                                                </div>
                                            </div>  
                                        </div>

                                        <div class="col-xs-3">                   
                                            <div id="imaginary_container">
                                                <label for="search-customer"
                                                       class="control-label">Search Customer:</label>
                                                <div class="input-group stylish-input-group full-width">

                                                    <input type="text" class="form-control full-width"
                                                           placeholder="Search Customer" name="search-customer"
                                                           id="search-customer" onkeyup="searchCustomer();" /> <span
                                                           class="input-group-addon">
                                                        <button type="submit">
                                                            <span class="glyphicon glyphicon-search"></span>
                                                        </button>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-xs-3">
                                            <div id="imaginary_container">
                                                <div class="input-group stylish-input-group">
                                                    <label for="vehicalNumber"
                                                           class="control-label">Vehicle Number:</label>
                                                    <input type="text" class="form-control" placeholder="Vehicle Number"
                                                           name="vehicalNumber" id="vehicalNumber" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" >
                                        <div class="col-xs-3">
                                            <div id="imaginary_container">
                                                <div class="input-group stylish-input-group">
                                                    <label for="refnumber"
                                                           class="control-label margin-top-10">Reference Number:</label>
                                                    <input type="text" class="form-control" placeholder="Ref Number"
                                                           name="refnumber" id="refnumber" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-3">
                                            <div id="imaginary_container">
                                                <div class="input-group stylish-input-group">
                                                    <label for="chassiNumber"
                                                           class="control-label margin-top-10">Chassis  Number:</label>
                                                    <input type="text" class="form-control" placeholder="Ref Number"
                                                           name="chassiNumber" id="chassiNumber" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-3">
                                            <div id="imaginary_container">
                                                <div class="input-group stylish-input-group">
                                                    <label for="engningNumber"
                                                           class="control-label margin-top-10">Engine  Number:</label>
                                                    <input type="text" class="form-control" placeholder="Engning Number"
                                                           name="engningNumber" id="engningNumber" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-2">
                                            <div id="imaginary_container">
                                                <div class="input-group stylish-input-group">
                                                    <label for="paymentDate"
                                                           class="control-label margin-top-10"> Payment Date :</label>
                                                    <input type="text" class="form-control" placeholder="Payment Date "
                                                           name="paymentDate" id="paymentDate" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-1"><label for="add-vehicle"
                                                                     class="control-label margin-top-15"></label>
                                            <button type="button" class="btn btn-primary full-width"
                                                    onclick="addVehiclas()" value="" id="add-vehicle">Add</button>
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
                                        <h3 class="panel-title col-md-3">
                                            <i class="fa fa-money fa-fw"></i> Vehicle Details Panel
                                        </h3>

                                    </div>
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped"
                                               id="transactionTable">
                                            <thead>
                                                <tr><th></th>
                                                    <th>Reference Number</th>
                                                    <th>Vehicle Number</th>
                                                    <th>Chassis  Number</th>                                
                                                    <th>Engine Number</th>
                                                    <th>Payment Date</th>

                                                </tr>
                                            </thead>
                                            <tbody id="vehicalview">
                                                <!-- Total calculated values goes here -->
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">

                            <!--customer model-->

                            <div class="modal fade" id="customerModal" tabindex="-1"
                                 role="dialog" aria-labelledby="exampleModalLabel">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header" style="background-color: #3398ff">
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                            <h3 class="modal-title text-center" id="customerModalTitle">
                                                Customer Details</h3>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <input type="hidden" id="cuidedit" />
                                                <div class="form-group">
                                                    <div class="col-md-offset-1 col-md-5">
                                                        <label for="fristname" class="control-label">First
                                                            Name:</label> <input type="text" class="form-control" id="fristname"/>

                                                    </div>
                                                    <div class="col-md-5">
                                                        <label for="lastname" class="control-label">Last
                                                            Name:</label> <input type="text"
                                                                             class="form-control"
                                                                             id="lastname"/>
                                                    </div>
                                                    <div class="col-md-offset-1 col-md-8">
                                                        <label for="username"
                                                               class="control-label margin-top-10">User Name:</label> <input
                                                               type="text" class="form-control" id="username" />
                                                    </div>
                                                    <div class="col-md-offset-1 col-md-8">
                                                        <label for="password"
                                                               class="control-label margin-top-10">Password:</label> <input
                                                               type="password" class="form-control" id="password" />
                                                    </div>
                                                    <div class="col-md-offset-1 col-md-8">
                                                        <label for="address" class="control-label margin-top-10">Address:</label>
                                                        <textarea class="form-control" rows="2" id="address"></textarea>
                                                    </div>
                                                    <div class="col-md-offset-1 col-md-6">
                                                        <label for="email"
                                                               class="control-label margin-top-10">Email :</label>
                                                        <input type="email" class="form-control"
                                                               id="email" >
                                                    </div>
                                                    <div class="col-md-4">
                                                        <label for="contacnum"
                                                               class="control-label margin-top-10">Contact Number :</label>
                                                        <input type="number" class="form-control"
                                                               id="contacnum">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default"
                                                    data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary" id="add-customer"
                                                    onclick="addcustomer();" value="">Customer</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--./customer model-->

                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->


    <!-- Error Modal HTML -->
    <div id="errorModal" class="modal fade">
        <div class="modal-dialog modal-md" style="max-width: 400px">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #ff6666">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                    <h4 class="modal-title text-center">Ooops...Error occured..!</h4>
                </div>
                <div class="modal-body pull-center">
                    <h2>Please Enter all feilds..!</h2>
                    <p class="text-warning">
                        <small>If you don't add, your changes will be lost.</small>
                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!--/. Error Modal HTML -->

    <!-- Delete Error Modal HTML -->
    <div id="deleteErrorModal" class="modal fade">
        <div class="modal-dialog modal-md" style="max-width: 400px">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #ff6666">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                    <h4 class="modal-title text-center">Ooops...Error occured..!</h4>
                </div>
                <div class="modal-body pull-center">
                    <h2>Please select at least one chackbox..!</h2>
                    <p class="text-warning">
                        <small>If you don't select, your can't delete any data.</small>
                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
    <!--/. Delete Error  Modal HTML -->
    <!-- Delete Worning Modal HTML -->
    <div id="deleteWorningModal" class="modal fade">
        <div class="modal-dialog modal-md" style="max-width: 400px">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #ff6666">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                    <h4 class="modal-title text-center">Do you want to delete!</h4>
                </div>
                <div class="modal-body pull-center">
                    <h2>Do you want to delete data!</h2>
                    <p class="text-warning">
                        <small>If you click ok , your all the data wiil be lost.</small>
                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-danger" id="btn-del-ok">Delete</a>

                </div>
            </div>
        </div>
    </div>
    <!--/. Delete Error  Modal HTML -->

    <a href="#0" class="cd-top">Top</a>


    <script type="text/javascript">

    </script>

</body>
</html>