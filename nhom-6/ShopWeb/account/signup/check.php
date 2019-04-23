<?php
	session_start();

	include_once __DIR__. "/../../function/database.php";

	/**
	 * 
	 */
	class CheckSignup
	{	
		protected $obj;
		
		function __construct()
		{
			$this->obj = new Database();
		}

		public function checkID($id)
		{
			$query = $this->obj->fetchID('user', $id);
			return ($id != $query['id']);
		}

		public function checkRe_pass($pass, $re_pass)
		{
			return ($pass == $re_pass);
		}

		public function checkEmail($email)
		{
			return (preg_match ("/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+\.[A-Za-z]{2,6}$/", $email));
		}

		public function insertUser(array $data)
		{
			$this->obj->insert('user', $data);
		}
	}