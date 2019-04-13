
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
   <link rel="stylesheet" href="cssmoi.css" type ="text/css">
  <link rel="stylesheet" href="theme.css" type="text/css"> 
    <link rel="shortcut icon" type="image/ico" href="imgg/avv.ico"/>
    <style type="text/css">
     
      .content p {
        font-size: 18px;
      }
      .content h2 {
        font-size: 30px;
      }
      .content h3 {
        font-size: 25px;
      }
    </style>
</head>



<body>
	
	<?php
        $muc=array(
        	1 => 'Hiện tại đơn',
        	2 => 'Hiện tại tiếp diễn',
        	3 => 'Hiện tại hoàn thành',
        	4 => 'Hiện tại hoàn thành tiếp diễn',
        	5 => 'Quá khứ đơn',
        	6 => 'Quá khứ tiếp diễn',
        	7 => 'Quá khứ hoàn thành',
        	8 => 'Quá khứ hoàn thành tiếp diễn',
        	9 => 'Tương lai đơn',
        	10 =>'Tương lai tiếp diễn',
        	11 => 'Tương lai hoàn thành',
        	12 => 'Tương lai hoàn thành tiếp diễn'
        );
    ?>



	<div id="fb-root"></div>
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2&appId=296191771278805&autoLogAppEvents=1"></script>
<nav class="navbar navbar-expand-md navbar-dark bg-primary">
    <div class="container justify-content-center"> <button class="navbar-toggler navbar-toggler-right border-0" type="button" data-toggle="collapse" data-target="#navbar15">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar15">
        <ul class="navbar-nav">
          <li class="nav-item mx-2"> <a class="nav-link" href="lythuyet1.php" style="color: white;">Grammar</a> </li>
          <li class="nav-item mx-2 "> <a class="nav-link" href="Hangman.php" >HangMan Game</a> </li>
          <li class="nav-item mx-2"> <a class="nav-link navbar-brand mr-0 " href="homemoi.php"><i class="fa d-inline fa-lg fa-stop-circle-o"></i>
              <b>UDict</b></a> </li>
          <li class="nav-item dropdown"> <a class="nav-link dropdown-toggle " href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Explore</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"> <a class="dropdown-item " href="index.php">Translate</a><a class="dropdown-item" href="#">Speech</a></div>
          </li>
          <li class="nav-item"><a class="nav-link " href="About.php">About us</a></li>
        </ul>
      </div>
    </div>
  </nav>

<div class="py-2 text-center" id="header">
        <div class="mx-auto">
          <h1 class="w-100" > UDict</h1>
          <h5 >This is my dictionary</h5>
          <form class="form-inline d-flex justify-content-center" action="homemoi.php" method="post">
            <div class="input-group input-group-sm" > 
              <input type="text" class="form-control form-control-lg" name="key" value="<?php 
            if(isset($_POST['key']))
          echo $_POST['key'];
          ?>" id="form3" placeholder="Type and search..." autocomplete="off">
              <div class="input-group-append"  id="submit"><button class="btn btn-block btn-outline-primary " type="submit"  ><i class="fa fa-search fa-fw"></i>
                  <font face="FontAwesome">Search</font>
                </button></div>
            </div>
          </form>
        </div>
      </div>

	<div class="content" style= "background: #A8B5BE;">
		<div class="row">
			<div class="col-sm-3 " style="background: white;" >
				<form method="POST">			
        			<select  name="mucc" class="form-control" style="margin-left: 5px;">
            			<option>Chọn mục</option>
            			<?php
                			foreach($muc as $k=>$v){
                		?>
                		<option value=" <?php echo $k;?> "><?php echo $v;?></option>
                		<?php
                		}
            			?>

        			</select>
        		
        			<input type="submit" name ="submit" value="Search" class="btn btn-block btn-outline-primary" 
        		</form> 
        		<div class="fb-comments" data-href="http://localhost/lythuyet1.php" data-width="900px" data-numposts="5"></div>     		
			</div>
			


  			<div class="col-sm-9" style="padding: 1em;font-size: xx-small;" >
  				
  					<?php
						$servername = "localhost";
						$username = "root";
						$password = "";
						$dbname = "lythuyet";
						// Create connection
						$dbc = new mysqli($servername, $username, $password, $dbname);
						// Check connection
						if ($dbc->connect_error) {
    						die("Connection failed: " . $dbc->connect_error);
						} 
					?>
					<?php
						mysqli_set_charset($dbc, 'UTF8'); 	
						
						// Câu query lấy dữ liệu
						if (isset($_POST['submit'])){
							if($_POST['mucc']==0) echo"<p>chọn lại</p>";
							else{
						 	$query = "select lythuyet from congthuc where TT= " .$_POST['mucc'] ;
  						 	$ret = $dbc->query($query);
   							while($row = $ret->fetch_assoc() ){
 							 echo  $row['lythuyet'] ;
   							}}
        				}
        				
        									
					?> 		
					
  			</div>

		</div>
	</div>


	<div class="py-3" >
    	<div class="container" >
      		<div class="row">
        		<div class="col-md-12 text-center d-md-flex align-items-center"> <i class="d-block fa fa-stop-circle fa-2x mr-md-5 text-primary"></i>
          			<ul class="nav mx-md-auto d-flex justify-content-center">
            			<li class="nav-item"> <a class="nav-link active" href="homemoi.php">Home</a> </li>
            			<li class="nav-item"> <a class="nav-link" href="lythuyet1.php">Grammar</a> </li>
            			<li class="nav-item"> <a class="nav-link" href="Hangman.php">HangMan</a> </li>
            			<li class="nav-item"> <a class="nav-link" href="About.php">About</a> </li>
          			</ul>
          			<div class="row">
            			<div class="col-md-12 d-flex align-items-center justify-content-md-between justify-content-center my-2"> 	
            				<a href="#">
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
</body>
	<script>
		$(document).ready(function(){
 
 		$('#form3').typeahead({
  			source: function(query, result)
  			{
   				$.ajax({
    				url:"fetch.php",
   					 method:"POST",
    				data:{query:query},
    				dataType:"json",
    				success:function(data)
    				{
     					result($.map(data, function(item){
      						return item;
     					}));
    				}
   				})
  			}
 		});
 
		});

	</script>
</html>