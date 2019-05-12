<?php
	if(!isset($_SESSION))
		session_start();
		echo "Chào bạn đến với trang quản trị của Admin:<b>";
	echo $_SESSION['hotenadmin'];	
	echo "</b>";
?>
<img src="img/logo.jpg">