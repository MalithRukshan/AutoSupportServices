
<div class="col-md-12" style="margin-top: -35px">
    <h1 class="page-header" >
        Supplier <small>Operations</small>
    </h1>
</div>
<div class="row" >
    <div class="col-md-12">
        <div class="panel panel-primary" style="margin-top: -18px">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <i class="fa fa-bar-chart-o fa-fw"></i> Select and Add Supplier
                </h3>
            </div>
            <div class="panel-body">
                <div class="col-xs-9">
                    <div id="imaginary_container">
                        <div class="input-group stylish-input-group full-width">
                            <input type="text" class="form-control full-width"
                                   placeholder="Search items" name="search-customer"
                                   id="search-customer" onkeyup="findBySupplier();" /> <span
                                   class="input-group-addon">
                                <button type="submit" onclick="findBySupplier();">
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </span>
                        </div>
                    </div>
                </div>
                <input type="hidden" id="iteam-code-hidden" />

                <div class="col-xs-3">
                    <button type="button" class="btn btn-primary full-width"
                            id="main-add-btn"
                            onclick="addsuplierModal();" value="" id="add-customer">Add Supplier</button>
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
                        <i class="fa fa-money fa-fw"></i> Supplier Details Panel
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
                                <th>Contact No &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                <th>Company Address</th>
                                <th>Email&nbsp;</th>
                                <!--                                <th>Manager Name&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                                <th>Managers' Contact No</th>
                                                                <th>Managers' Email</th>-->
                                <th>Vehicle per/Month</th>
                                

                            </tr>
                        </thead>
                        <tbody id="view-supplier">
                            <!-- Total calculated values goes here -->
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>