<!DOCTYPE html>
<html>
<head>
	<title>Khôi phục mật khẩu</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
<?php include_once __DIR__. "/../../function/sql.php";?>

<form style="border:1px solid #ccc" method="POST">
	<div class="logosignup">
		<a href="<?php echo $domain; ?>">
    		<img title="Trang chủ" src="<?php echo $domain; ?>/public/home/images/logo.png" alt="Avatar" class="avatar">
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

    <div>
      <?php 
        include("check.php");
        if (isset($err['id'])) echo $err['id']."/n";
        if (isset($err['email'])) echo $err['email'];
      ?>
    </div>

    <div class="clearfix">
      		
      		<a href="<?php echo $domain; ?>">
      			<button type="button" class="cancelbtn">Đóng</button>
      		</a>
      		<button type="submit" class="signupbtn" name="submit" >Xác nhận</button>
      	</div>
    </div>
  </div>
</form>

<div style="text-align: right;" >
    <div style="padding-right:  15%;">
        Chưa có tài khoản, Đăng ký <a href="<?php echo $domain; ?>/account/signup/">tại đây!</a>
    </div>
</div>

</body>
</html>