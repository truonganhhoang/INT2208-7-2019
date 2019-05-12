<?php
    include "../config.php";
    include "function.php";
	$result='';
	if (isset($_POST['register'])){
		$UserName=filter_input(INPUT_POST,'UserName');
		$Password=filter_input(INPUT_POST,'Password');
		$Name=filter_input(INPUT_POST,'Name');
		$Email=filter_input(INPUT_POST,'Email');
        $Phone=filter_input(INPUT_POST,'Phone');
        if (isset($UserName)&&isset($Password)&& isset($Name)&& isset($Email)&& isset($Phone)){
            register($UserName,$Password,$Name,$Email,$Phone);
		}		
	}

?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Register</title>
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
<body>

<div class="container">
  <form action="" method="post">

        <table border="0" align="center" style="margin-top:%;width:520; background-color: rgba(0, 0, 0, 0.7);">     
        <tr>
            <td height ="50" colspan="7" align="center" class="center" style="font-size:20px;border:5px;text-shadow: 2px 2px 2px #000000; color:#FFF;">
                 &nbsp;&nbsp;ĐĂNG KÝ </td>
        </tr>
        <tr style="height:33">
            <td align="right" width="150" style="font-size:20px;border:5px;text-shadow: 2px 2px 2px #000000; color:#FFF;">
            Tên đăng nhập &nbsp;
            </td>
            <td colspan = 3>
                <input type="text" name="UserName" size="30">
            </td>
        </tr>
        <tr style="height:33">
            <td align="right" width="150" style="font-size:20px;border:5px;text-shadow: 2px 2px 2px #000000; color:#FFF;">
                Mật khẩu &nbsp;
            </td>
            <td colspan = 3>
                <input type="password" name="Password" size="30">
            </td>
        </tr>
        <tr style="height:33">
            <td align="right" width="150" style="font-size:20px;border:5px;text-shadow: 2px 2px 2px #000000; color:#FFF;">
            Tên đầy đủ &nbsp;
            </td>
            <td colspan = 3>
                <input type="text" name="Name" size="30">
            </td>
        </tr>

        <tr style="height:33">
            <td align="right" width="150" style="font-size:20px;border:5px;text-shadow: 2px 2px 2px #000000; color:#FFF;">
            Email &nbsp;
            </td>
            <td colspan = 3>
                <input type="text" name="Email" size="30">
            </td>
        </tr>

        <tr style="height:33">
            <td align="right" width="150" style="font-size:20px;border:5px;text-shadow: 2px 2px 2px #000000; color:#FFF;">
            Số điện thoại &nbsp;
            </td>
            <td colspan = 3>
                <input type="text" name="Phone" size="30">
            </td>
        </tr>
        <tr style="height:33">
            <td>&nbsp;
              
            </td>
            <th> 
               <button type="submit" class="btn btn-primary" name="register">Đăng ký</button>
               <button type="submit" class="btn btn-primary" name="cancel">Reset</button>
               <input type="button" class="" value="Quay lại" onclick="history.back(-1)" />
            </th>
        </tr>    

    </form>
</div>
</body>
</html>
