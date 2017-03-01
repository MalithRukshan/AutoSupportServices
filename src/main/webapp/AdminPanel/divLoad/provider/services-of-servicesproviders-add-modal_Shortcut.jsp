<!--Vechicle add model-->

<div class="modal fade" id="servicesAddModal_Shortcut" tabindex="-1"
     role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #7068F0">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title text-center" id="">
                    Add services Details of services provider</h3>
            </div>
            <div class="modal-body">
                <div class="row">

                    <input type="hidden" id="servicesproviderJsonObject_Shortcut" />
                    <input type="hidden" id="getvehicalforserviesObject_Shortcut" />
                    <input type="hidden" id="serid" />

                    <div class="form-group">
                        <div class="col-md-offset-1 col-md-5">
                            <label for="paymentDate"
                                   class="control-label margin-top-10"> Payment Date:</label>
                            <input type="text" class="form-control" placeholder="Payment Date "
                                   name="servicespaymentDate" id="paymentDate" />
                        </div>
                        <div class="col-md-offset-1 col-md-4">
                            <label for="service1"
                                   class="control-label margin-top-10">Mileage:(km)</label>
                            <input type="number" class="form-control"
                                   id="service1mileage" >
                        </div>
                        <!--                        <div class="col-md-1">
                                                    <h4 class="margin-top-25 text-left" >(km)</h4>                          
                                                </div>-->
                        <div class="col-md-offset-1 col-md-10">
                            <div class="form-group">
                                <label for="vehicalDetails_Shortcut"
                                       class="control-label margin-top-10"> Vehical Registartion No :</label>
                                <input type="text" class="form-control" placeholder="Search Vehical No"
                                       id="vehicalDetails_Shortcut" onkeyup="searchServicesProviderDetails_Shortcut();" />                         
                            </div>

                        </div>

                        <div class="col-md-offset-1  col-md-10">
                            <label for="engineNumber" class="control-label margin-top-10"> Services Name:
                            </label> <textarea type="text"
                                               class="form-control"
                                               id="servicesname"></textarea>
                        </div>
                        <div class="col-md-offset-1  col-md-10">
                            <label for="engineNumber" class="control-label margin-top-10"> Services Type:
                            </label> <textarea type="text"
                                               class="form-control"
                                               id="servicestype"></textarea>
                        </div>

                        <div class="col-md-offset-1 col-md-10">
                            <label for="chassiNumber"
                                   class="control-label margin-top-10">Material:</label><textarea
                                   type="text" class="form-control" id="servicesmaterial" ></textarea>
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal" onclick="resetservicesAddModal_Shortcut();">Close</button>
                <button type="button" class="btn btn-primary" id="add-vehicle"
                        onclick="addDonServices_Shortcut(serid);" value="">Add Services</button>
            </div>
        </div>
    </div>
</div>
<!--./Vechicle add model-->