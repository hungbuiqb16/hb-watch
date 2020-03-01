    <div class="container my-2">
	    <div class="row">	
	    	<div class="col-md-8">
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					 <!-- The slideshow -->
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img src="webroot/images/slide/mko-des800-300-800x300-(1).png" alt="First slide">
						</div>
						<div class="carousel-item">
							<img src="webroot/images/slide/seiko_1565660944_Fotor.png" alt="First slide">
						</div>
						<div class="carousel-item">
							<img src="webroot/images/slide/rado_1563413022_Fotor.jpg" alt="First slide">
						</div>
						<div class="carousel-item">
							<img src="webroot/images/slide/century_1565660712.jpg" alt="First slide">
						</div>
					</div>
					 <!-- Left and right controls -->
					<a class="carousel-control-prev" href="#carousel-example-generic" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carousel-example-generic" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
	    	</div>
	    <!-- /Slide Section -->
	    <!-- Breaking News Section -->
	    	<div class="col-md-4">
    			<div class="panel-heading" style="background-color:#337AB7; color:white;" >
            		<p style="margin-left:10px; margin-bottom: 0px; padding: 5px;"> Tin tức</p>
            	</div>

		        <ul class="list-group">
		          <li class="list-group-item d-flex justify-content-between align-items-center">
		            <a href="#">Cras justo odio</a>
		            <span class="badge badge-success badge-pill">Mới</span>
		          </li>
		          <li class="list-group-item d-flex justify-content-between align-items-center">
		           <a href="#">Cras justo odio</a>
		            <span class="badge badge-success badge-pill">Mới</span>
		          </li>
		          <li class="list-group-item d-flex justify-content-between align-items-center">
		           <a href="#">Cras justo odio</a>
		            <span class="badge badge-success badge-pill">Mới</span>
		          </li>
		          <li class="list-group-item d-flex justify-content-between align-items-center">
		            <a href="#">Cras justo odio</a>
		            <span class="badge badge-success badge-pill">Mới</span>
		          </li>
		          <li class="list-group-item d-flex justify-content-between align-items-center">
		           <a href="#">Cras justo odio</a>
		            <span class="badge badge-success badge-pill">Mới</span>
		          </li>
		        </ul>
	    	</div>
	   <!--  /Breaking News Section -->
	    </div>
    </div>
    <!-- Hot Product -->
    <div class="container">
    	<div class="row">
    		<div class="col-sm-12"> 

    		</div>
    	</div>
    </div>
    <div class="container my-2">
    <?php
        while ($showProduct = $product->fetch_assoc()) {
    ?>
	    	<div class="row">
	    		<div class="col-sm-12">
			    	<div class="panel-heading">
		    		   <p class="text-uppercase title"><a href="index.php?controller=products&action=brand&id=<?php echo $showProduct['brand_Id']?>"><?php echo $showProduct['brand'];?></a>
		   		        <small><a href="#" class="price-sub">Dưới 2 triệu</a></small>
	            		<small><a href="#" class="price-sub">Từ 2-5 triệu</a></small>
	            		<small><a href="#" class="price-sub">Từ 5-1 triệu</a></small>
	            		<small><a href="#" class="price-sub">Trên 10 triệu</a></small>
	            		</p>
		    	    </div>    			
	    		</div>
	    	</div>
	    	<div class="row">
	    		<?php
	                $ar = explode(',', $showProduct['product']);
	                //khai báo biến đếm số lần lặp
	                $count = 0;
	                foreach ($ar as $prd) {
	                	$count++;
	                	list($id, $name, $price, $size, $gender, $wire, $water, $image) = explode(':', $prd);
	                ?>
			           <div class="col-md-3">
							<div class="card">
								<div class="product-desc">
									<a href="index.php?controller=products&action=detail&brand=<?php echo $showProduct['brand']?>&id=<?php echo $id?>" class="detail-link">
										<div class="detail-hover">
											<div class="detail-hover-content">
			                                    <ul>
			                                    	<li>Đường kính mặt: <?php echo $size ?></li>
			                                    	<li>Loại dây: <?php echo $wire ?></li>
			                                    	<li>Chống nước: <?php echo $water ?></li>
			                                    </ul>
											</div>		
								        </div>
								        <div class="picture">
								    	    <img class="card-img-top img-responsive img-desc" src="webroot/uploads/products/<?php echo $image?>" alt="Card image">
								         </div>
									</a>						
								</div>
							    <div class="card-body" style="padding: 0rem !important;">
							       <p><a href="index.php?controller=products&action=detail&brand=<?php echo $showProduct['brand']?>&id=<?php echo $id?>"><h5 class="text-center" style="font-size: 14px"><?php echo 'Đồng hồ '.$gender.' '.$name;?></h5></a></p>
							       <div class="price text-center" style="color: #e10c00; font-size: 14px; margin-bottom: 5px;margin-top: -13px"><strong><?php echo number_format($price,0,'','.');?><sup>đ</sup></strong></div>
			                       <p class="text-center">
			                       	<a href="index.php?controller=products&action=buy&brand=<?php echo $showProduct['brand']?>&id=<?php echo $id?>" class="btn btn-outline-info btn-sm buy" role="button">Mua</a>
			                       	 <a href="index.php?controller=products&action=detail&brand=<?php echo $showProduct['brand']?>&id=<?php echo $id?>" class="btn btn-outline-danger btn-sm detail" role="button">Chi tiết</a></p>
							    </div>
							</div>          	
			           </div> 
	               <?php
	                    //chỉ cho vòng lặp lặp 4 lần
	                	if($count == 4){
			             	break;
			            }
	                }
	               ?>
	        </div>  
	<?php
	    }
	?>	
    </div>
    <!-- /Product Section -->
    <!-- Service Section -->
    <div class="container" id="service">
    	<div class="row">
    		<div class="col-lg-12 text-center">
    			<h2 class="text-uppercase section-heading">Vì sao nên chọn HBWatch</h2>
    		</div>
    	</div>
    	<div class="row">
    		<div class="col-sm-2">
    			<div class="text-center">
    			    <i class="fas fa-3x fa-trophy icon-service"></i>
    			    <h5 class="my-3">100% Chính hãng</h5>
    			</div>
    		</div>
    		<div class="col-sm-2">
    			<div class="text-center">
    			    <i class="fas fa-3x fa-shield-alt icon-service"></i>
    			    <h5 class="my-3">Bảo hành vượt trội</h5>
    			</div>
    		</div>
    		<div class="col-sm-2">
    			<div class="text-center">
    			    <i class="fas fa-3x fa-shipping-fast icon-service"></i>
    			    <h5 class="my-3">Miễn phí vận chuyển</h5>
    			</div>
    		</div>
    		<div class="col-sm-2">
    			<div class="text-center">
    			    <i class="fas fa-3x fa-user-tie icon-service"></i>
    			    <h5 class="my-3">Khách hàng nói về chúng tôi</h5>
    			</div>
    		</div>
    		<div class="col-sm-2">
    			<div class="text-center">
    			    <i class="fas fa-3x fa-battery-three-quarters icon-service"></i>
    			    <h5 class="my-3">Thay pin trọn đời</h5>
    			</div>
    		</div>
    		<div class="col-sm-2">
    			<div class="text-center">
    			    <i class="fas fa-3x fa-calendar-alt icon-service"></i>
    			    <h5 class="my-3">Đối tác của sự kiện lớn</h5>
    			</div>
    		</div>
    	</div>
    </div>