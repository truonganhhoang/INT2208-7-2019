<?php 
	session_start();

	unset($_SESSION['us']);
	header('Location: /ShopWeb');
?>