<?php
	session_start();
	
	include ('dbconn.php');
	
	$cid = $_GET['cid'];
	$scid = $_GET['scid'];
	$tid = $_GET['tid'];
	
		$select = mysqli_query($con, "DELETE FROM 

							topics WHERE (".$cid." = category_id) AND
									  (".$scid." = subcategory_id) AND (".$tid." = topic_id);");
		header("Location: /forum/topicss/".$cid."/".$scid."");
	
	
?>
