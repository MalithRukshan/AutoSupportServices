
<div class="col-md-12" style="margin-top: -35px">
    <h1 class="page-header" >
        Services Provider <small>Operations</small>
    </h1>
</div>
<div class="row" >
    <div class="col-md-12">
        <div class="panel panel-primary" style="margin-top: -18px">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <i class="fa fa-bar-chart-o fa-fw"></i> Search and Add Services Provider
                </h3>
            </div>
            <div class="panel-body">
                <div class="col-xs-9">
                    <div id="imaginary_container">
                        <div class="input-group stylish-input-group full-width">
                            <input type="text" class="form-control full-width"
                                   placeholder="Search Service Provider By Name or Contact No" name="search-customer"
                                   id="search-servicesprovider" onkeyup="findByservicesprovider();" /> <span
                                   class="input-group-addon">
                                <button type="submit" onclick="findByservicesprovider();">
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </span>
                        </div>
                    </div>
                </div>         

                <div class="col-xs-3">
                    <button type="button" class="btn btn-primary full-width"

                            onclick="addservicesproviderModal();" value="" id="add-servicesprovider">Add Services Provider</button>
                </div>
            </div>
        </div>
    </div>
</div>  

<!-- /.row -->
<div class="row" style="padding-bottom: 10%">
    <div class="col-md-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="row">
                    <h3 class="panel-title col-md-4">
                        <i class="fa fa-money fa-fw"></i> Services Provider Details 
                    </h3>

                </div>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped"
                           id="transactionTable">
                        <thead>
                            <tr><th></th>
                                <th>Company Name&nbsp;&nbsp;&nbsp;</th>
                                <th>Contact No &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                <th>Company Address</th>
                                <th>Email&nbsp;</th>
                                <!--  <th>Manager Name&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                              <th>Managers' Contact No</th>
                                                                <th>Managers' Email</th>-->
                                <th>Vehicle per/Month &nbsp;&nbsp;</th>


                            </tr>
                        </thead>
                        <tbody id="view-servicesprovider">
                            <!-- Total calculated values goes here -->
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>