<?php
session_start(); 
session_destroy();
 
if (isset($_SESSION['username'])){
    unset($_SESSION['username']);
    header('location:index.php');
}
else{
	header('location:index.php');
}
?>