<!DOCTYPE html>
<html>
<head>
	<title>Khôi phục mật khẩu</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>

<form style="border:1px solid #ccc" method="POST">
	<div class="logosignup">
		<a href="/ShopWeb">
    		<img title="Trang chủ" src="/ShopWeb/public/home/images/logo.png" alt="Avatar" class="avatar">
   		</a>
	</div>
	<hr>

	<h1 style="text-align: center;">Khôi phục mật khẩu</h1>

	<div class="container">
		<div>
		<label for="usr"><b>Tên đăng nhập</b></label>
		<input type="text" placeholder="Tên đăng nhập" name="txtusername" required>

		<label for="email"><b>Email</b></label>
		<input type="text" placeholder="Email mà bạn đã dùng để đăng ký" name="txtemail" required>

        

            <p>*Vui lòng điền đầy đủ và chính xác thông tin cá nhân của bạn. Mật khẩu sẽ được chúng tôi gửi về  
                <a href="#" style="color:dodgerblue">Email</a> mà bạn đã đăng ký!.</p>
        </div>
    	<div class="clearfix">
      		
      		<a href="/ShopWeb">
      			<button type="button" class="cancelbtn">Đóng</button>
      		</a>
      		<button type="submit" class="signupbtn" name="submit" >Xác nhận</button>
      	</div>
    </div>
  </div>
</form>

<div style="text-align: right;" >
    <div style="padding-right:  15%;">
        Chưa có tài khoản, Đăng ký <a href="/ShopWeb/account/signup/">tại đây!</a>
    </div>
</div>

</body>
</html>

<?php
  if(isset($_POST['submit']))
  {
    include("check.php");
    $obj = new ForgotPass();

    $u = $_POST['txtusername'];
    $e = $_POST['txtemail'];

    if($obj->check($u, $e))
    {
      if ($obj->send_email($u, $e)) {
        
        $obj->updatePass($u, $e);
        echo "<script>alert('Mật khẩu đã được gửi đến Email của bạn, vui lòng kiểm tra hộp thư của bạn!');</script>";
      }
    }else{
      echo "<script>alert('Tên đăng nhập hoặc mật khẩu không chính xác! Vui lòng kiểm tra lại!');</script>";
    }

  }
?>
