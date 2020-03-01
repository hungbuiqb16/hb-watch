
<div class="container">
<!-- Breadcum Section -->
    <nav aria-label="breadcrumb">
    	<ol class="breadcrumb">
    		<li class="breadcrumb-item"><a href="#" class="breadcrumb-txt">Trang chủ</a></li>
    		<li class="breadcrumb-item"><a href="#" class="breadcrumb-txt">Library</a></li>
    		<li class="breadcrumb-item active" aria-current="page">Data</li>
    	</ol>
    </nav>
<!-- /Breadcum Section -->
<!-- Content Section -->
    <div class="row">
    	<div class="col-sm-9">
    		<div class="row">
	    		<div class="col-sm-7">
					<div class="slide_detailPg">
					    <ul id="lightSlider">
					        <li data-thumb="webroot/uploads/products/<?php echo $detailProduct['image'];?>">
					            <img src="webroot/uploads/products/<?php echo $detailProduct['image'];?>" style="height: 350px; width: auto;" />
					        </li>
					    </ul>
					</div>
				</div> 
    		    <div class="col-sm-5">
				    <div class="card">
				        <div class="card-body">
				            <h4 class="card-title"><?php echo 'Đồng hồ '.$detailProduct['gender'].' '.$detailProduct['name'];?></h4>
				            <hr>
				            <div class="row my-2">
									<div class="rate">
										<div class="ava_rate">
												<form action="index.php?controller=rate&action=add" method="POST">
												<span class="rate_avg" style="padding-left: 5px"><?php echo round($ratesAvg['avgRate'],1);?></span>												
												<img src="webroot/images/star.jpg" style="width: 20px; height: auto;" alt="star">
												<?php
												    if(isset($_SESSION['login'])) {
                                                         if($checkRated->num_rows == 0) {                                                    
                                                ?> 
													<select name="rate_value" class="btn-outline-success">
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
													</select>
												    <input type="submit" name="rate" class="btn btn-outline-success btn-sm" value="Đánh giá">
												<?php
                                                    } else {
                                                ?>
                                                    <span class="text-info">Bạn đã đánh giá cho sản phẩm này</span>
                                                    <p class="text-info text-center">Có <?php echo $countRated->num_rows;?> người đã đánh giá cho sản phẩm này</p>
                                                <?php
                                                     }
                                                  }
												?>

												<input type="hidden" name="product_id" value="<?php echo $detailProduct['id'];?>">
												<input type="hidden" name="brand" value="<?php echo $detailProduct['brand'];?>">

											</form>
										</div>
									</div>
							</div>
<!-- 						    <div class="row">
						    	<form action="index.php?controller=product&action=like">    
				    	            <button type="submit" name = "like" class="btn-sm" style="background-color: transparent; border: none;"><a class="btn text-white btn-danger btn-sm"><i class="fa fa-heart"></i> Thích</a></button>					    		
						    	</form>
				    	    </div> -->
				            <div class="row">
				    	        <ul class="info-product">
						    		<li class="status">Tình trạng: <?php echo $detailProduct['status'];?></li>
						    		<li class="gender">Giới tính: <?php echo $detailProduct['gender'];?></li>
						    		<li class="trademark">Thương hiệu: <?php echo $detailProduct['brand'];?></li>
						    		<li class="watch-type">Loại đồng hồ: <?php echo $detailProduct['type'];?></li>
						    		<li class="type-of-wire">Loại dây: <?php echo $detailProduct['wire_type'];?></li>
				    	        </ul>
				    	       <div class="dropdown-divider"></div>
				            </div>
				        </div>
				    </div>
				    <div class="my-1 text-center price" style="color: red; font-weight: bold; font-size: 20px"><?php echo number_format($detailProduct['price'],0,'','.');?><sup>đ</sup></div>
					<div class="btn-select">
		         		<a href="index.php?controller=products&action=buy&brand=<?php echo $detailProduct['brand']?>&id=<?php echo $detailProduct['id']?>" class="btn btn-outline-success buy-now my-1" role="button"><i class="fas fa-shopping-cart"></i> Mua ngay</a>							
						<a href="details.html" class="btn btn-outline-warning add-to-card" role="button"><i class="fas fa-shopping-cart"></i> Thêm vào giỏ hàng</a>
					</div>
				</div>
			</div>
			<hr>
		    </hr>
			<div class="row">
				<div class="col-sm-7">
					<div class="desc-heading"><i class="fas fa-info"></i> Đặc điểm nội bật của <?php echo $detailProduct['name'];?></div>
					<div class="desc-product"><?php echo $detailProduct['description'];?></div>
				</div>
				<div class="col-sm-5">
					<div class="panel-title"><i class="far fa-file-alt"></i> Thông tin sản phẩm</div>
					<div class="table-condensed card">
						<table class="table" border="0">
							<tbody>
								<tr class="tr-0" valign="top">
									<td class="title_charactestic" width="40%">Thương hiệu:</td>
									<td class="content_charactestic"><?php echo $detailProduct['brand'];?></td>
								</tr>
								<tr class="tr-0" valign="top">
									<td class="title_charactestic" width="40%">Xuất xứ:</td>
									<td class="content_charactestic"><?php echo $detailProduct['origin'];?></td>
								</tr>
								<tr class="tr-0" valign="top">
									<td class="title_charactestic" width="40%">Kiểu máy:</td>
									<td class="content_charactestic"><?php echo $detailProduct['type'];?></td>
								</tr>
								<tr class="tr-0" valign="top">
									<td class="title_charactestic" width="40%">Kích cỡ:</td>
									<td class="content_charactestic"><?php echo $detailProduct['size'];?></td>
								</tr>
								<tr class="tr-0" valign="top">
									<td class="title_charactestic" width="40%">Chất liệu dây:</td>
									<td class="content_charactestic"><?php echo $detailProduct['wire_type'];?></td>
								</tr>
								<tr class="tr-0" valign="top">
									<td class="title_charactestic" width="40%">Độ chịu nước:</td>
									<td class="content_charactestic"><?php echo $detailProduct['water_resistance'];?></td>
								</tr>
								<tr class="tr-0" valign="top">
									<td class="title_charactestic" width="40%">Giới tính:</td>
									<td class="content_charactestic"><?php echo $detailProduct['gender'];?></td>
								</tr>
								<tr class="tr-0" valign="top">
									<td class="title_charactestic" width="40%">Bảo hành:</td>
									<td class="content_charactestic"><?php echo $detailProduct['warranty'];?></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row my-2 rating">
<!-- 					Đánh giá -->
			</div>
			<!-- Comment Section -->
			<div class="row my-2">
				<div class="col-md-12 col-md-offset-2 col-sm-12">
				    <div class="comment-wrapper">
				        <div class="panel panel-info">
				        	<?php
                               if(isset($_SESSION['comment-error'])) {
                            ?>
                               <div class="text-danger text-center my-2"><?php echo $_SESSION['comment-error'];?></div>
                            <?php
                               }
				        	?>
				            <div class="panel-heading-cmt">
				            <i class="fas fa-pen"></i> Nhận xét
				            </div>
				            <div class="panel-body">
				            	<form action="index.php?controller=comment&action=add" method="post">
					                <textarea class="form-control" name ="content" placeholder="Bạn có nhận xét gì..." rows="3"></textarea>
					                <br>
					                <button type="submit" name="comment" class="btn btn-info pull-right btn-sm btn-cmt">Đăng</button>
					                <input type="hidden" name="product_id" value="<?php echo $detailProduct['id']?>">	
									<input type="hidden" name="brand" value="<?php echo $detailProduct['brand'];?>">		             		
				            	</form>

				                <div class="clearfix"></div>
				                <hr>
		                        <?php
                                    	while ($comment = $listComment->fetch_assoc()) {
                                    		$comment_id = $comment['id'];

                                ?>

					                <ul class="media-list">
					                    <li class="media">
					                        <input type="hidden" name="comment_id" value="<?php echo $comment_id;?>">
					                        <a href="#" class="pull-left">
					                            <img src="webroot/uploads/users/<?php echo $comment['avatar']?>" alt="" class="img-circle">
					                        </a>
					                        <div class="media-body">
					                            <span class="text-muted pull-right">
					                                <small class="text-muted"></small>
					                            </span>
					                                <strong class="text-success">@<?php echo $comment['name']?></strong>
					                                <p class="p-1"><?php echo $comment['content']?>
					                                </p>
					                                <a class="btn btn-info btn-sm pull-right" href="#" id="reply"><i class="fas fa-reply"></i>
					                            </span> Trả lời</a>
					                        </div>
					                    </li>
					                </ul>
					                <!-- Answer Section -->
					            	    <form action="index.php?controller=comment&action=reply" method="post">
					 					    <input type="hidden" name="comment_id" value="<?php echo $comment_id;?>">
						                    <textarea class="form-control" name ="rep_content" placeholder="Nhập câu trả lời..." rows="3"></textarea>
						                    <br>
						                     <button type="submit" name="reply" class="btn btn-info pull-right btn-sm btn-cmt">Trả lời</button>
						                     <input type="hidden" name="product_id" value="<?php echo $detailProduct['id']?>">	
										     <input type="hidden" name="brand" value="<?php echo $detailProduct['brand'];?>">		             		
					            	    </form>
					                <hr>

 					                <ul class="media-list" style="margin-left: 50px">
					                    <li class="media ">
					                        <a href="#" class="pull-left">
					                            <img src="webroot/uploads/users/<?php echo $comment ['reply_avatar']?>" alt="" class="img-circle">
					                        </a>
					                        <div class="media-body">
					                            <span class="text-muted pull-right">
					                                <small class="text-muted"></small>
					                                </span>
					                                <strong class="text-success">@<?php echo $comment['name']?></strong>
					                                <p class="p-1"><?php echo $comment['reply']?>
					                                </p>
					                                <a class="btn btn-info btn-sm pull-right" href="#" id="reply"><i class="fas fa-reply"></i>
					                             </span> Trả lời</a>
					                        </div>
					                    </li>
					                </ul>                                      
 
                                <?php
                                    }

                                    
		                        ?>

				                </div>
				            </div>
				        </div>

				</div>
            <!-- /End Comment Section -->					
			</div>
        </div>         			
   		<div class="col-sm-3">
            <div class="panel panel-default">
                <div class="panel-title"><i class="fas fa-angle-double-right"></i> Sản phẩm liên quan</div>
                <?php
                    while ($relatedPd = $relatedProduct->fetch_assoc()) {
                ?>
                    <div class="panel-body">
					    <div class="picture my-2">
					    	<a href="index.php?controller=products&action=detail&brand=<?php echo $relatedPd['brand']?>&id=<?php echo $relatedPd['id']?>"><img class="card-img-top img-responsive img-desc img-detailPg" src="webroot/uploads/products/<?php echo $relatedPd['image']?>" style="height: 150px; width: auto;" alt="Card image"></a>
					    </div>
						<p class="text-center"><a href="index.php?controller=products&action=detail&brand=<?php echo $relatedPd['brand']?>&id=<?php echo $relatedPd['id']?>"><?php echo 'Đồng hồ '.$relatedPd['gender'].' '.$relatedPd['name']?></a></p>
					</div>

                <?php     	
                    }
                ?>
            </div>        		
    	</div>
    </div>
