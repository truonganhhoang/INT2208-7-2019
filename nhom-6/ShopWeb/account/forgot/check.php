<?php
	session_start();

	include_once __DIR__. "/../../function/sql.php";

	if(isset($_POST['submit']))
	{
		$id = $_POST['txtusername'];
		$e = $_POST['txtemail'];
		$err = [];
		
		$sql = "SELECT * FROM user WHERE id = '$id'";
		$result = mysqli_query($con, $sql);
		if (mysqli_num_rows($result) > 0 )
		{
			$row = mysqli_fetch_assoc($result);
			if($row['Email'] == $e)
			{
				// Gửi email. lấy 8 ký tự đầu của pass gửi cho người dùng
				$pass = substr($row['password'] , 0 , 8);
				$to      = $e;
				$subject = "Khôi phục mật khẩu!";
				$message = "Mật khẩu đăng nhập N6Shop của bạn là: "  . $pass
						. ". Hãy bảo mật thông tin này! Đây là email tự động, vui lòng không trả lời. Xin cám ơn!"."Đội ngũ quản lý Homeshoppe!";
				$header  =  "From:suport.n6homeshoppe@gmail.com";
				$success = mail ($to,$subject,$message,$header);

				if($success == true)
				{
					?>
					<script>
						var r = confirm('Mật khẩu đã được gửi đến email cá nhân của bạn, vui lòng kiểm tra lại hộp thư!<br> Đến đổi mật khẩu?');
						if (r == true) {
							  window.location="<?php echo $domain; ?>/account/repassword/";
						} else {
							  window.location="<?php echo $domain; ?>";
						} 
					</script>
					<?php
				}

				//update lại password
				$pas = md5($pass);			// mã hóa lại pass
				$sql = "UPDATE user SET password='$pass' WHERE id='$id' AND Email='$e'";
				$result = mysqli_query($con, $sql);		

			}else{
				$err['email'] = "Thông tin địa chỉ email không chính xác!";
			}
		}else{
			$err['id'] = "Không tồn tại tài khoản này, vui lòng kiểm tra lại!";
		}
	}