<?php
	session_start();
	
	include ('dbconn.php');
	
	$id = $_POST['id'];
	
		$select = mysqli_query($con, "DELETE FROM 

							replies WHERE (".$id." = reply_id);");
		header("Location: /forum/commentcontroll.php");
	
	
?>
