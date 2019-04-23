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
		<a href="/ShopWeb">
    		<img title="Trang chủ" src="/ShopWeb/public/home/images/logo.png" alt="Avatar" class="avatar">
   		</a>
	</div>
	<hr>

	<div class="container">
        <div class="tbl">
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
                        <input type="text" placeholder="Tên đăng nhập" name="txtusername" required>
                    </td>

                    <td class="td2">
                        <input type="text" placeholder="Họ và tên" name="txtname" required>
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
                        <input type="text" placeholder="Email" name="txtemail" required>
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
                        <input type="text" placeholder="Địa chỉ hiện tại" name="txtaddress" required>
                    </td>
                </tr>
            </table>

            <p>*Bằng cách click Đăng ký, bạn đã đồng ý với 
                <a href="#" style="color:dodgerblue">Điều khoản sử dụng</a> của chúng tôi.<br> Hoặc nếu bạn đã có tài khoản, quay lại <a href="/ShopWeb/account/signin/">Đăng nhập</a></p>
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
        Quên mật khẩu? Khôi phục lại <a href="/ShopWeb/account/forgot/">tại đây!</a>
    </div>
</div>

</body>
</html>

<?php
    if(isset($_POST['submit']))
    {
        include ("check.php");
        $obj = new CheckSignup();
        $id   = $_POST['txtusername'];
        $pass  = $_POST['txtpassword'];
        $re_pass     = $_POST['txtpsw_repeat'];
        $email      = $_POST['txtemail'];
        $name       = $_POST['txtname'];
        $address    = $_POST['txtaddress'];

        $arr = array('id' => $id, 'password' => md5($pass), 'Name' => $name, 'Email' => $email, 'address' => $address);

        if($obj->checkID($id))
        {
            if($obj->checkRe_pass($pass, $re_pass))
            {
                if($obj->checkEmail($email))
                {
                    $obj->insertUser($arr);
                    header('Location: /ShopWeb');
                    $_SESSION['us'] = $name;
                } else{
                    echo "<script>alert('Email không hợp lệ, vui lòng kiểm tra lại!');</script>";
                }
            }
            else{
                echo "<script>alert('Mật khẩu không trùng khớp, vui lòng nhập lại!');</script>";
            }
        }
        else{
            echo "<script>alert('Tài khoản này đã có người xử dụng, vui lòng chọn tài khoản khác!');</script>";
        }

    }
?>
