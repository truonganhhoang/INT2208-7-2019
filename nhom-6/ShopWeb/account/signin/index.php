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
		<a href="/ShopWeb">
    		<img title="Trang chủ" src="/ShopWeb/public/home/images/logo.png" alt="Avatar" class="avatar">
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
        </div>

        <div class="clearfix">
            <a href="/ShopWeb/account/signup/"><button type="button" class="cancelbtn">Đăng ký</button></a>
            <button type="submit" class="signupbtn" name="submit" >Đăng nhập</button>
        </div>

        <div style="text-align: right; margin-top: 5px;" >
            <div style="padding-right:  15%;">
                Quên mật khẩu? Khôi phục lại <a href="/ShopWeb/account/forgot/">tại đây!</a>
            </div>
        </div>
    </div>
</form>

</body>
</html>

<?php
    if(isset($_POST['submit']))
    {
        include ("check.php");
        $obj = new CheckLogin();
        $id   = $_POST['txtusername'];
        $pass   = $_POST['txtpassword'];
        $password = md5($pass);

        if($obj->checkPass($id, $password))
        {
            $obj->setcookie($id, $pass);
            header('Location: /ShopWeb');
        }
        else
        {
            echo "<script>alert('Thông tin Tài khoản hoặc Mật khẩu không chính xác, vui lòng kiểm tra lại!');</script>";
        }
    }
?>
