<?php 
	session_start();

	unset($_SESSION['us']);
	unset($_SESSION['us_id']);
	header('Location: /ShopWeb');
?>