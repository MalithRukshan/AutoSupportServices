<!--supplier model-->

<div class="modal fade" id="supplieraddModal" tabindex="-1"
     role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #7068F0">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title text-center" id="supplieraddModalTitle">
                    Supplier Details</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                    <input type="hidden" id="cuidedit" />
                    <div class="form-group">
                        <div class="col-md-offset-1 col-md-5">
                            <label for="fristname" class="control-label">Company 
                                Name:</label> <input type="text" class="form-control" id="companyname"/>

                        </div>
                        <div class="col-md-5">
                            <label for="lastname" class="control-label">Contact No
                                :</label> <input type="text" 
                                                 class="form-control"
                                                 id="contacnumber"/>
                        </div>
                        <div class="col-md-offset-1 col-md-8">
                            <label for="nic"
                                   class="control-label margin-top-10">Company Address:</label> 
                                   <textarea class="form-control" rows="2" id="hqaddress"></textarea>
                                   <!--<input type="text" class="form-control" id="hqaddress" />-->
                        </div>
                        <div class="col-md-offset-1 col-md-8">
                            <label for="password"
                                   class="control-label margin-top-10">Email:</label> <input
                                       type="email" class="form-control" id="email" />
                        </div> 
                        <div class="col-md-offset-1 col-md-5">
                            <label for="contacnum"
                                   class="control-label margin-top-10">Manager Name :</label>
                            <input type="text" class="form-control"
                                   id="managername">
                        </div>
                        <div class="col-md-5">
                            <label for="email"
                                   class="control-label margin-top-10">Managers' Contact No :</label>
                            <input type="email" class="form-control"
                                   id="managecontacnumber" >
                        </div>

                        <div class="col-md-offset-1 col-md-5">
                            <label for="address" class="control-label margin-top-10">Managers' Email:</label>
                            <input type="text" id="managemail" class="form-control">                     
                        </div>
                        <div class="col-md-5">
                            <label for="paddress" class="control-label margin-top-10">Vehicle per/Month:</label>
                            <input type="number" class="form-control"
                                   id="vehicleperday">
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal" onclick="reset();">Close</button>
                <button type="button" class="btn btn-primary" id="add-supplier"
                        onclick="addsupplierdetails();" value="">Supplier</button>
            </div>
        </div>
    </div>
</div>
<!--./customer model-->