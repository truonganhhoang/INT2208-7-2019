<?php
	session_start();

	include_once __DIR__. "/../../function/sql.php";

	if(isset($_POST['submit']))
	{
		$err = [];

		$id         = $_POST['txtusername'];
      	$pass       = $_POST['txtpassword'];
        $re_pass    = $_POST['txtpsw_repeat'];
        $email      = $_POST['txtemail'];
        $name       = $_POST['txtname'];
        $address    = $_POST['txtaddress'];

		if($pass != $re_pass) $err['pass'] = "Mật khẩu không trùng khớp!";
		if(strlen($pass) < 8) $err['lenpass'] = "Độ dài mật khẩu phải lớn hơn 8!";

		$sql = "SELECT * FROM user WHERE id = '$id'";
		$result = mysqli_query($con, $sql);
		if(mysqli_num_rows($result) > 0) $err['id'] = "Tên người dùng đã có người sử dụng!";


		$sql = "SELECT * FROM user WHERE Email = '$email'";
		$result = mysqli_query($con, $sql);
		if(mysqli_num_rows($result) > 3) $err['numemail'] = "Một Email chỉ có thể đăng ký tối đa 3 tài khoản, Vui lòng sử dụng Email khác!";

		if (empty($err))
		{
			$pas = md5($pass);
			$sql = "INSERT INTO user (id,password,Name,Email,address)
			VALUES (
				'$id', 
				'$pas', 
				'$name', 
				'$email', 
				'$address' )";
			$result = 	mysqli_query($con, $sql);

			if($result == TRUE)
			{
				$_SESSION['us'] =  $name;
				$_SESSION['us_id'] =  $id;
				echo '<script>alert("Đăng ký tài khoản thành công.\nChào mừng bạn đến với thế giới Laptop của chúng tôi!");</script>';
		        header('Location: /ShopWeb');
			}
		}
	}