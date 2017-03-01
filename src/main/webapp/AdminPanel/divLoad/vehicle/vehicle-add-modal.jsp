<!--Vechicle add model-->

<div class="modal fade" id="vechicleAddModal" tabindex="-1"
     role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #7068F0">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title text-center" id="vechicleAddModalTitle">
                    Add Vehicle Details</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                    <input type="hidden" id="customerNIC" />
                    <input type="hidden" id="custpmerIDhiddenValue" />
                    <input type="hidden" id="customerJsonObject" />
                    <input type="hidden" id="supplerJsonObject" />
                    <input type="hidden" id="cuidedit" />
                    <div class="form-group">
                        <div class="col-md-offset-1 col-md-4">
                            <label for="vehicalNumber" class="control-label">Vehicle
                                Number: </label> <input type="text" class="form-control" id="vehicalNumber"/>
                        </div>
                        <div class="col-md-3">
                            <label for="refnumber" class="control-label"> Reference Number:
                            </label> <input type="text"
                                            class="form-control"
                                            id="refnumber"/>
                        </div>
                        <div class="col-md-3">
                            <label for="paymentDate"
                                   class="control-label"> Payment Date:</label>
                            <input type="text" class="form-control" placeholder="Payment Date "
                                   name="paymentDate" id="paymentDate" />
                        </div>
                        <div class="col-md-offset-1  col-md-5">
                            <label for="engineNumber" class="control-label margin-top-10"> Engine Number:
                            </label> <input type="text"
                                            class="form-control"
                                            id="engineNumber"/>
                        </div>
                        <div class="col-md-5">
                            <label for="chassiNumber"
                                   class="control-label margin-top-10">Chassis  Number:</label> <input
                                   type="text" class="form-control" id="chassiNumber" />
                        </div>

                        <div class="col-md-offset-1 col-md-3">
                            <label for="vechicle-type"
                                   class="control-label margin-top-10">Select Vehicle Type</label>

                            <select class="form-control input-md" id="vechicle-type"
                                    name="vechicle-type">                                                
                                <option value=""></option>
                                <option value="car">Car</option>
                                <option value="suv">SUV</option>
                                <option value="van">Van</option>
                                <option value="bike">Bike</option>
                                <option value="other">Other</option>

                            </select>
                        </div>
                        <div class="col-md-7">

                            <label for="supplier"
                                   class="control-label margin-top-10">Supplier :</label>
                            <input type="text" class="form-control" placeholder="Search Supplier"
                                   id="supplier" onkeyup="searchSupplierDetails();" />                         

                        </div>
                        <div class="col-md-offset-1 col-md-3">
                            <label for="brand"
                                   class="control-label margin-top-10">Brand :</label>
                            <input type="text" class="form-control"
                                   id="brand" >
                        </div>
                        <div class="col-md-4">
                            <label for="vehicle-model"
                                   class="control-label margin-top-10">Modal:</label>
                            <input type="text" class="form-control"
                                   id="vehicle-model" >
                        </div>
                        <div class="col-md-3">
                            <label for="fuel-type"
                                   class="control-label margin-top-10">Fuel Type</label>

                            <select class="form-control input-md" id="fuel-type"
                                    name="fuel-type">                                                
                                <option value=""></option>
                                <option value="Petrol">Petrol</option>
                                <option value="Hybride">Hybrid</option>
                                <option value="Diesel">Diesel</option>
                                <option value="Electric">Electric</option>

                            </select>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-2">
                                <label for="service1"
                                       class="control-label margin-top-10">1<sup>st</sup> Service(Km) :</label>
                                <input type="number" class="form-control"
                                       id="service1" >
                            </div>
                            <div class="col-md-2">
                                <label for="service2"
                                       class="control-label margin-top-10">2<sup>nd</sup> Service(Km) :</label>
                                <input type="number" class="form-control"
                                       id="service2" >
                            </div>
                            <div class="col-md-2">
                                <label for="service3"
                                       class="control-label margin-top-10">3<sup>nd</sup> Service(Km) :</label>
                                <input type="number" class="form-control"
                                       id="service3" >
                            </div>

                            <div class="col-md-2">
                                <label for="service4"
                                       class="control-label margin-top-10">4<sup>th</sup> Service(Km) :</label>
                                <input type="number" class="form-control"
                                       id="service4" >
                            </div>
                            <div class="col-md-4"></div>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-2 col-md-2">
                                <label for="service5"
                                       class="control-label margin-top-10">5<sup>st</sup> Service(Km) :</label>
                                <input type="number" class="form-control"
                                       id="service5" >
                            </div>
                            <div class="col-md-2">
                                <label for="service6"
                                       class="control-label margin-top-10">6<sup>th</sup> Service(Km) :</label>
                                <input type="number" class="form-control"
                                       id="service6" >
                            </div>
                            <div class="col-md-2">
                                <label for="service7"
                                       class="control-label margin-top-10">7<sup>th</sup> Service(Km) :</label>
                                <input type="number" class="form-control"
                                       id="service7" >
                            </div>
                            <div class="col-md-2">
                                <label for="service8"
                                       class="control-label margin-top-10">8<sup>th</sup> Service(Km) :</label>
                                <input type="number" class="form-control"
                                       id="service8" >
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="VoperationSelection"
                        onclick="addVehicleSystem();" value="vadd">Vehicle</button>
            </div>
        </div>
    </div>
</div>
<!--./Vechicle add model-->