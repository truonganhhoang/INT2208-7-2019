<?php
    session_start();
    include_once __DIR__. "/../../function/sql.php";
?>

<!DOCTYPE html>
<html>
<head>
	<title>Đăng nhập</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>

<form style="border:1px solid #ccc" method="POST">
	<div class="logosignup">
		<a href="<?php echo $domain; ?>">
    		<img title="Trang chủ" src="<?php echo $domain; ?>/public/home/images/logo.png" alt="Avatar" class="avatar">
   		</a>
	</div>
	<hr>

	<div class="container">
        <div class="tbl">
            <h1 style="text-align: center;">Đăng nhập tài khoản</h1>
            <div class="tb">
                <label for="usr"><b>Tên đăng nhập</b></label>
                <input type="text" placeholder="Tên đăng nhập" value="<?php if(isset($_COOKIE['id'])) { echo $_COOKIE['id']; } ?>" name="txtusername" required>
                    
                <label for="psw"><b>Mật khẩu</b></label>
                <input type="password" placeholder="Nhập mật khẩu" value="<?php if(isset($_COOKIE['pass'])) { echo $_COOKIE['pass']; } ?>" name="txtpassword" required>

                <div class="remember">
                    <input type="checkbox" name="remember" checked="checked">Nhớ mật khẩu
                </div>
            </div>

            <div>
                <?php 
                    include ("check.php");
                    if(isset($err['id'])) echo $err['id'];
                    if(isset($err['pass'])) echo $err['pass'];
                    if(isset($err['account'])) echo $err['account'];
                ?>

            </div>
        </div>

        <div class="clearfix">
            <a href="<?php echo $domain; ?>/account/signup/"><button type="button" class="cancelbtn">Đăng ký</button></a>
            <button type="submit" class="signupbtn" name="submit" >Đăng nhập</button>
        </div>

        <div style="text-align: right; margin-top: 5px;" >
            <div style="padding-right:  15%;">
                Quên mật khẩu? Khôi phục lại <a href="<?php echo $domain; ?>/account/forgot/">tại đây!</a>
            </div>
        </div>
    </div>
</form>

</body>
</html>

