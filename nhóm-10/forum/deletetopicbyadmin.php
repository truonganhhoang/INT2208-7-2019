<?php
	session_start();
	
	include ('dbconn.php');
	
	$tid = $_POST['id'];
	
		$select = mysqli_query($con, "DELETE FROM 

							topics WHERE (".$tid." = topic_id);");
		header("Location: /forum/topiccontroll.php");
	
	
?>
