<?php 
	include 'model/backend_model.php';
	include 'libs/function.php';

  class BackendController {
  	function handleRequest(){
			// Khoi tao model dung chung
			$backModel = new BackendModel();
			// khoi tao Lib dung chung
			$libs = new LibCommon();

			$controller = isset($_GET['controller'])?$_GET['controller']:'dashboard';
			$action = isset($_GET['action'])?$_GET['action']:'home';

			switch ($controller) {
				case 'dashboard':
					$this->handleDashboard($action, $backModel, $libs);
					break;
				case 'products':
					$this->handleProduct($action, $backModel, $libs);
					break;
				case 'users':
					$this->handleUsers($action, $backModel, $libs);
					break;
				case 'comments':
					$this->handleComments($action, $backModel, $libs);
					break;
				default:
					# code...
					break;
			}
		}

		function handleDashboard($action, $backModel, $libs) {

		}
		
		function handleUsers($action, $backModel, $libs) {
			switch ($action) {
				case 'list':
				    $listUser = $backModel->getUserList();
					include 'view/users/list.php';
					break;
				case 'add':
                    if(isset($_POST['add'])) {
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
			    		    $checkAdd = $backModel->register($fname,$username,$email,$phone,$role,$birthday,$avatar,$password);
			    		    if($checkAdd === TRUE) {
                                $libs->redirectPage('admin.php?controller=users&action=list');
			    		    } else {
			    		    	$_SESSION['add-error'] = 'Thêm tài khoản người dùng không thành công!';
			    		    }						
						}                      
                    }
					include 'view/users/add.php';
					break;
				case 'edit':
				    $id = $_GET['id'];
				    $userById = $backModel->getUserById($id);
				    $oldUser = $userById->fetch_assoc();
				    if(isset($_POST['edit'])) {
						$fname         = $_POST['fname'];
						$username      = $_POST['username'];
						$email         = $_POST['email'];
						$phone         = $_POST['phone'];
						$role          = $_POST['role'];
						$birthday      = $_POST['birthday'];
						$password      = $_POST['password'];
						$avatar        = $oldUser['avatar'];
						$update_at     = Date('Y-m-d h:i:s');
						if($fname != '' && $username != '' && $email != '' && $phone != '' && $role != '' && $birthday != '' && $password != '') {
                            $avatar = $_FILES['avatar']['name'];
			    			move_uploaded_file($_FILES['avatar']['tmp_name'], 'uploads/'.$avatar);
			    		    $checkAdd = $backModel->editUser($id,$fname,$username,$email,$phone,$role,$birthday,$avatar,$password,$update_at);
			    		    if($checkAdd === TRUE) {
                                $libs->redirectPage('admin.php?controller=users&action=list');
			    		    }					
						}
				    }
					include 'view/users/edit.php';
					break;
			    case 'delete':
			    	$id = $_GET['id'];
			    	$deleteUser = $backModel->deleteUserById($id);
			    	$libs->redirectPage('admin.php?controller=users&action=list');
			    	break;
				default:
					# code...
					break;
			}
		}

		function handleProduct($action, $backModel, $libs) {
			switch ($action) {
				case 'add':
					if(isset($_POST['add'])) {
                        $name                = $_POST['name'];
                        $product_category_id = $_POST['product_category_id'];
                        $origin              = $_POST['origin'];
                        $code                = $_POST['code'];
                        $status              = $_POST['status'];
                        $gender              = $_POST['gender'];
                        $type                = $_POST['type'];
                        $size                = $_POST['size'];
                        $price               = $_POST['price'];
                        $wire_type           = $_POST['wire_type'];
                        $water_resistance    = $_POST['water_resistance'];
                        $warranty            = $_POST['warranty'];
                        if($name != '' && $product_category_id != '' && $origin != '' && $code != '' && $status != '' && $gender != '' && $type != '' && $size  != '' && $price != '' && $wire_type != '' && $water_resistance != '' && $warranty != '') {
                        	if($_FILES['image']['error'] == 0) {
                        		$image = $_FILES['image']['name'];
                        		$checkAdd = $backModel->addProduct($name,$product_category_id,$origin,$code,$status,$gender,$type,$size,$price,$wire_type,$water_resistance,$image,$warranty);
                        		if($checkAdd === TRUE) {
                                   $pathUpload = 'webroot/uploads/products/';
                                   move_uploaded_file($_FILES['image']['tmp_name'], $pathUpload.$image);
                                   $libs->redirectPage('admin.php?controller=products&action=list_product');
                        		}
                        	}

                        }

                    }
					include 'view/products/add.php';
					break;
				case 'list':
					$listProduct = $backModel->getProductList();
					include 'view/products/list.php';
					# code...
					break;
				case 'edit':
					$id = $_GET['id'];
					$productById = $backModel ->getProductById($id);
					$oldProduct = $productById->fetch_assoc();
					if(isset($_POST['edit'])) {
                        $name                = $_POST['name'];
                        $product_category_id = $_POST['product_category_id'];
                        $origin              = $_POST['origin'];
                        $code                = $_POST['code'];
                        $status              = $_POST['status'];
                        $gender              = $_POST['gender'];
                        $type                = $_POST['type'];
                        $size                = $_POST['size'];
                        $price               = $_POST['price'];
                        $wire_type           = $_POST['wire_type'];
                        $water_resistance    = $_POST['water_resistance'];
                        $warranty            = $_POST['warranty'];
                        $image               = $oldProduct['image'];
                        if($name != '' && $product_category_id != '' && $origin != '' && $code != '' && $status != '' && $gender != '' && $type != '' && $size  != '' && $price != '' && $wire_type != '' && $water_resistance != '' && $warranty != '') {
                        	if($_FILES['image']['error'] == 0) {
                        		$image = $_FILES['image']['name'];
                        		$checkEdit = $backModel->editProduct($id,$name,$product_category_id,$origin,$code,$status,$gender,$type,$size,$price,$wire_type,$water_resistance,$image,$warranty);
                        		if($checkEdit === TRUE) {
                                   $pathUpload = 'webroot/uploads/products/';
                                   move_uploaded_file($_FILES['image']['tmp_name'], $pathUpload.$image);
                                   $libs->redirectPage('admin.php?controller=products&action=list');
                        		}
                        	}

                        }
					}
                    include 'view/products/edit.php';
					break;
				case 'delete':
					$id = $_GET['id'];
					$backModel->deleteProductById($id);
					$libs->redirectPage('admin.php?controller=products&action=list');
					break;
				default:
					# code...
					break;
			}
		}

		function handleComments($action, $backModel, $libs) {
			switch ($action) {
					case 'list_comment':
						$listComment = $backModel->getListComment();
						include 'view/comments/list_comment.php';
						break;
					case 'approve':
						$id = $_GET['id'];
						if ($backModel->approveComment($id) === TRUE) {
							$libs->redirectPage('admin.php?controller=comments&action=list_comment');
						}
						# code...
						break;
					default:
						# code...
						break;
				}	
		}
  }
?>
