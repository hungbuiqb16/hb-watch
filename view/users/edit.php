<div class="container">
	<div class="card bg-light">
	<article class="card-body mx-auto" style="max-width: 400px;">				
	    <div class="card-header">
	        <h3 class="card-title text-center">Edit User</h3>
	    </div>
		<form method="post" action="#" enctype="multipart/form-data">
		<div class="form-group input-group">
			<div class="input-group-prepend">
			    <span class="input-group-text"><i class="fas fa-user-tie"></i></span>
			 </div>
	        <input name="fname" class="form-control" placeholder="Họ tên" type="text" value="<?php echo $oldUser['fname'];?>">
	    </div>
		<div class="form-group input-group">
			<div class="input-group-prepend">
			    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
			 </div>
	        <input name="username" class="form-control" placeholder="Tên đăng nhập" type="text" value="<?php echo $oldUser['username'];?>">
	    </div> <!-- form-group// -->
	    <div class="form-group input-group">
	    	<div class="input-group-prepend">
			    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
			 </div>
	        <input name="email" class="form-control" placeholder="Địa chỉ email" type="email" value="<?php echo $oldUser['email'];?>">
	    </div> <!-- form-group// -->
	    <div class="form-group input-group">
	    	<div class="input-group-prepend">
			    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
			</div>
	    	<input name="phone" class="form-control" placeholder="Số điện thoại" type="text" value="<?php echo $oldUser['phone'];?>">
	    </div> <!-- form-group// -->
	    <div class="form-group input-group">
	    	<div class="input-group-prepend">
			    <span class="input-group-text"> <i class="fa fa-building"></i> </span>
			</div>
			<select class="form-control" name="role">
				<option value="customer" <?php if(isset($oldUser['role']) && $oldUser['role'] == 'customer'){ echo 'selected';}?>>Khách hàng</option>
				<option value="admin" <?php if(isset($oldUser['role']) && $oldUser['role'] == 'admin'){ echo 'selected';}?>>Quản trị viên</option>
			</select>
		</div>
	    <div class="form-group input-group">
	    	<div class="input-group-prepend">
			    <span class="input-group-text"><i class="fas fa-calendar-alt"></i> </span>
			</div>
	        <input class="form-control" name ="birthday" placeholder="Ngày sinh" type="date" value="<?php echo $oldUser['birthday'];?>">
	    </div>
	    <div class="form-group input-group">
	    	<div class="input-group-prepend">
			    <span class="input-group-text"><i class="fas fa-camera"></i></span>
			</div>
	        <input class="form-control" name ="avatar" placeholder="Ảnh đại diện" type="file">
	        <img src="uploads/<?php echo $oldUser['avatar']?>" style ="height: 80px;width: auto;" alt="">
	    </div>
	    <div class="form-group input-group">
	    	<div class="input-group-prepend">
			    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
			</div>
	        <input class="form-control" name ="password" placeholder="Nhập mật khẩu" type="password" value="<?php echo $oldUser['password'];?>">
	    </div>                                   
	    <div class="form-group">
	        <button type="submit" name="edit" class="btn btn-primary btn-block register">Lưu</button>
	    </div> <!-- form-group// -->                                                                  
	</form>
	</article>
	</div> <!-- card.// -->
</div>

