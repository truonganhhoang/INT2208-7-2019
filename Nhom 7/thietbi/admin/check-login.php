<?php
	if(!isset($_SESSION))
		session_start();
	if(!isset($_SESSION["success"]))
		header("location:login.php");	
	
?>