<div class="col-md-12" style="margin-top: -35px">
    <h1 class="page-header" >
        Customer <small>Operations</small>
    </h1>
</div>
<div class="row" >
    <div class="col-md-12">
        <div class="panel panel-primary" style="margin-top: -18px">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <i class="fa fa-bar-chart-o fa-fw"></i> Select and Add Customer
                </h3>
            </div>
            <div class="panel-body">
                <div class="col-xs-9">
                    <div id="imaginary_container">
                        <div class="input-group stylish-input-group full-width">
                            <input type="text" class="form-control full-width"
                                   placeholder="Search Customer by Name or NIC" name="search-customer"
                                   id="search-customer" onkeyup="findByName();" /> <span
                                   class="input-group-addon">
                                <button type="submit" onclick="findByName();">
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </span>
                        </div>
                    </div>
                </div>
                <input type="hidden" id="iteam-code-hidden" />

                <div class="col-xs-3">
                    <button type="button" class="btn btn-primary full-width"
                            onclick="addcustomerMod();" value="" id="add-customer">Add Customer</button>
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
                        <i class="fa fa-money fa-fw"></i> Customer Details
                    </h3>
                </div>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped"
                           id="transactionTable">
                        <thead>
                            <tr><th class="thead-fix"></th>
                                <!--<th>First Name</th>
                                <th>last Name</th>-->
                                <th>Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                <th>NIC Number</th>
                                <th>Living Address</th>
                                <!--<th>Vehicle No</th>-->
                                <th>Contact No</th>
                                <th>Email</th>

                            </tr>
                        </thead>
                        <tbody id="view-customer">
                            <!-- All the customer details goes here -->
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>