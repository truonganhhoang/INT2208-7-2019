<?php
//$con=mysql_connect('localhost','root','');
$con=mysqli_connect('localhost','root','pass') or die('canot connect to sever');
mysqli_select_db($con,'dbname') or die('canot select database');
?>