<?php 
	include 'model/frontend_model.php';
    include 'libs/function.php';
	class FrontendControler {

		function handleRequest(){
			// Khoi tao model dung chung
			$frontModel = new frontendModel();
			// khoi tao Lib dung chung
			$libs = new LibCommon();

			$controller = isset($_GET['controller'])?$_GET['controller']:'front';
			$action = isset($_GET['action'])?$_GET['action']:'home';

			switch ($controller) {
				case 'front':
					$this->handleFront($action, $frontModel, $libs);
					break;
				case 'products':
					$this->handleProduct($action, $frontModel, $libs);
					break;
				case 'users':
					$this->handleUsers($action, $frontModel, $libs);
					break;
				case 'comment':
					$this->handleComment($action, $frontModel, $libs);
					break;
				case 'rate':
					$this->handleRate($action, $frontModel, $libs);
					break;
				default:
					# code...
					break;
			}
		}

		function handleFront($action, $frontModel, $libs){
            switch ($action) {
            	case 'home':
            		$product = $frontModel->getIndexProduct();
            		include 'view/products/home.php';
            		break;
            	default:
            		break;
            }
		}

		function handleUsers($action, $frontModel, $libs){
            switch ($action) {
            	case 'register':
            	if(isset($_POST['register'])) {
					$fname         = $_POST['fname'];
					$username      = $_POST['username'];
					$email         = $_POST['email'];
					$phone         = $_POST['phone'];
					$role          = $_POST['role'];
					$birthday      = $_POST['birthday'];
					$password      = $_POST['password'];
					$passwordAgain = $_POST['passwordAgain'];
					if($fname != '' && $username != '' && $email != '' && $phone != '' && $role != '' && $birthday != '' && $password != '' && $password == $passwordAgain) {
		    			$avatar = $_FILES['avatar']['name'];
		    			move_uploaded_file($_FILES['avatar']['tmp_name'], 'uploads/'.$avatar);
		    		    $checkRegister = $frontModel->register($fname,$username,$email,$phone,$role,$birthday,$avatar,$password);
		    		    if($checkRegister === TRUE) {
		    		    	if(isset($_SESSION['reg-error'])) {
		    		    		unset($_SESSION['reg-error']);
		    		    	}
		    		    	$libs->redirectPage('index.php?controller=front&action=home');
		    		    } else {
		    		    	$_SESSION['reg-error'] = 'Đăng ký không thành công!';
		    		    }					
					}
            	}
            		include 'view/users/register.php';
            		break;
            	case 'login':
            	   if(isset($_POST['login'])) {
              			$username      = $_POST['username'];
              			$password      = $_POST['password'];
	            	    $checkLogin = $frontModel->login($username,$password);
            	        if($checkLogin->num_rows) {
            	        	$role = $checkLogin->fetch_assoc();
            	        	$login['fname']    = $role['fname'];
            	        	$login['role']     = $role['role'];
            	        	$login['avatar']   = $role['avatar'];
            	        	$login['id']       = $role['id'];
            	        	$_SESSION['login'] = $login;
	            	    	if(isset($_SESSION['login-error'])) {
	                           unset($_SESSION['login-error']);
	            	    	}
	            	    	if(isset($_SESSION['comment-error'])) {
                               unset($_SESSION['comment-error']);
	            	    	}
                            $libs->redirectPage('index.php?controller=front&action=home');
            	        } else {
            	      	    $_SESSION['login-error'] = 'Đăng nhập không thành công';
            	      	   $libs->redirectPage('index.php?controller=users&action=login');
            	       }
            	    }
            		include 'view/users/login.php';
            		break;
            	case 'logout':
            		 session_destroy();
            		 $libs->redirectPage('index.php?controller=front&action=home');
            		break;
            	default:
            		# code...
            		break;
            }
		}

		function handleProduct($action, $frontModel, $libs) {
			switch ($action) {
				case 'brand':
				    $id = $_GET['id'];
				    $productByBrand = $frontModel->getProductByBrand($id);
                    $getTitle = $frontModel->getTitleBrand($id);
                    $title = $getTitle->fetch_assoc();
					include 'view/products/brand.php';
					break;
                case 'detail':
                    $id    = $_GET['id'];
	                $brand = $_GET['brand'];
	                //chi tiết sản phẩm
				    $detailProduct = $frontModel->getDetailProduct($id)->fetch_assoc();
				    //sản phẩm liên quan
				    $relatedProduct = $frontModel->getReleatedProduct($brand);
				    //hiển thị đánh giá của người dùng
				    $rateAvg = $frontModel->getAvegareRate($id);
                    $ratesAvg = $rateAvg->fetch_assoc();
                    //check rate
					if(isset($_SESSION['login'])) {
						$userId = $_SESSION['login']['id'];
	                    $checkRated = $frontModel->checkRate($userId,$id);
					}
                    //countRated
					$countRated = $frontModel->countRated($id);
					//hiển thị comments
				    // $listComment = $frontModel->getComment($id);
				    //hiển thị rep-comments
				    $listComment = $frontModel->getAllCommentById($id);
            	    include 'view/products/detail.php';
            	break;
            	case 'buy':
            	    //lấy id của sản phẩm
            	    $id = $_GET['id'];
            	    //bắt buộc người dùng phải đăng nhập trước khi mua hàng
            	    if(isset($_SESSION['login'])) {
                       //kiểm tra người dùng đã chọn món hàng có id là $id trước đó hay chưa. Nếu chưa thì gán giá trị bằng 1, ngược lại thì tăng giá trị thêm 1.
            	    	if(isset($_SESSION['cart'][$id])) {
                            $quantity = $_SESSION['cart'][$id] + 1;
            	    	} else {
            	    		$quantity = 1;
            	    	}
            	    	$_SESSION['cart'][$id] = $quantity;
                      $libs->redirectPage('index.php?controller=products&action=cart');
            	    } else {
            	    	$libs->redirectPage('index.php?controller=users&action=login');
            	    }						
            		break;
                case 'cart':
                    if(isset($_SESSION['login']) && !is_null($_SESSION['cart'])) {
	                    $listID = $_SESSION['cart'];
	                    // Chuyển id thành mảng để query. Ex: (2,5,4);
	                    foreach ($listID as $key => $value) {
	                    	$item[] = $key;
	                    }
	                    $id = implode(',', $item);
						$myCart = $frontModel->getCart($id);
                    } else if(!isset($_SESSION['login'])){
                    	$libs->redirectPage('index.php?controller=users&action=login');
                    } else if (is_null($_SESSION['cart'])) {
                    	$libs->redirectPage('index.php?controller=front&action=home');
                    }
                    include 'view/products/cart.php';
                	break;
                case 'removeCart':
                	$id = $_GET['id'];
					unset($_SESSION['cart'][$id]);
					$libs->redirectPage('index.php?controller=products&action=cart');	
                	break;
				case 'checkout':
				    //Check xem người dùng đã đăng nhập hay chưa và có tồn tại giỏ hàng hay không
				    if(isset($_SESSION['login']) && !is_null($_SESSION['cart'])) {
				    	//Lưu giỏ hàng
				    	$user_id = $_SESSION['login']['id'];
				    	$order_id = $frontModel->saveOrders($user_id);
				    	//Lưu giỏ hàng chi tiết
				    	$listID = $_SESSION['cart'];
				    	$frontModel->saveOrderDetail($order_id,$listID);
				    	unset($_SESSION['cart']);
                        $libs->redirectPage('index.php?controller=front&action=home');
				    	
				    } else {
                        $libs->redirectPage('index.php?controller=users&action=login');
				    }		
					break;
				default:
				    #code...
					break;
			}
		}

		function handleComment($action, $frontModel, $libs) {
			switch ($action) {
				case 'add':
				    //lấy comment từ người dùng
                    if(isset($_POST['comment'])) {
                       if(isset($_SESSION['login'])) {
                            $user_id    = $_SESSION['login']['id'];
                            $product_id = $_POST['product_id'];
                            $content    = $_POST['content'];
                            $brand      = $_POST['brand'];
                            if($content != '') {
                                $cmt = $frontModel->comment($user_id,$product_id,$content); 
	                            if($cmt === TRUE) {
	                                 $libs->redirectPage("index.php?controller=products&action=detail&brand=$brand&id=$product_id");
	                            }
                            }
                       } else {
                       	  $libs->redirectPage("index.php?controller=users&action=login");
                       }
                    }
					break;
                case 'reply':
                    if(isset($_POST['reply'])) {
                       if(isset($_SESSION['login'])) {
                            $user_id        = $_SESSION['login']['id'];
                            $product_id     = $_POST['product_id'];
                            $rep_content    = $_POST['rep_content'];
                            $brand          = $_POST['brand'];
                            $comments_id    = $_POST['comment_id'];
                            if($rep_content != '') {
                                $repCmt = $frontModel->repCommentById($comments_id,$user_id,$rep_content); 
	                            if($repCmt  === TRUE) {
	                                 $libs->redirectPage("index.php?controller=products&action=detail&brand=$brand&id=$product_id");
	                            }
                            }
                       } else {
                       	  $libs->redirectPage("index.php?controller=users&action=login");
                       }
                    }               	
                	break;
				default:
					# code...
					break;
			}
		}

		function handleRate($action, $frontModel, $libs) {
			switch ($action) {
				case 'add':
					if(isset($_POST['rate'])) {
						if(isset($_SESSION['login'])) {
							$productId = $_POST['product_id'];
						    $userId    = $_SESSION['login']['id'];
						    $value     = $_POST['rate_value'];
						    $brand     = $_POST['brand'];
						    $rate      = $frontModel->addRate($productId,$userId,$value);
						    if($rate === TRUE){
                               $_SESSION['rate-success'] = 'Bạn đã đánh giá cho sản phẩm này';
                               $libs->redirectPage("index.php?controller=products&action=detail&brand=$brand&id=$productId");
						    }					
						} else {
							$_SESSION['rate-error'] = 'Vui lòng đăng nhập để đánh giá';
						}

					}

					break;
				
				default:
					# code...
					break;
			}
		}
    }
?>
