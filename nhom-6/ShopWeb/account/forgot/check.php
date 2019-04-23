<?php
	session_start();

	include_once __DIR__. "/../../function/database.php";

	/**
	 * 
	 */
	class ForgotPass
	{
		protected $obj;
		
		function __construct()
		{
			$this->obj = new Database();
		}

		public function check($id, $email)
		{
			$query = $this->obj->fetchID('user', $id);
			return ($id == $query['id'] AND $email == $query['Email']);
		}

		public function getPass($id)
	    {
	        $query = $this->obj->fetchID('user', $id);
			$pass = substr($query['password'] , 0, 8);

        	return $pass;
	    }

		public function send_email($id ,$email)
	    {
	        $pass = $this->getPass($id);
	        $to      = $email;
	        $subject = "Khôi phục mật khẩu!";
	        $message = "Mật khẩu đăng nhập N6Shop của bạn là: "  . $pass
	                . ". Hãy bảo mật thông tin này! Đây là email tự động, vui lòng không trả lời. Xin cám ơn!"."Đội ngũ quản lý Homeshoppe!";
	        $header  =  "From:suport.n6homeshoppe@gmail.com";

	        $success = mail ($to,$subject,$message,$header);

	        return ($success);
	    }

	    public function updatePass($id, $email)
	    {
	    	$pas = md5($this->getPass($id));
	        $conditions = array('id' => $id, 'Email' => $email );
	        $data = array('password' => $pas );
	    	$this->obj->update('user', $data, $conditions);
	    }
	}