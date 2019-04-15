<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>UDict</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script>
  <link rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="styles/theme.css" type="text/css">
  <script type="text/javascript"><!-- Begin
function checkPw(form) {
pw1 = form.passwordinput.value;
pw2 = form.password.value;

if (pw1 != pw2) {
alert ("\nYou did not enter the same new password twice. Please re-enter your password.")
return false;
}
else return true;
}
</script>




</head>

<body class="w-100">
  <script async="" defer="" crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&amp;version=v3.2&amp;appId=296191771278805&amp;autoLogAppEvents=1" style=""></script>
  <nav class="navbar bg-primary navbar-dark">
    <div class="container"> <a class="navbar-brand" href=\homemoi.php>
        <i class="fa d-inline fa-lg fa-circle"></i>
        <b> UDict</b>
      </a>
      <a class="navbar-brand" href=\forum/home.php>
        <b> Forum</b>
      </a>
      <div class="row">
        <div class="col-md-12"><a class="navbar-brand" href="login.php"><i class="fa fa-user  fa-sign-out"></i><i class="fa d-inline fa-lg fa-lg-out"></i>&nbsp;Login</a></div>
      </div>
    </div>
  </nav>
  <div class="py-5 text-center bg-dark text-white"  style="background-image: url('http://eskipaper.com/images/nebula-wallpaper-hd-21.jpg');background-size:cover;">
    <div class="container">
      <div class="row">
        <div class="p-5 col-lg-6 col-10 mx-auto border">
          <h1 class="mb-4">UDict Forum</h1>
          <form onSubmit="return checkPw(this)" action="newuser.php"  method="POST">
            <div class="form-group"> <input type="text" id="usernameinput" name="usernameinput"  class="form-control" placeholder="Name" required="on" autocomplete="off" maxlength="15" value=""> </div>
            <div class="form-group"> <input type="password" class="form-control" placeholder="Password" id="password" required="on" autocomplete="off" value="" maxlength="64"> </div>
            <div class="form-group"> <input type="password" class="form-control" placeholder="Password" id="passwordinput" name="passwordinput" required="on"> <small class="form-text text-muted text-right">
                <a href="#">You have an account?</a>
              </small> </div> <button type="submit" class="btn btn-primary">Register</button>
            
          </form>  
          <?php 
                      if (isset($_GET['status'])) {
                  if ($_GET['status'] == 'regester_fail') {
                    echo "<script type='text/javascript'>alert('this username is not available. please try another')</script>";
                  } 
                }
              ?>
        </div>
      </div>
    </div>
  </div>
  <div class="contaner">
    <!--
  </div-->
    <div class="py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center d-md-flex align-items-center"> <i class="d-block fa fa-stop-circle fa-2x mr-md-5 text-primary"></i>
            <ul class="nav mx-md-auto d-flex justify-content-center">
              <li class="nav-item"> <a class="nav-link active" href="#">Home</a> </li>
              <li class="nav-item"> <a class="nav-link" href="#">Gammar</a> </li>
              <li class="nav-item"> <a class="nav-link" href="#">HangMan</a> </li>
              <li class="nav-item"> <a class="nav-link" href="#">About</a> </li>
            </ul>
            <div class="row">
              <div class="col-md-12 d-flex align-items-center justify-content-md-between justify-content-center my-2"> <a href="#">
                  <i class="d-block fa fa-facebook-official text-muted fa-lg mx-2"></i>
                </a> <a href="#">
                  <i class="d-block fa fa-instagram text-muted fa-lg mx-2"></i>
                </a> <a href="#">
                  <i class="d-block fa fa-twitter text-muted fa-lg ml-2"></i>
                </a> </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
            <p class="mt-2 mb-0">© 3-2019 UDict. All rights reserved</p>
          </div>
        </div>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </div>
  <pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:220px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo Free&nbsp;&nbsp;<img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16"></pingendo>
</body>

</html>