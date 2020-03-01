<?php
    ob_start();
   if(!isset($_SESSION)) {
   	  session_start();
   }
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>HBWatch - Đồng hồ Nhật Bản chính hãng</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- CSS -->
	<link rel="stylesheet" href="webroot/css/my.css">
	<link rel="stylesheet" href="webroot/css/bootstrap.min.css">
	<link rel="stylesheet" href="webroot/css/font-awesome.min.css">
	<link rel="stylesheet" href="webroot/css/bootstrap-rating.css">
	<!-- JS -->
	<script src="webroot/js/jquery.min.js"></script>
	<script src="webroot/js/popper.min.js"></script>
	<script src="webroot/js/bootstrap.min.js"></script>
	<script src="webroot/js/fontawesome.js"></script>
	<script src="webroot/js/my.js"></script>
	<script src="webroot/js/bootstrap-rating.min.js"></script>
   <!-- Font -->
   <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=vietnamese" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,700" rel="stylesheet">
</head>
<body>
	<!-- Nav Section -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" id="menu">
    	<div class="container">
		    <a class="navbar-brand" href="index.php?controller=front&action=home">HBWatch</a>
		     	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		        <span class="navbar-toggler-icon"></span>
		       </button>
		    
		      <div class="collapse navbar-collapse" id="navbarSupportedContent">
		        <ul class="navbar-nav mr-auto">
		          <li class="nav-item dropdown active">
		            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		              Thương hiệu
		            </a>
		            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		                <a class="dropdown-item" href="#"></a>
		            </div>
		          </li>
		          <li class="nav-item dropdown active">
		            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		              Đồng hồ Nam
		            </a>
		            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		              <a class="dropdown-item" href="#">Action</a>
		              <a class="dropdown-item" href="#">Another action</a>
		              <a class="dropdown-item" href="#">Something else here</a>
		              <a class="dropdown-item" href="#">Something else here</a>
		            </div>
		          </li>

		          <li class="nav-item dropdown active">
		            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		              Đồng hồ Nữ
		            </a>
		            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		              <a class="dropdown-item" href="#">Action</a>
		              <a class="dropdown-item" href="#">Another action</a>
		              <a class="dropdown-item" href="#">Something else here</a>
		              <a class="dropdown-item" href="#">Something else here</a>
		            </div>
		          </li>
		        <form class="form-inline my-2 my-lg-0">
			          <input class="form-control mr-sm-2 btn-sm" type="search" placeholder="Bạn tìm gì..." aria-label="Search">
			          <button class="btn btn-outline-secondary btn-sm my-2 my-sm-0" type="submit">Tìm kiếm</button>
		        </form>
                <?php
                    if(isset($_SESSION['login']) && $_SESSION['login']['role'] == 'admin') {
                ?>
			            <li class="nav-item active">
			                <a class="nav-link" href="admin.php"><span><i class="fas fa-user"></i></span> <?php echo $_SESSION['login']['fname'];?></a>
			            </li>
			            <li class="nav-item active">
		                    <a class="nav-link" href="index.php?controller=users&action=logout">Đăng xuất</a>
		                </li>
		                <li class="nav-item active">
		                    <a class="nav-link" href="admin.php">Quản lý</a>
		                </li>              
                <?php
                   } else if(isset($_SESSION['login']) && $_SESSION['login']['role'] == 'customer'){
                ?>
			            <li class="nav-item active">
			                <a class="nav-link" href="index.php?controller=front&action=home"><span><i class="fas fa-user"></i></span> <?php echo $_SESSION['login']['fname'];?></a>
			            </li>
			            <li class="nav-item active">
		                    <a class="nav-link" href="index.php?controller=users&action=logout">Đăng xuất</a>
		                </li>
				        <li class="nav-item active">
				            <a class="nav-link" href="index.php?controller=products&action=cart"><i class="fas fa-shopping-cart"></i> Giỏ hàng</a>
				        </li>
		        <?php
		           } else {
		        ?>		   
			            <li class="nav-item active">
			                <a class="nav-link" href="index.php?controller=users&action=register"><span><i class="fas fa-user"></i></span> Đăng ký</a>
			            </li>
			            <li class="nav-item active">
			                <a class="nav-link" href="index.php?controller=users&action=login">Đăng nhập</a>
			            </li>
			            <li class="nav-item active">
				            <a class="nav-link" href="index.php?controller=products&action=cart"><i class="fas fa-shopping-cart"></i> Giỏ hàng</a>
				        </li>
                <?php
                   }
                ?>
		        </ul>
		      </div>    		
    	</div>
    </nav>
</body>