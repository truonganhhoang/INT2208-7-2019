<?php
	function loginform() {
		echo "<form action='/forum/validatelogin.php' method='POST'>
			  <p>Username:</p>
			  <input type='text' id='usernameinput' name='usernameinput' />
				<p>Password:</p>
				<input type='password' id='passwordinput' name='passwordinput' />
				<input type='submit' value='Login' />
				<button type='button' onclick='location.href=\"/forum/register.html\";'>Register</button>
			</form>";
	}
	function login(){
		echo '<form action="/forum/validateloginn.php" method="POST">
            <div class="form-group"> 
              <input type="text" class="form-control" placeholder="Enter email" name="usernameinput" id="usernameinput"required="on"> </div>
            <div class="form-group mb-3"> <input type="password" class="form-control" name="passwordinput" placeholder="Password" id="passwordinput" required="on"> <small class="form-text text-muted text-right">
                <a href="#" class="text-left mr-auto"> Recover password</a>
              </small> </div> <button type="submit" class="btn btn-primary" name="ok">Submit</button>
          </form>';
	}
	function logout() {
		echo nl2br("<p>Welcome ".$_SESSION['username']."!\nLooking good today!</p>
				<form action='/forum/logout.php' method='GET'>
				<input type='submit' class='btn btn-primary' value='Logout' /></form>");
	}
?>