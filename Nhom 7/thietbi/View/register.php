<?php
	include('..\Model\database.php');
  include('..\Model\process_db.php');
	$result='';
	if (isset($_POST['register'])){
		$user=filter_input(INPUT_POST,'user');
		$pass=filter_input(INPUT_POST,'pwd');
		$fullname=filter_input(INPUT_POST,'fullname');
		if (isset($user)&&isset($pass)&& isset($fullname)){
			add_user($user,$pass,$fullname);
			$result="Chúc mừng, Bạn đã đăng ký thành công!";
		}		
	}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
	
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="..\view\css\bootstrap.min.css">
	  <script src="..\view\js\jquery.min.js"></script>
	  <script src="..\view\js\bootstrap.min.js"></script>

	  <link rel="stylesheet" type="text/css" href="..\view\css\style.css">
</head>
<body>

<div class="container">
  <h2>ĐĂNG KÝ NGƯỜI DÙNG</h2>
  <form action="register.php" method="post">
    <div class="form-group">
      <label for="user">User:</label>
      <input type="text" class="form-control" id="user" placeholder="Enter user" name="user">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>

    <div class="form-group">
      <label for="fullname">Full Name:</label>
      <input type="text" class="form-control" id="fullname" placeholder="Enter Fullname" name="fullname">
    </div>
    <button type="submit" class="btn btn-default" name="register">Đăng ký</button>
    <button type="submit" class="btn btn-default" name="cancel">Hủy</button>
    <?php 
    	echo "<br>".$result;
    ?> 
  </form>
</div>
</body>
</html>
