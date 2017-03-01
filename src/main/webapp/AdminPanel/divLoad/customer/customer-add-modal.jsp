<!--customer model-->
<div class="modal fade" id="customerModal" tabindex="-1"
     role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #7068F0">
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
                            <label for="nic"
                                   class="control-label margin-top-10">NIC No:</label> <input
                                   type="text" class="form-control" id="nic" />
                        </div>
                        <div class="col-md-offset-1 col-md-8">
                            <label for="password"
                                   class="control-label margin-top-10">Password:</label> <input
                                   type="password" class="form-control" id="password" />
                        </div> 

                        <div class="col-md-offset-1 col-md-5">
                            <label for="laddress" class="control-label margin-top-10">Living Address:</label>
                            <textarea class="form-control" rows="2" id="laddress"></textarea>
                        </div>
                        <div class="col-md-5">
                            <label for="paddress" class="control-label margin-top-10">Permanent Address:</label>
                            <textarea class="form-control" rows="2" id="paddress"></textarea>
                        </div>
                        <div class="col-md-offset-1 col-md-5">

                            <label for="contacnum"
                                   class="control-label margin-top-10">Contact Number :</label>
                            <input type="text" class="form-control"
                                   id="contacnum">
                        </div>
                        <div class="col-md-5">
                            <label for="email"
                                   class="control-label margin-top-10">Email :</label>
                            <input type="text" class="form-control"
                                   id="email"  onblur="checkEmail(this)">
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="add-customer"
                        onclick="addCustomer();" value="">Add Customer</button>

            </div>
        </div>
    </div>
</div>
<!--./customer model-->