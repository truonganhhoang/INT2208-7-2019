<?php
      include('..\Model\database.php');
      include('..\Model\process_db.php');
      $result="";
      if (isset($_POST['login'])){
        $user=filter_input(INPUT_POST,'user');
        $pass=filter_input(INPUT_POST,'pass');
        if (count(login_user($user,$pass))>0){

          $result = "Chúc mừng Bạn $user đã đăng nhập thành công!";
        }
        else{
          $result = "Bạn đã đăng nhập thất bại, kiểm tra lại user và pass";
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
  <h2>ĐĂNG NHẬP</h2>
  <form action="login.php" method="post">
    <div class="form-group">
      <label for="user">User:</label>
      <input type="text" class="form-control" id="user" placeholder="Enter user" name="user">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pass">
    </div>

     <button type="submit" class="btn btn-default" name="login">LOGIN</button>   
     <?php
        echo "<br>".$result;
     ?>  
  </form>
</div>
</body>
</html>
