<?php
session_start();
include('connect.php');

$statusMsg = '';
// File upload path
$targetDir = "avatar/";
$fileName = basename($_FILES["upAvatar"]["name"]);
$targetFilePath = $targetDir . $fileName;
$fileType = pathinfo($targetFilePath,PATHINFO_EXTENSION);
$username = $_SESSION['username'];

if(isset($_POST['btnUpdate']) && !empty($_FILES["upAvatar"]["name"])){
	$userNew = $_POST['upName'];

	$sql = "SELECT * FROM thongtinnguoidung WHERE username = '$userNew'";
	$query = mysqli_query($con,$sql);
	$num = mysqli_num_rows($query);
	$allowTypes = array('jpg','png','jpeg','gif');

	if($num == 0){
		if(in_array($fileType, $allowTypes)){
                // Upload file to server
			if(move_uploaded_file($_FILES["upAvatar"]["tmp_name"], $targetFilePath)){
                    // Insert image file name into database
				$query = "UPDATE thongtinnguoidung SET username = '$userNew', avatar = '$fileName', date_created = NOW() WHERE username = '$username'";
				$insert = mysqli_query($con, $query);
				if($insert){
					$_SESSION['username'] = $userNew;
					$_SESSION['avatar'] = $fileName;

					echo '<script language="javascript">alert("Thay đổi thông tin thành công!1"); window.location="taikhoancuatoi.php";</script>';					
				}else{
					echo '<script language="javascript">alert("Chưa thay đổi được thông tin!2"); window.location="taikhoancuatoi.php";</script>';
				} 
			}else{
				echo '<script language="javascript">alert("Chưa thay đổi được thông tin!3"); window.location="taikhoancuatoi.php";</script>';
			}
		}
		else{
			echo '<script language="javascript">alert("Chưa thay đổi được thông tin"); window.location="taikhoancuatoi.php";</script>';
		}
	}
	else{
		echo '<script language="javascript">alert("Đã tồn tại tên tài khoản này!"); window.location="taikhoancuatoi.php";</script>';
	}

}

?>