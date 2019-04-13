<?php
	include ('dbconn.php');
	
	$newuser = $_POST['usernameinput'];
	$newpwd = $_POST['passwordinput'];
	// $check=mysqli_query($con,"SELECT * FROM users WHERE username = '".$username."'");
	// if(mysqli_num_rows($check) ==1){
	// 	header("Location: ".$_SERVER['HTTP_REFERER']."?status=regester_fail");
	// }
	// else{
	$insert = mysqli_query($con, "INSERT INTO users (`username`, `password`,'point') VALUES ('".$newuser."', '".$newpwd."','0');");
	
	if ($insert) {
		header("Location: /forum/home.php?status=reg_success");
	}
	else{
		header("Location: /forum/regest.php?status=regester_fail");
	}
//}
?>