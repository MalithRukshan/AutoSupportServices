<!-- Error Modal HTML -->
    <div id="offerSendModal" class="modal fade">
        <div class="modal-dialog modal-md" style="max-width: 450px">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #449d44">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                    <h4 class="modal-title text-center">Sending offers....!</h4>
                </div>
                
                <div class="modal-body pull-center">
                    <h3>Are you sure sending  offers..!</h3>
                    
                    <table class="table table-bordered table-hover table-striped"
                           id="transactionTable">
                        <thead>
                            <tr><th></th>                             
                                <th>Contact No</th>
                                <!--<th>Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>-->
                            </tr>
                        </thead>
                        <tbody id="view-offer">
                            <!-- Total calculated values goes here -->
                        </tbody>
                    </table>
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                        data-dismiss="modal" >Close</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="supplierConformDelete(supid)">Conform</button>
                </div>
            </div>
        </div>
    </div>
    <!--/. Error Modal HTML -->