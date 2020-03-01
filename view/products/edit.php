<div class="container-fluid">
    <div class="row">
        <div class="col-md-8">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Edit Product</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" method="post" enctype="multipart/form-data">
                <div class="card-body">
                  <div class="form-group">
                    <label>Name</label>
                    <input type="text" class="form-control" name ="name" value="<?php echo $oldProduct['name']?>">
                  </div>
                  <div class="form-group">
                    <label>Category ID</label>
                    <input type="text" class="form-control" name="product_category_id" value="<?php echo $oldProduct['product_category_id']?>">
                  </div>
                  <div class="form-group">
                        <label>Description</label>
                        <textarea class="form-control" name="description" rows="3" placeholder="<?php echo $oldProduct['description']?>"></textarea>
                  </div>
                 <div class="form-group">
                        <label>Origin</label>
                        <input type="text" class="form-control" name="origin" value="<?php echo $oldProduct['origin']?>">
                  </div>                 
                  <div class="form-group">
                        <label>Code</label>
                        <input type="text" class="form-control" name="code" value="<?php echo $oldProduct['code']?>">
                  </div>                 
                  <div class="form-group">
                        <label>Status</label>
                        <input type="text" class="form-control" name="status" value="<?php echo $oldProduct['status']?>">
                  </div>                 
                  <div class="form-group">
                        <label>Gender</label>
                        <input type="text" class="form-control" name="gender" value="<?php echo $oldProduct['gender']?>">
                  </div>                  
                  <div class="form-group">
                        <label>Type</label>
                        <input type="text" class="form-control" name="type" value="<?php echo $oldProduct['type']?>">
                  </div>                  
                  <div class="form-group">
                        <label>Size</label>
                        <input type="text" class="form-control" name="size" value="<?php echo $oldProduct['size']?>">
                  </div>                  
                  <div class="form-group">
                        <label>Price</label>
                        <input type="text" class="form-control" name="price" value="<?php echo $oldProduct['price']?>">
                  </div>                  
                  <div class="form-group">
                        <label>Wire-type</label>
                        <input type="text" class="form-control" name="wire_type" value="<?php echo $oldProduct['wire_type']?>">
                  </div>                  
                  <div class="form-group">
                        <label>Water-resistance</label>
                        <input type="text" class="form-control" name="water_resistance" value="<?php echo $oldProduct['water_resistance']?>">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputFile">Image</label>
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" name="image">
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                      <div class="input-group-append">
                        <span class="input-group-text" id="">Upload</span>
                      </div>
                    </div>
                  </div>               
                  <div class="form-group">
                        <label>Warranty</label>
                        <input type="text" class="form-control" name="warranty" value="<?php echo $oldProduct['warranty']?>">
                  </div>                  
                <div class="card-footer">
                  <button type="submit" name ="edit" class="btn btn-primary">Save</button>
                </div>
                </div>
              </form>
            </div>       
        </div>
    </div>
</div>
