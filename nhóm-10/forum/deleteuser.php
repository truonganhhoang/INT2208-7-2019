<?php

	include ('dbconn.php');
	$name=$_POST['user'];
	$select = mysqli_query($con, "DELETE FROM users WHERE username='".$name."'");
	header("Location: /forum/usercontroll.php");

?>