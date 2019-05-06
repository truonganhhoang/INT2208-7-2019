<?php
    ob_start();
    include "../config.php";
    include "function.php";
    ?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="style.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 
<style type="text/css">
    .example{
        margin: 10px;
    }
</style>
</head>
<body style="background-image:url(./img/bgr.jpg); background-repeat:no-repeat ;background-size:cover;">

<div class="example">
<div class="container">
    <div class="khungtoanbologin"">
      <form action="" method="post">
        <table border="0"  align="center" style="margin-top:200px;width:520; background-color: rgba(0, 0, 0, 0.7);">    
        <tr>
            <td height ="50" colspan="7" align="center" class="center" style="font-size:20px;border:5px;text-shadow: 2px 2px 2px #000000; color:#FFF;">
                 &nbsp;&nbsp;ĐĂNG NHẬP HỆ THỐNG </td>
        </tr>
        <tr style="height:33">
            <td align="right" width="150" style="font-size:20px;border:5px;text-shadow: 2px 2px 2px #000000; color:#FFF;">
            Tên đăng nhập &nbsp;
            </td>
            <td colspan = 3>
                <input type="text" name="user" size="30">
            </td>
        </tr>
        <tr style="height:33">
            <td align="right" width="150" style="font-size:20px;border:5px;text-shadow: 2px 2px 2px #000000; color:#FFF;">
                Mật khẩu &nbsp;
            </td>
            <td colspan = 3>
                <input type="password" name="pass" size="30">
            </td>
        </tr>
        <tr style="height:33">
            <td>&nbsp;
            </td>
            <td width="125">
               <button class="btn btn-primary" name="btn_dangnhap">Đăng nhập</button>
               <input type="button" class="" value="Quay lại" onclick="history.back(-1)" />
            </td>
        </tr>    

    </form>

    <?php
        if(isset($_POST['btn_dangnhap'])){
        $user=$_POST['user'];
        $pass=$_POST['pass'];
        $login=login($user,$pass);
        $row=$login->fetch();
            if($user==$row['UserName']&&$pass==$row['Password'])
            {       
                    if(!isset($_SESSION))
                    session_start();
                    $_SESSION["UserId"]=$row['UserId'];
                    $_SESSION["success"]=true;
                    $_SESSION['hotenadmin']=$row['Name'];
                    header("location:index.php");
            }   
            else
            {   
                    
                    echo "<script>alert('Thông tin bạn nhập không chính xác!');</script>";
                //header("location: login.php");
                
            }
}
?>
    </div>
</div>
     
</div>

</body>
<?php
    ob_end_flush();
?>

</html>

