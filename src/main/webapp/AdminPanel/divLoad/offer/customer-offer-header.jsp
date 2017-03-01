
<div class="col-md-12" style="margin-top: -35px">
    <h1 class="page-header" >
        Customer <small>Offer</small>
    </h1>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="panel panel-primary" style="margin-top: -18px">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <i class="fa fa-bar-chart-o fa-fw"></i> Search Customer By Address
                </h3>
            </div>
            <div class="panel-body">
                <div class="col-xs-9">
                    <div id="imaginary_container">
                        <div class="input-group stylish-input-group full-width">
                            <input type="text" class="form-control full-width"
                                   placeholder="Search items" name="search-offercustomer"
                                   id="search-offercustomer" onkeyup="findaddress();" /> <span
                                   class="input-group-addon">
                                <button type="submit" onclick="findaddress();">
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </span>
                        </div>
                    </div>
                </div>

                <div class="col-xs-3">

                    <button type="button" class="btn btn-primary full-width"
                            id="main-add-btn"
                            onclick="findaddress();" >Search</button>
                </div>
            </div>
        </div>
    </div>
</div>  


<!-- /.row -->
<div class="row"  style="padding-bottom:17%">
    <div class="col-md-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="row">
                    <h3 class="panel-title col-md-3">
                        <i class="fa fa-money fa-fw"></i> Customer Details Panel
                    </h3>

                </div>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped"
                           id="transactionTable">
                        <thead>
                            <tr>
<!--                                <th></th>-->
                                <th >All&nbsp;&nbsp;<input type="checkbox" id="selectall" /></th>
                                <th>First Name&nbsp;&nbsp;&nbsp;</th>                              
                                <th>Contact No</th>
                                <th>Email&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                <th>Live Address</th>
                                <th>Parmanent Address</th>
                            </tr>
                        </thead>
                        <tbody id="view-offer-customer">
                            <!-- Total calculated values goes here -->
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>