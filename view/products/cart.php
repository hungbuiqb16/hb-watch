<?php
   if(!isset($_SESSION)) {
       session_start();
   }
?>
<style type="text/css">
	.quantity {
    float: left;
    margin-right: 15px;
    background-color: #eee;
    position: relative;
    width: 80px;
    overflow: hidden
}

.quantity input {
    margin: 0;
    text-align: center;
    width: 15px;
    height: 15px;
    padding: 0;
    float: right;
    color: #000;
    font-size: 20px;
    border: 0;
    outline: 0;
    background-color: #F6F6F6
}

.quantity input.qty {
    position: relative;
    border: 0;
    width: 100%;
    height: 40px;
    padding: 10px 25px 10px 10px;
    text-align: center;
    font-weight: 400;
    font-size: 15px;
    border-radius: 0;
    background-clip: padding-box
}

.quantity .minus, .quantity .plus {
    line-height: 0;
    background-clip: padding-box;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
    -webkit-background-size: 6px 30px;
    -moz-background-size: 6px 30px;
    color: #bbb;
    font-size: 20px;
    position: absolute;
    height: 50%;
    border: 0;
    right: 0;
    padding: 0;
    width: 25px;
    z-index: 3
}

.quantity .minus:hover, .quantity .plus:hover {
    background-color: #dad8da
}

.quantity .minus {
    bottom: 0
}
.shopping-cart {
    margin-top: 20px;
}
/*Modal*/
    .modal-confirm {        
        color: #636363;
        width: 325px;
    }
    .modal-confirm .modal-content {
        padding: 20px;
        border-radius: 5px;
        border: none;
    }
    .modal-confirm .modal-header {
        border-bottom: none;   
        position: relative;
    }
    .modal-confirm h4 {
        text-align: center;
        font-size: 26px;
        margin: 30px 0 -15px;
    }
    .modal-confirm .form-control, .modal-confirm .btn {
        min-height: 40px;
        border-radius: 3px; 
    }
    .modal-confirm .close {
        position: absolute;
        top: -5px;
        right: -5px;
    }   
    .modal-confirm .modal-footer {
        border: none;
        text-align: center;
        border-radius: 5px;
        font-size: 13px;
    }   
    .modal-confirm .icon-box {
        color: #fff;        
        position: absolute;
        margin: 0 auto;
        left: 0;
        right: 0;
        top: -70px;
        width: 95px;
        height: 95px;
        border-radius: 50%;
        z-index: 9;
        background: #82ce34;
        padding: 15px;
        text-align: center;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
    }
    .modal-confirm .icon-box i {
        font-size: 58px;
        position: relative;
        top: 3px;
    }
    .modal-confirm.modal-dialog {
        margin-top: 80px;
    }
    .modal-confirm .btn {
        color: #fff;
        border-radius: 4px;
        background: #82ce34;
        text-decoration: none;
        transition: all 0.4s;
        line-height: normal;
        border: none;
    }
    .modal-confirm .btn:hover, .modal-confirm .btn:focus {
        background: #6fb32b;
        outline: none;
    }
    .trigger-btn {
        display: inline-block;
        margin: 100px auto;
    }
</style>
<div class="container">
   <div class="card shopping-cart my-2">
            <div class="shopping-panel" style="padding: 10px 5px;text-transform: uppercase;font-size: 1rem;background-color: #352750;color: #fff;">
                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                Đơn hàng
                <a href="index.php?controller=front&action=home" class="btn btn-outline-info btn-sm pull-right">Tiếp tục mua hàng</a>
                <div class="clearfix"></div>
            </div>
            <form class="card-body" method="post">
                    <!-- PRODUCT -->
            <?php
                //khai báo biến tổng số tiền
                $total = 0;
                while ($product = $myCart->fetch_assoc()) {
                //lấy id sản phẩm
                $id = $product['id'];
                //khai báo biến số lượng sản phẩm
                $quantity = $_SESSION['cart'][$product['id']];
                //khai báo biến tổng tiền cho từng sản phẩm
                $money = $product['price']*$quantity;
                $total += $money;
                if(isset($_POST['update'])) {
                    foreach ($_POST['qty'] as $key => $value) {
                        $quantity == $value;
                    }
                    

                }
            ?>
                    <div class="row">
                         <div class="col-12 col-sm-12 col-md-2 text-center">
                                <img class="img-responsive" src="webroot/uploads/products/<?php echo $product['image']?>" alt="prewiew" width="80" height="80">
                        </div>
                        <div class="col-12 text-sm-center col-sm-12 text-md-left col-md-6">
                            <h4 class="product-name"><strong><?php echo $product['name']?></strong></h4>
                            <h4>
                                <small>Đồng hồ <?php echo $product['gender'];?></small>
                               <!--  <h6>Thành tiền: <strong><?php echo number_format($money,'0','',',')?><sup> đ</sup></strong></h6> -->
                            </h4>
                        </div>                           
                         <div class="col-12 col-sm-12 text-sm-center col-md-4 text-md-right row">
                            <div class="col-3 col-sm-3 col-md-6 text-md-right" style="padding-top: 5px">
                                <h6><strong><?php echo number_format($product['price'],'0','',',')?><sup> đ</sup><span class="text-muted">  x</span></strong></h6>
                            </div>
                            <div class="col-4 col-sm-4 col-md-2">
                                <div class="quantity">
                                    <input type="button" value="+" class="plus">
                                    <input type="number" step="1" max="99" min="1" value="<?php echo $quantity?>" title="Qty" class="qty"
                                           size="4" name="qty[<?php echo $id?>];">
                                    <input type="button" value="-" class="minus">
                                </div>
                            </div>
                            <div class="col-2 col-sm-2 col-md-4 text-right">
                                <button type="button" class="btn btn-danger btn-xs">
                                    <a href="index.php?controller=products&action=removeCart&id=<?php echo $id?>" style="color: #fff"><i class="fa fa-trash" aria-hidden="true"></i></a> 
                                </button>
                            </div>
                        </div>
                       
                    </div>
                    <hr>
                <?php
                }
                ?>
                    <!-- END PRODUCT -->
                <div class="pull-right">
                    <input type="submit" name="update" class="btn btn-outline-warning pull-right" value="Cập nhật giỏ hàng">
                    <!-- <a href="index.php?controller=products&action=update" class="btn btn-outline-warning pull-right">Cập nhật đơn hàng</a> -->
                </div>
            </form>
            <div class="card-footer">
                <div class="coupon col-md-5 col-sm-5 no-padding-left pull-left">
                    <div class="row">
                        <div class="col-6">
                            <input type="text" class="form-control" placeholder="Nhập mã giảm giá">
                        </div>
                        <div class="col-6">
                            <input type="submit" class="btn btn-success" value="Áp dụng">
                        </div>
                    </div>
                </div>
                <div class="pull-right" style="margin: 10px">
                    <a class="btn btn-success pull-right" href="index.php?controller=products&action=checkout" class="trigger-btn" data-toggle="modal">Thanh toán</a>
                    <div class="pull-right" style="margin: 5px">
                        Tổng cộng <b><?php echo number_format($total,'0','',',');?><sup> đ</sup></b>
                    </div>
                </div>
            </div>
        </div>
</div>
<!-- <div class="container">
    <table id="cart" class="table table-hover table-condensed">
                    <thead>
                        <tr>
                            <th style="width:50%">Product</th>
                            <th style="width:10%">Price</th>
                            <th style="width:8%">Quantity</th>
                            <th style="width:22%" class="text-center">Subtotal</th>
                            <th style="width:10%"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td data-th="Product">
                                <div class="row">
                                    <div class="col-sm-2 hidden-xs"><img src="http://placehold.it/100x100" alt="..." class="img-responsive"/></div>
                                    <div class="col-sm-10">
                                        <h4 class="nomargin">Product 1</h4>
                                        <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>
                                    </div>
                                </div>
                            </td>
                            <td data-th="Price">$150.00</td>
                            <td data-th="Quantity">
                                <input type="number" class="form-control text-center" value="1">
                            </td>
                            <td data-th="Subtotal" class="text-center">150.00</td>
                            <td class="actions" data-th="">
                                <button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
                                <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>                                
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr class="visible-xs">
                            <td class="text-center"><strong>Total 1.99</strong></td>
                        </tr>
                        <tr>
                            <td><a href="#" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
                            <td colspan="2" class="hidden-xs"></td>
                            <td class="hidden-xs text-center"><strong>Total $150.00</strong></td>
                            <td><a href="https://www.paypal.com/webapps/hermes?token=5EY097812P7754247&useraction=commit&mfid=1546377013907_cf1dec6830d7" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
                        </tr>
                    </tfoot>
                </table>
</div> -->
<!-- Modal HTML -->
<div id="myModal" class="modal fade">
    <div class="modal-dialog modal-confirm">
        <div class="modal-content">
            <div class="modal-header">
                <div class="icon-box">
                    <i class="fas fa-check"></i>
                </div>              
                <h4 class="modal-title">Hoàn tất!</h4>   
            </div>
            <div class="modal-body">
                <p class="text-center">Đơn hàng của bạn đã được xác nhận.<br>Vui lòng kiểm tra email để biết thêm chi tiết</p>
            </div>
            <div class="modal-footer">
                <a href="index.php?controller=products&action=checkout"><button class="btn btn-success btn-block" data-dismiss="modal">OK</button></a>
                
            </div>
        </div>
    </div>
</div>     