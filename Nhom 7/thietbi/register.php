<?php
    include "../config.php";
    include "function.php";
    $result='';
    if (isset($_POST['register'])){
        $UserName=filter_input(INPUT_POST,'UserName');
        $Password=filter_input(INPUT_POST,'Password');
        $Name=filter_input(INPUT_POST,'Name');
        $Email=filter_input(INPUT_POST,'Email');
        $Phone=filter_input(INPUT_POST,'Phone');
        if (isset($UserName)&&isset($Password)&& isset($Name)&& isset($Email)&& isset($Phone)){
            register($UserName,$Password,$Name,$Email,$Phone);
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
      <input type="text" class="form-control" id="UserName" placeholder="Enter UserName" name="UserName">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="Password" placeholder="Enter password" name="Password">
    </div>

    <div class="form-group">
      <label for="fullname">Full Name:</label>
      <input type="text" class="form-control" id="Name" placeholder="Enter Fullname" name="Name">
    </div>

    <div class="form-group">
      <label for="fullname">Email:</label>
      <input type="text" class="form-control" id="Email" placeholder="Enter Fullname" name="Email">
    </div>

    <div class="form-group">
      <label for="fullname"> Phone:</label>
      <input type="text" class="form-control" id="Phone" placeholder="Enter Fullname" name="Phone">
    </div>
    <button type="submit" class="btn btn-default" name="register">Đăng ký</button>
    <button type="submit" class="btn btn-default" name="cancel">Hủy</button>
    <?php 
        echo "<br>".$result;
        header("location:index.php");
    ?> 

  </form>
</div>
</body>
</html>
