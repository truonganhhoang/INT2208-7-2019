<?php
    include_once __DIR__. "/../../function/sql.php";
?>

<!DOCTYPE html>
<html>
<head>
	<title>Đăng ký</title>
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

            <?php $id = $email = $name = $address =""; ?>

            <h1 style="text-align: center;">Đăng ký thành viên</h1>
            <table class="tb">
                <tr>
                    <td class="td1">
                        <label for="usr"><b>Tên đăng nhập</b></label>
                    </td>

                    <td class="td2">
                        <label for="name"><b>Họ và tên</b></label>
                    </td>
                </tr>

                <tr>
                    <td class="td1">
                        <input type="text" placeholder="Tên đăng nhập" name="txtusername" value="<?php echo $id; ?>" required>
                    </td>

                    <td class="td2">
                        <input type="text" placeholder="Họ và tên" name="txtname" value="<?php echo $name; ?>" required>
                    </td>
                </tr>

                <tr>
                    <td class="td1">
                        <label for="psw"><b>Mật khẩu</b></label>
                    </td>

                    <td class="td2">
                        <label for="email"><b>Email</b></label>
                    </td>
                </tr>

                <tr>
                    <td class="td1">
                        <input type="password" placeholder="Nhập mật khẩu" name="txtpassword" required>
                    </td>

                    <td class="td2">
                        <input type="text" placeholder="Email" name="txtemail" value="<?php echo $email; ?>" required>
                    </td>
                </tr>

                <tr>
                    <td class="td1">
                        <label for="psw-repeat"><b>Nhập lại mật khẩu</b></label>
                    </td>

                    <td class="td2">
                        <label for="address"><b>Địa chỉ</b></label>
                    </td>
                </tr>

                <tr>
                    <td class="td1">
                        <input type="password" placeholder="Nhập lại mật khẩu của bạn" name="txtpsw_repeat" required>
                    </td>

                    <td class="td2">
                        <input type="text" placeholder="Địa chỉ hiện tại" name="txtaddress" value="<?php echo $address; ?>" required>
                    </td>
                </tr>
            </table>

            <p>*Bằng cách click Đăng ký, bạn đã đồng ý với 
                <a href="#" style="color:dodgerblue">Điều khoản sử dụng</a> của chúng tôi.<br> Hoặc nếu bạn đã có tài khoản, quay lại <a href="/ShopWeb/account/signin/">Đăng nhập</a></p>
        </div>
    <div style="color: red; margin-left: 5%;">
            <?php
                include ("check.php");

                if(isset($err['id'])) echo $err['id']."<br>";
                if(isset($err['pass'])) echo $err['pass']."<br>";
                if(isset($err['lenpass'])) echo $err['lenpass']."<br>";
                if(isset($err['lenemail'])) echo $err['lenemail'];
            ?>
    </div>

    <div class="clearfix">
      <a href="/ShopWeb">
        <button type="button" class="cancelbtn">Đóng</button>
        </a>
      <button type="submit" class="signupbtn" name="submit" >Đăng ký</button>
    </div>
  </div>
</form>

<div style="text-align: right;" >
    <div style="padding-right:  15%;">
        Quên mật khẩu? Khôi phục lại <a href="<?php echo $domain; ?>/account/forgot/">tại đây!</a>
    </div>
</div>

</body>
</html>