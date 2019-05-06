<?php
	session_start();
	
	include ('dbconn.php');
	
	$username = $_POST['usernameinput'];
	$password = $_POST['passwordinput'];
	
	$result = mysqli_query($con, "SELECT username, password,user_id FROM users WHERE username = '".$username."' AND password = '".$password."'");
	if($username==''){
		header("Location: ".$_SERVER['HTTP_REFERER']."?status=login_fail");
	}
	else if (mysqli_num_rows($result) != 0) {
		$k=0;
			while ($row = mysqli_fetch_assoc($result)) {
			if($row['user_id']==1){
				$_SESSION['username'] = $username;
				$_SESSION['id'] = 1;
				$k=1;
				header("Location: "."/forum/homeadmin.php");
			}
		}
		if($k==0){
		$_SESSION['username'] = $username;
		$_SESSION['id'] = 0;
		header("Location: "."/forum/home.php");}
	} else {
			if(substr($_SERVER['HTTP_REFERER'], -10)=="login_fail")
				header("Location: ".$_SERVER['HTTP_REFERER']);
			else
			header("Location: ".$_SERVER['HTTP_REFERER']."?status=login_fail");
		
	}
?>