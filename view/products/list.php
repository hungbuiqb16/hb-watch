<div class="card">
  <div class="card-header">
    <h3 class="card-title">List Product</h3>
  </div>
  <!-- /.card-header -->
  <div class="card-body p-0">
    <table class="table table-striped">
      <thead>
        <tr>
          <th style="width: 5px">#</th>
            <th>Name</th>
            <th>Image</th>
            <th>Origin</th>
            <th>Code</th>
            <th>Gender</th>
            <th>Type</th>
            <th>Size</th>
            <th>Price</th>
            <th>Wire-type</th>
            <th>Water-resistance</th>
            <th>Warranty</th>
            <th>Created</th>
            <th>Action</th>
        <?php
                while ($product = $listProduct->fetch_assoc()) {
          $id = $product['id'];
        ?>
          <tr>
            <td><?php echo $id;?></td>
            <td><?php echo $product['name'];?></td>
            <td>
                <img src="webroot/uploads/products/<?php echo $product['image'];?>" alt="" style="height: 60px; width: auto;" class="img_default">
            </td>
            <td><?php echo $product['origin'];?></td>
            <td><?php echo $product['code'];?></td>
            <td><?php echo $product['gender'];?></td>
            <td><?php echo $product['type'];?></td>
            <td><?php echo $product['size'];?></td>
            <td><?php echo $product['price'];?></td>
            <td><?php echo $product['wire_type'];?></td>
            <td><?php echo $product['water_resistance'];?></td>
            <td><?php echo $product['warranty'];?></td>
            <td><?php echo $product['created_at'];?></td>
            <td>
                <a href="admin.php?controller=products&action=edit&id=<?php echo $id?>">Edit</a> |
                <a href="admin.php?controller=products&action=delete&id=<?php echo $id?>">Delete</a>
            </td>
          </tr>
          <?php }?>
      </thead>
    </table>
  </div>
  <!-- /.card-body -->
</div>