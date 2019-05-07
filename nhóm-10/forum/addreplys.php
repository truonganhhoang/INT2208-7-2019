<?php
	session_start();
	
	include ('dbconn.php');
	
	$comment = nl2br(addslashes($_POST['comment']));
	$cid = $_GET['cid'];
	$scid = $_GET['scid'];
	$tid = $_GET['tid'];
	
	$insert = mysqli_query($con, "INSERT INTO replies (`category_id`, `subcategory_id`, `topic_id`, `author`, `comment`, `date_posted`)
								  VALUES ('".$cid."', '".$scid."', '".$tid."', '".$_SESSION['username']."', '".$comment."', NOW());");
								  
	if ($insert) {
		$update = mysqli_query($con, "UPDATE users SET point = point + 1 WHERE username='".$_SESSION['username']."'");
		header("Location: /forum/readtopics/".$cid."/".$scid."/".$tid."");
	}
?>
