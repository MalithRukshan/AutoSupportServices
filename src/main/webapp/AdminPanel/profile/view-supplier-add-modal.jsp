<!--customer model-->
<div class="modal fade" id="view-supplierModal" tabindex="-1"
     role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #7068F0">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title text-center" id="customerModalTitle">
                    View Supplier Details</h3>

            </div>
            <div class="modal-body">
                <div class="modal-body">
                    <div class="row">
                        <input type="hidden" id="viewadd-supid" />
                        <div class="form-group">
                            <div class="col-md-offset-1 col-md-5">
                                <label for="fristname" class="control-label">Company 
                                    Name:</label> <input type="text" class="form-control" id="viewadd_companyname"/>

                            </div>
                            <div class="col-md-5">
                                <label for="lastname" class="control-label">Contact No
                                    :</label> <input type="text" 
                                                 class="form-control"
                                                 id="viewadd_contacnumber"/>
                            </div>
                            <div class="col-md-offset-1 col-md-8">
                                <label for="nic"
                                       class="control-label margin-top-10">Company Address:</label> 
                                <textarea class="form-control" rows="2" id="viewadd_hqaddress"></textarea>
                                <!--<input type="text" class="form-control" id="hqaddress" />-->
                            </div>
                            <div class="col-md-offset-1 col-md-8">
                                <label for="password"
                                       class="control-label margin-top-10">Email:</label> <input
                                       type="email" class="form-control" id="viewadd_email" />
                            </div> 
                            <div class="col-md-offset-1 col-md-5">
                                <label for="contacnum"
                                       class="control-label margin-top-10">Manager Name :</label>
                                <input type="text" class="form-control"
                                       id="viewadd_managername">
                            </div>
                            <div class="col-md-5">
                                <label for="email"
                                       class="control-label margin-top-10">Managers' Contact No :</label>
                                <input type="email" class="form-control"
                                       id="viewadd_managecontacnumber" >
                            </div>

                            <div class="col-md-offset-1 col-md-5">
                                <label for="address" class="control-label margin-top-10">Managers' Email:</label>
                                <input type="text" id="viewadd_managemail" class="form-control">                     
                            </div>
                            <div class="col-md-5">
                                <label for="paddress" class="control-label margin-top-10">Vehicle per/day:</label>
                                <input type="number" class="form-control"
                                       id="viewadd_vehicleperday">
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="add-customer"
                        onclick="logSupplierUpdateProfile();" value="">Update Profile</button>

            </div>
        </div>
    </div>
</div>
<!--./customer model-->