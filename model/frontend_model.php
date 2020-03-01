<?php
   include 'config/database.php';
   
   class frontendModel extends connectDB {

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
        //đăng nhập
        function login($username,$password) {
            $sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
            return mysqli_query($this->connect(),$sql);
        }

        function getUserID($username) {
            $sql = "SELECT id FROM users WHERE username = '$username'";
            return mysqli_query($this->connect(), $sql);
        }

   	   //lấy ra menu
   	    function getMenu(){
           $sql = "SELECT pd_cg.id AS brand_Id, pd_cg.name AS brand FROM products_category AS pd_cg";
           return mysqli_query($this->connect(),$sql);
   	    }

       //hiển thị sản phẩm ra trang chủ
   	   function getIndexProduct() {
   	   	   $sql = "SELECT pd_cg.id AS brand_Id, pd_cg.name AS brand, GROUP_CONCAT(pd.id,':',pd.name,':',pd.price,':',pd.size,':',pd.gender,':',pd.wire_type,':',pd.water_resistance,':',pd.image) AS product FROM products AS pd INNER JOIN products_category AS pd_cg ON pd.product_category_id = pd_cg.id GROUP BY pd_cg.id";
   	   	   return mysqli_query($this->connect(),$sql);
   	   }

   	   function getDetailProduct($id) {
           $sql = "SELECT pd.*, pd_cg.id AS brand_Id, pd_cg.name AS brand FROM products AS pd INNER JOIN products_category AS pd_cg ON pd.product_category_id = pd_cg.id WHERE pd.id = $id";
           return mysqli_query($this->connect(),$sql);
   	   }

       function getTitleBrand($id) {
           $sql = "SELECT name FROM products_category AS pd_cg WHERE pd_cg.id = '$id'";
           return mysqli_query($this->connect(),$sql);
       }

   	   function getProductByBrand($id) {
   	   	  $sql = "SELECT * FROM products WHERE product_category_id = $id";
   	   	  return mysqli_query($this->connect(),$sql);
   	   }
       //hiển thị các sản phẩm liên quan
   	   function getReleatedProduct($brand) {
   	   	  $sql = "SELECT pd.*, pd_cg.id AS brand_Id, pd_cg.name AS brand FROM products AS pd INNER JOIN products_category AS pd_cg ON pd.product_category_id = pd_cg.id WHERE pd_cg.name = '$brand' ORDER BY RAND() LIMIT 5";
   	   	  return mysqli_query($this->connect(),$sql);
   	   }

       //hiển thị comment theo id sản phẩm
       function getComment($id) {
           $sql = "SELECT cm.*, us.fname, us.avatar FROM comments AS cm INNER JOIN users AS us ON cm.user_id = us.id WHERE product_id = $id AND status = 0";
           return mysqli_query($this->connect(),$sql);
       }

       function comment($user_id,$product_id,$content) {
           $sql = "INSERT INTO comments(user_id,product_id,content) VALUES ('$user_id','$product_id','$content')";
           return mysqli_query($this->connect(),$sql);
       }
       //lấy rep-comments
       function repCommentById($comments_id,$user_id,$content) {
          $sql = "INSERT INTO rep_comments(comments_id,user_id,content) VALUES('$comments_id','$user_id','$content')";
          return mysqli_query($this->connect(), $sql);
       }
       //hiển thị rep-comment theo id comment
       function getRepCommentById($comment_id) {
           $sql = "SELECT rcm.*, us.fname, us.avatar FROM rep_comments AS rcm INNER JOIN users AS us ON rcm.user_id = us.id WHERE comments_id = $comment_id";
           return mysqli_query($this->connect(),$sql);
       } 

       function addRate($productId,$userId,$value) {
           $sql = "INSERT INTO rates(product_id,user_id,value) VALUES ('$productId','$userId','$value')";
           return mysqli_query($this->connect(),$sql);
       }

       function getAvegareRate($productId) {
           $sql = "SELECT AVG(value) AS avgRate FROM rates WHERE product_id = $productId";
           return mysqli_query($this->connect(),$sql);
       }

       function checkRate($userId,$productId) {
           $sql = "SELECT * FROM rates WHERE user_id = $userId AND product_id = $productId";
           return mysqli_query($this->connect(),$sql);
       }

       function countRated($productId) {
           $sql = "SELECT * FROM rates WHERE product_id = $productId";
           return mysqli_query($this->connect(),$sql);
       }

       function addLike($userId,$productId,$status) {
          $status = 1;
          $sql = "INSERT INTO likes(user_id,product_id,status) VALUES ('$userId','$productId','$status')";
          return mysqli_query($this->connect(),$sql);
       }
       function getCart($id) {
          $sql = "SELECT * FROM products WHERE id in ($id)";
          return mysqli_query($this->connect(), $sql);
      }
      
       function saveOrders($user_id) {
          $sql = "INSERT INTO orders(user_id) VALUES ($user_id)";
          $connect = $this->connect();
          mysqli_query($connect,$sql);
          //lấy id của cart vừa lưu vào db
          $last_id = $connect->insert_id;
          return $last_id;
       }

       function saveOrderDetail($order_id,$listID) {
          foreach ($listID as $product_id => $quantity) {
              $sql = "INSERT INTO order_details(order_id,product_id,quantity) VALUES ($order_id,$product_id,$quantity)";
              mysqli_query($this->connect(),$sql);
          }
          return true;
       }

      function getRepComment() {
        $sql = "SELECT repCmt.*, cmt.id,cmt.product_id FROM rep_comments AS repCmt INNER JOIN comments AS cmt ON repCmt.comments_id = cmt.id INNER JOIN users ON cmt.user_id = users.id WHERE cmt.product_id = $id";
      }
      function getAllCommentById($id) {
        $sql = "SELECT c.id, c.content, c.user_id, u.fname AS name, u.avatar, r.content AS reply, r.user_id AS rply_user_id, u2.fname AS reply_name, u2.avatar AS reply_avatar FROM comments AS c JOIN users AS u ON c.user_id = u.id LEFT JOIN rep_comments AS r ON c.id = r.comments_id JOIN users AS u2 ON r.user_id = u2.id WHERE c.product_id = $id GROUP BY c.id";
        return mysqli_query($this->connect(), $sql);
      }

   }

?>