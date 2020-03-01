<div class="container">
	   <div class="row my-2">
		<div class="col-sm-12">
	    	<div class="panel-heading">
			   <p class="text-uppercase title"><?php echo $title['name'];?>
	    		</p>
		    </div>    			
	    </div>
	   </div>
	   <div class="row my-2">
	    <?php
	      while ($product = $productByBrand->fetch_assoc()) {
	    ?>
   	   	    <div class="col-md-3">
				<div class="card">
					<div class="product-desc">
						<a href="index.php?controller=products&action=detail&brand=<?php echo $title['name'];?>&id=<?php echo $product['id'];?>" class="detail-link">
					        <div class="picture my-2">
					    	    <img class="card-img-top img-responsive img-desc img-detailPg" src="webroot/uploads/products/<?php echo $product['image'];?>" alt="Card image">
					         </div>
						</a>						
					</div>
				    <div class="card-body" style="padding: 0rem !important;">
				       <p><a href="index.php?controller=products&action=detail&brand=<?php echo $title['name'];?>&id=<?php echo $product['id'];?>"><h5 class="text-center" style="font-size: 14px"><?php echo $product['name'];?></h5></a></p>
				       <div class="price text-center" style="color: #e10c00; font-size: 14px; margin-bottom: 5px;margin-top: -13px"><strong><?php echo $product['price'];?><sup>đ</sup></strong></div>
                       <p class="text-center">
                       	<a href="index.php?controller=products&action=buy&brand=<?php echo $title['name'];?>&id=<?php echo $product['id'];?>" class="btn btn-outline-info btn-sm buy" role="button">Mua</a>
                       	 <a href="index.php?controller=products&action=detail&brand=<?php echo $title['name'];?>&id=<?php echo $product['id'];?>" class="btn btn-outline-danger btn-sm detail" role="button">Chi tiết</a></p>
				    </div>
				</div>          	
   	   	    </div>
	    <?php
	      }
	    ?>
	   </div>
</div>