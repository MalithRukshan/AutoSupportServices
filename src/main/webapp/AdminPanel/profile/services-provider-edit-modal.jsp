<!--Service provider model-->

<div class="modal fade" id="editservicesproviderModal" tabindex="-1"
     role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #7068F0">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title text-center" id="servicesproviderModallTitle">
                    Edit Services Provider Details</h3>
            </div>
            <div class="modal-body">
                <div class="row">

                    <div class="form-group">
                        <input type="hidden" id="eidtservicesproviderserid"/>
                        <div class="col-md-offset-1 col-md-5">
                            <label for="fristname" class="control-label">Company
                                Name:</label> <input type="text" class="form-control" id="eidtservicesprovidercompanyname"/>

                        </div>
                        <div class="col-md-5">
                            <label for="lastname" class="control-label">Contact No
                                :</label> <input type="text" 
                                             class="form-control"
                                             id="eidtservicesprovidercontacnumber"/>
                        </div>
                        <div class="col-md-offset-1 col-md-8">
                            <label for="nic"
                                   class="control-label margin-top-10">Company Address:</label> 
                            <textarea class="form-control" rows="2" id="eidtservicesproviderhqaddress"></textarea>
                            <!--<input type="text" class="form-control" id="servicesproviderhqaddress" />-->
                        </div>
                        <div class="col-md-offset-1 col-md-8">
                            <label for="password"
                                   class="control-label margin-top-10">Email:</label> <input
                                   type="email" class="form-control" id="eidtservicesprovideremail" />
                        </div> 
                        <div class="col-md-offset-1 col-md-5">
                            <label for="contacnum"
                                   class="control-label margin-top-10">Manager Name :</label>
                            <input type="text" class="form-control"
                                   id="eidtservicesprovidermanagername">
                        </div>
                        <div class="col-md-5">
                            <label for="email"
                                   class="control-label margin-top-10">Managers' Contact No :</label>
                            <input type="email" class="form-control"
                                   id="eidtservicesprovidermanagecontacnumber" >
                        </div>

                        <div class="col-md-offset-1 col-md-5">
                            <label for="address" class="control-label margin-top-10">Managers' Email:</label>
                            <input type="text" id="eidtservicesprovidermanagemail" class="form-control">                     
                        </div>
                        <div class="col-md-5">
                            <label for="paddress" class="control-label margin-top-10">Vehicle per/month:</label>
                            <input type="number" class="form-control"
                                   id="eidtservicesprovidervehicleperday">
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal" onclick="editresetservicesprovider();">Close</button>
                <button type="button" class="btn btn-primary" id="add-supplier"
                        onclick="edit_updateservicesprovider(serid);" value="">Update Services Provider</button>
            </div>
        </div>
    </div>
</div>
<!--./customer model-->