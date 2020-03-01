<div class="container-fluid">
    <div class="row">
        <div class="col-md-8">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add Product</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" method="post" enctype="multipart/form-data">
                <div class="card-body">
                  <div class="form-group">
                    <label>Name</label>
                    <input type="text" class="form-control" name ="name" placeholder="Tên sản phẩm">
                  </div>
                  <div class="form-group">
                    <label>Category ID</label>
                    <input type="text" class="form-control" name="product_category_id" placeholder="1-Orient, 2-Casio, 3-Citizen, 4-Seiko">
                  </div>
                  <div class="form-group">
                        <label>Description</label>
                        <textarea class="form-control" name="description" rows="3" placeholder="Mô tả ..."></textarea>
                  </div>
                 <div class="form-group">
                        <label>Origin</label>
                        <input type="text" class="form-control" name="origin" placeholder="Xuất xứ">
                  </div>                 
                  <div class="form-group">
                        <label>Code</label>
                        <input type="text" class="form-control" name="code" placeholder="Mã sản phẩm">
                  </div>                 
                  <div class="form-group">
                        <label>Status</label>
                        <input type="text" class="form-control" name="status" placeholder="Tình trạng">
                  </div>                 
                  <div class="form-group">
                        <label>Gender</label>
                        <input type="text" class="form-control" name="gender" placeholder="Giới tính">
                  </div>                  
                  <div class="form-group">
                        <label>Type</label>
                        <input type="text" class="form-control" name="type" placeholder="Kiểu máy">
                  </div>                  
                  <div class="form-group">
                        <label>Size</label>
                        <input type="text" class="form-control" name="size" placeholder="Kích cỡ">
                  </div>                  
                  <div class="form-group">
                        <label>Price</label>
                        <input type="text" class="form-control" name="price" placeholder="Giá">
                  </div>                  
                  <div class="form-group">
                        <label>Wire-type</label>
                        <input type="text" class="form-control" name="wire_type" placeholder="Loại dây">
                  </div>                  
                  <div class="form-group">
                        <label>Water-resistance</label>
                        <input type="text" class="form-control" name="water_resistance" placeholder="Khả năng chống nước">
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
                        <input type="text" class="form-control" name="warranty" placeholder="Bảo hành">
                  </div>                  
                  <div class="form-group">
                        <label>Created-at</label>
                        <input type="date" class="form-control" name="created_at">
                  </div>
                <div class="card-footer">
                  <button type="submit" name ="add" class="btn btn-primary">Add Product</button>
                </div>
                </div>
              </form>
            </div>       
        </div>
    </div>
</div>

