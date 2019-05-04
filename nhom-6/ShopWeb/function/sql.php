<?php
//$con=mysql_connect('localhost','root','');
	$domain = "/ShopWeb";
	$con=mysqli_connect('localhost','root','pass') or die('canot connect to sever');
	mysqli_select_db($con,'demo') or die('canot select database');

	$items = 0;
	$pice = 0;
?>