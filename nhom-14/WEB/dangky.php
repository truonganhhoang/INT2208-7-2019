<?php
session_start();
include('connect.php');

$statusMsg = '';
// File upload path
$targetDir = "avatar/";
$fileName = basename($_FILES["avatar"]["name"]);
$targetFilePath = $targetDir . $fileName;
$fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);

if(isset($_POST['submit']) && !empty($_FILES["avatar"]["name"])){
	$username = $_POST['username'];
	$password = $_POST['password'];
	$password2 = $_POST['password2'];
	if(strlen($username) < 6 or strlen($password) < 6){
	    echo '<script language="javascript">alert("Mật khẩu phải trên 5 ký tự! Bạn hãy đăng ký lại!"); window.location="index.php";</script>';
	}
	if($password2!=$password){
		echo '<script language="javascript">alert("Mật khẩu không trùng nhau! Bạn hãy đăng ký lại!"); window.location="index.php";</script>';
	}else{
		$sql = "SELECT * FROM thongtinnguoidung WHERE username = '$username'";
		$query = mysqli_query($con,$sql);
		$num = mysqli_num_rows($query);
		$allowTypes = array('jpg','png','jpeg','gif');
		if($num == 0){
			if(in_array($fileType, $allowTypes)){
                // Upload file to server
				if(move_uploaded_file($_FILES["avatar"]["tmp_name"], $targetFilePath)){
                    // Insert image file name into database
                    $query = "INSERT INTO thongtinnguoidung ( username, password, avatar, date_created) VALUES ('$username', '$password', '$fileName', NOW())";
					$insert = mysqli_query($con, $query);
					if($insert){
						echo '<script language="javascript">alert("Đăng ký thành công! Mời bạn đăng nhập!"); window.location="index.php";</script>';					
					}else{
						echo '<script language="javascript">alert("Đăng ký không thành công! Bạn hãy đăng ký lại!1"); window.location="index.php";</script>';
					} 
				}else{
					echo '<script language="javascript">alert("Đăng ký không thành công! Bạn hãy đăng ký lại!2"); window.location="index.php";</script>';
				}
			}
		    else{
		    	echo '<script language="javascript">alert("Định dạng ảnh không đúng! Bạn hãy đăng ký lại!"); window.location="index.php";</script>';
		    }
	    }
	    else{
	    	echo '<script language="javascript">alert("Tên tài khoản đã tồn tại! Bạn hãy đăng ký lại!"); window.location="index.php";</script>';
	    	
	    }
	    
    }
}
?>