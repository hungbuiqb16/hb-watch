<div class="container">
	<div class="card bg-light">
	<article class="card-body mx-auto" style="max-width: 400px;">				
	    <div class="card-header">
	        <h3 class="card-title text-center">Add Users</h3>
	    </div>
		<form method="post" action="#" enctype="multipart/form-data">
		<div class="form-group input-group">
			<div class="input-group-prepend">
			    <span class="input-group-text"><i class="fas fa-user-tie"></i></span>
			 </div>
	        <input name="fname" class="form-control" placeholder="Họ tên" type="text">
	    </div>
		<div class="form-group input-group">
			<div class="input-group-prepend">
			    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
			 </div>
	        <input name="username" class="form-control" placeholder="Tên đăng nhập" type="text">
	    </div> <!-- form-group// -->
	    <div class="form-group input-group">
	    	<div class="input-group-prepend">
			    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
			 </div>
	        <input name="email" class="form-control" placeholder="Địa chỉ email" type="email">
	    </div> <!-- form-group// -->
	    <div class="form-group input-group">
	    	<div class="input-group-prepend">
			    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
			</div>
	    	<input name="phone" class="form-control" placeholder="Số điện thoại" type="text">
	    </div> <!-- form-group// -->
	    <div class="form-group input-group">
	    	<div class="input-group-prepend">
			    <span class="input-group-text"> <i class="fa fa-building"></i> </span>
			</div>
			<select class="form-control" name="role">
				<option selected="">Chọn loại tài khoản</option>
				<option value="customer">Khách hàng</option>
				<option value="admin">Quản trị viên</option>
			</select>
		</div>
	    <div class="form-group input-group">
	    	<div class="input-group-prepend">
			    <span class="input-group-text"><i class="fas fa-calendar-alt"></i> </span>
			</div>
	        <input class="form-control" name ="birthday" placeholder="Ngày sinh" type="date">
	    </div>
	    <div class="form-group input-group">
	    	<div class="input-group-prepend">
			    <span class="input-group-text"><i class="fas fa-camera"></i></span>
			</div>
	        <input class="form-control" name ="avatar" placeholder="Ảnh đại diện" type="file">
	    </div>
	    <div class="form-group input-group">
	    	<div class="input-group-prepend">
			    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
			</div>
	        <input class="form-control" name ="password" placeholder="Nhập mật khẩu" type="password">
	    </div>
	    <div class="form-group input-group">
	    	<div class="input-group-prepend">
			    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
			</div>
	        <input class="form-control" name="passwordAgain"placeholder="Nhập lại mật khẩu" type="password">
	    </div> <!-- form-group// -->                                      
	    <div class="form-group">
	        <button type="submit" name="add" class="btn btn-primary btn-block register">Thêm</button>
	    </div> <!-- form-group// -->                                                                  
	</form>
	</article>
	</div> <!-- card.// -->
</div>