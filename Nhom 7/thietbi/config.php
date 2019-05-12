<?php

$dsn='mysql:host=localhost;dbname=quanlythietbi';
$username='root';
$password='';
$options=array(
	PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
	PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION
);
try
{	
	$db=new PDO($dsn,$username,$password,$options);
}
catch(PDOException $e)
{
	echo $e->getMessage();
	
	exit();
	}
?>