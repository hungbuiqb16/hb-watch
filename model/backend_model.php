<?php 
	include 'config/database.php';
	class BackendModel extends ConnectDB {
        function getProductList() {
           $sql = "SELECT pd.*, pd_cg.id AS brand_Id, pd_cg.name AS brand FROM products AS pd INNER JOIN products_category AS pd_cg ON pd.product_category_id = pd_cg.id";
           return mysqli_query($this->connect(),$sql);
       }

       function getUserList() {
       	   $sql = "SELECT * FROM users";
       	   return mysqli_query($this->connect(),$sql);
       }

        function register($fname,$username,$email,$phone,$role,$birthday,$avatar,$password) {
            $checkUserExist = $this->checkUserExist($username);
           //kiểm tra tên người dùng đã tồn tại hay chưa
           if($checkUserExist->num_rows == 0) {
                $sql = "INSERT INTO users(fname,username,email,phone,role,birthday,avatar,password) VALUES('$fname','$username','$email','$phone','$role','$birthday','$avatar','$password')";
                return mysqli_query($this->connect(),$sql);       
            }
            return false;
        }
        //lấy ra username
        function checkUserExist($username) {
            $sql = "SELECT * FROM users WHERE username = '$username'";
            return mysqli_query($this->connect(),$sql);
        }
        //lấy ra user
        function getUserById($id) {
        	$sql = "SELECT * FROM users WHERE id = $id";
        	return mysqli_query($this->connect(),$sql);
        }

        //edit user
        function editUser($id,$fname,$username,$email,$phone,$role,$birthday,$avatar,$password,$update_at) {
        	$sql = "UPDATE users SET fname = '$fname', username = '$username', email = '$email', phone = '$phone', role = '$role', birthday = '$birthday', avatar = '$avatar', password = '$password', update_at = '$update_at' WHERE id = $id";
        	return mysqli_query($this->connect(),$sql);
        }

        //delete user
        function deleteUserById($id) {
        	$sql = "DELETE FROM users WHERE id = $id";
        	return mysqli_query($this->connect(),$sql);
        }

        function addProduct($name,$product_category_id,$origin,$code,$status,$gender,$type,$size,$price,$wire_type,$water_resistance,$image,$warranty) {
            $sql = "INSERT INTO products(name,product_category_id,origin,code,status,gender,type,size,price,wire_type,water_resistance,image,warranty) VALUES('$name','$product_category_id','$origin','$code','$status','$gender','$type','$size','$price','$wire_type','$water_resistance','$image','$warranty')";
            return mysqli_query($this->connect(),$sql);
        }

        function getProductById($id) {
        	$sql = "SELECT * FROM products WHERE id = $id";
        	return mysqli_query($this->connect(),$sql);
        }

        function deleteProductById($id) {
        	$sql = "DELETE FROM products WHERE id = $id";
        	return mysqli_query($this->connect(),$sql);        	
        }

        function editProduct($id,$name,$product_category_id,$origin,$code,$status,$gender,$type,$size,$price,$wire_type,$water_resistance,$image,$warranty) {
        	$sql = "UPDATE products SET name = '$name', product_category_id = '$product_category_id', origin = '$origin', code = '$code', status = '$status', gender = '$gender', type = '$type', size = '$size', price = '$price',wire_type = '$wire_type', water_resistance = '$water_resistance', image = '$image', warranty = '$warranty' WHERE id = $id";
        	return mysqli_query($this->connect(),$sql);
        }

        function getListComment() {
           $sql = "SELECT cm.*, pd.name FROM comments AS cm INNER JOIN products AS pd ON cm.id = pd.id";
           return mysqli_query($this->connect(),$sql);
       }

       function approveComment($id) {
       	   $sql = "UPDATE comments SET status = 0 WHERE id = $id";
       	   return mysqli_query($this->connect(),$sql);
       }
	}

?>