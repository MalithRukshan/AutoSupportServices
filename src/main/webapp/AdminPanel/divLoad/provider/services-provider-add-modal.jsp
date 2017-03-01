<!--Service Provider add model-->
<div class="modal fade" id="addservicesproviderModal" tabindex="-1"
     role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #7068F0">
                <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h3 class="modal-title text-center" id="servicesproviderModallTitle">
                    Add Services Provider Details</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-offset-1 col-md-5">
                                <label for="fristname" class="control-label">Company 
                                    Name:</label> <input type="text" class="form-control" id="servicesprovidercompanyname"/>

                            </div>
                            <div class="col-md-5">
                                <label for="lastname" class="control-label">Contact No
                                    :</label> <input type="text" 
                                                 class="form-control"
                                                 id="servicesprovidercontacnumber"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-1 col-md-5">
                                <label for="nic"
                                       class="control-label margin-top-10">Company Address:</label> 
                                <textarea class="form-control" rows="2" id="servicesproviderhqaddress"></textarea>
                                <!--<input type="text" class="form-control" id="servicesproviderhqaddress" />-->
                            </div>
                            <div class="col-md-5">
                                <label for="password"
                                       class="control-label margin-top-10">Email:</label> <input
                                       type="email" class="form-control" id="servicesprovideremail" />
                            </div> 
                        </div>
                        <div class="row">
                            <div class="col-md-offset-1 col-md-5">
                                <label for="contacnum"
                                       class="control-label margin-top-10">Manager Name :</label>
                                <input type="text" class="form-control"
                                       id="servicesprovidermanagername">
                            </div>
                            <div class="col-md-5">
                                <label for="email"
                                       class="control-label margin-top-10">Managers' Contact No :</label>
                                <input type="email" class="form-control"
                                       id="servicesprovidermanagecontacnumber" >
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-offset-1 col-md-3">
                                <label for="address" class="control-label margin-top-10">Managers' Email:</label>
                                <input type="text" id="servicesprovidermanagemail" class="form-control">                     
                            </div>
                            <div class="col-md-3">
                                <label for="paddress" class="control-label margin-top-10">Vehicle per/Month:</label>
                                <input type="number" class="form-control"
                                       id="servicesprovidervehicleperday">
                            </div> 
                            <div class="col-md-2">
                                <label for="longitude" class="control-label margin-top-10">Longitude :</label>
                                <input type="number" class="form-control"
                                       id="longitude">
                            </div> 
                            <div class="col-md-2">
                                <label for="latitude" class="control-label margin-top-10">Latitude :</label>
                                <input type="number" class="form-control"
                                       id="latitude">
                            </div> 
                            <div class="row">
                                <div class="col-md-offset-1 col-md-2">
                                    <label class="checkbox-inline margin-top-10" >
                                        <input type="checkbox" value="Service_Station" id="c1" class="service-catagoy">Service Station
                                    </label>
                                </div>
                                <div class="col-md-2">
                                    <label class="checkbox-inline margin-top-10">
                                        <input type="checkbox" value="Mechanical_Repair(Garage)" id="c2" class="service-catagoy">Mechanical Repair(Garage)
                                    </label>
                                </div>
                                <div class="col-md-2">
                                    <label class="checkbox-inline margin-top-10">
                                        <input type="checkbox" value="Tire_Station" id="c3" class="service-catagoy">Tire Station
                                    </label>
                                </div>
                                <div class="col-md-2">
                                    <label class="checkbox-inline margin-top-10">
                                        <input type="checkbox" value="Battery_Station" id="c4" class="service-catagoy">  Battery Station
                                        </div>
                                        <div class="col-md-2">
                                            <label class="checkbox-inline margin-top-10">
                                                <input type="checkbox" value="Towing_Service" id="c5" class="service-catagoy"> Towing Service
                                            </label>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-offset-1 col-md-2">
                                        <label class="checkbox-inline margin-top-10" >
                                            <input type="checkbox" value="AC_Service" id="c6" class="service-catagoy">   A/C Service
                                        </label>
                                    </div>
                                    <div class="col-md-2">
                                        <label class="checkbox-inline margin-top-10">
                                            <input type="checkbox" value="Spare_Parts" id="c7" class="service-catagoy"> Spare Parts
                                        </label>
                                    </div>
                                    <div class="col-md-2">
                                        <label class="checkbox-inline margin-top-10">
                                            <input type="checkbox" value="Hotel_and_Accommondation" id="c8" class="service-catagoy">Hotel and Accommodation
                                        </label>
                                    </div>
                                    <div class="col-md-2">
                                        <label class="checkbox-inline margin-top-10">
                                            <input type="checkbox" value="Ambulance_Service" id="c9" class="service-catagoy"> Ambulance Service
                                        </label>
                                    </div>
                                    <div class="col-md-2">
                                        <label class="checkbox-inline margin-top-10">
                                            <input type="checkbox" value="Fire_Service" id="c10" class="service-catagoy">Fire Service
                                        </label>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                            data-dismiss="modal" onclick="resetservicesprovider();">Close</button>
                    <button type="button" class="btn btn-primary" id="add-supplier"
                            onclick="addservicesprovider();" value="">Add Services Provider</button>
                </div>
            </div>
        </div>
    </div>
    <!--./Service Provider add model-->