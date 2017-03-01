<!--services edit modal-->

<input type="hidden" id="servicesproviderJsonObject_Shortcut" />
<input type="hidden" id="getvehicalforserviesObject_Shortcut" />
<input type="hidden" id="serid" />
<input type="hidden" id="doneserid"/>

<div class="modal fade" id="servicesEditModal" tabindex="-1"
     role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #7068F0">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title text-center" id="">
                    Edit Service Details</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="form-group">
                        <div class="col-md-offset-1 col-md-5">
                            <label for="paymentDate"
                                   class="control-label margin-top-10"> Payment Date:</label>
                            <input type="text" class="form-control" placeholder="Payment Date "
                                   name="servicespaymentDate" id="paymentDate_edit" />
                        </div>
                        <div class="col-md-offset-1 col-md-4">
                            <label for="service1"
                                   class="control-label margin-top-10">Mileage:(km)</label>
                            <input type="number" class="form-control"
                                   id="service1mileage_edit" >
                        </div>

                        <div class="col-md-offset-1 col-md-10">
                            <div class="form-group">
                                <label for="vehicalDetails_Shortcut"
                                       class="control-label margin-top-10"> Vehicle Registration No :</label>
                                <input type="text" class="form-control" placeholder="Search Vehical No"
                                       id="vehicalDetails_Shortcut" onkeyup="searchServicesProviderDetails_Shortcut();" />                         
                            </div>

                        </div>

                        <div class="col-md-offset-1  col-md-10">
                            <label for="engineNumber" class="control-label margin-top-10"> Services Name:
                            </label> <textarea type="text"
                                               class="form-control"
                                               id="servicesname_edit"></textarea>
                        </div>
                        <div class="col-md-offset-1  col-md-10">
                            <label for="engineNumber" class="control-label margin-top-10"> Services Type:
                            </label> <textarea type="text"
                                               class="form-control"
                                               id="servicestype_edit"></textarea>
                        </div>

                        <div class="col-md-offset-1 col-md-10">
                            <label for="chassiNumber"
                                   class="control-label margin-top-10">Material:</label><textarea
                                   type="text" class="form-control" id="servicesmaterial_edit" ></textarea>
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal" onclick="resetservicesAddModal_Edit();">Close</button>
                <button type="button" class="btn btn-primary" id="add-vehicle"
                        onclick="updateDoneServices(serid);" value="">Edit Services</button>
            </div>
        </div>
    </div>
</div>
<!--./services edit modal--->