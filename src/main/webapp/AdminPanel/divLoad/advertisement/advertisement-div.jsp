<div class="col-md-12" style="margin-top: -35px">
    <h1 class="page-header" >
        Advertisement <small>Update</small>
    </h1>
</div>
<div class="row" >
    <div class="col-md-12">
        <div class="panel" style="margin-top: -18px">
            <div class="panel-heading">
                <h3 class="panel-title">
                    Select and Upload Images
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-12">

                        <form method="POST" enctype="multipart/form-data"
                              action="/rest/employeeservices/fileservice/uploadaddvertiesment" class="pull-center">

                            <div class="row" style="margin-left: 5px"> 
                                <div class="col-xs-9 choose_file"> 

                                    <span id="span-image">Select Image<input type="file" name="upfile" class="btn btn-sm btn-default"/></span>

                                </div> 

                                <div class="col-xs-3"> 
                                    <input type="submit"  id="image-submit" value="Upload" class="btn btn-sm btn-default" style="margin-top: 2px; width: 100%"/> 
                                </div>
                            </div> 
                        </form>
                    </div>
                </div> 
                <!--Image grid view for display uploaded images -->
                <div class="row" style="margin-top: 20px">
                    <div class="col-md-12">
                        <div class="form-group" id="add-form-group">	

                        </div>
                    </div>
                </div>	
                <!-- /.row -->
            </div>
        </div>
    </div>
</div>  

</body>
</html>
