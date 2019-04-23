<?php
	session_start();

	include_once __DIR__. "/../../function/database.php";
	

	/**
	 * 
	 */
	class CheckLogin
	{
		public $obj;

		function __construct()
		{
			$this->obj= new Database();
		}

		public function checkPass($id, $pass)
		{
			$query = $this->obj->fetchID('user', $id);
			return ($pass == $query['password']);
		}

		public function setcookie($id, $pass)
		{
			if (isset($_POST['remember'])) {
	            setcookie('id', $id, time() + 3600, '/', '', 0, 0);
	            setcookie('pass', $pass, time() + 3600, '/', '', 0, 0);
	        }
	        else
	        {
	            setcookie('id', $id, time() - 3600, '/', '', 0, 0);
	            setcookie('pass', $pass, time() - 3600, '/', '', 0, 0);
	        }

	        $query = $this->obj->fetchID('user', $id);
	        $_SESSION['us'] =  $query['Name'];
		}
	}
	
?>