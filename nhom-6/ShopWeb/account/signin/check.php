<?php
	

	include_once __DIR__. "/../../function/sql.php";
	
	if(isset($_POST['submit'])){

		$err = [];

		$id   = $_POST['txtusername'];
    	$pass   = $_POST['txtpassword'];

		if(!isset($id))
		{
			$err['id'] = 'Không để trống tên đăng nhập!';
		} else{
			if (!isset($pass)) {
				$err['pass'] = 'Mật khẩu không thể trống!';
			}
		}

		if (empty($err))
		{
			$pas = md5($pass);
			$sql = "SELECT * FROM user WHERE id = '$id' AND password = '$pas'";
			$result = mysqli_query($con, $sql);
			$row = mysqli_fetch_assoc($result);
			

			if ($pas == $row['password'])
			{
				if (isset($_POST['remember'])) {
		            setcookie('id', $id, time() + 3600, '/', '', 0, 0);
		            setcookie('pass', $pass, time() + 3600, '/', '', 0, 0);
		        }
		        else
		        {
		            setcookie('id', $id, time() - 3600, '/', '', 0, 0);
		            setcookie('pass', $pass, time() - 3600, '/', '', 0, 0);
		        }

		        $_SESSION['us'] =  $row['Name'];
		        $_SESSION['us_id'] =  $row['id'];

		        header('Location: /ShopWeb');
			}else{
				$err['account'] = 'Thông tin tài khoản hoặc mật khẩu không chính xác. Vui lòng nhập lại!';
			}
		}
	}
?>