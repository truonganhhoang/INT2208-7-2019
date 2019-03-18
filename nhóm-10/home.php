
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Web Demo </title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">	

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel = "stylesheet" href="css1.css" type="text/css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 	 <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.2/bootstrap3-typeahead.min.js"></script> 
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" >
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-main">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#home"><img src="imgg/logo.png"></a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-collapse-main">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="active" href="#">Home</a></li>
					<li><a href="#">Topics</a></li>
					<li><a href="#">Test</a></li>
					<li><a href="#">About</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div id="home">
		<div class="landing-text">
			<h1>UDict</h1>
			<h3>This is your dictionary</h3>
			<form class="form-inline" action="home.php" method="post">
				
	      			<input id='key' type="text" name='key' placeholder="Type to search..." autocomplete="off" value="<?php 
  					if(isset($_POST['key']))
					echo $_POST['key'];
  				?>">
	      	
	        		<input type="submit" value="Search">
	        	</div>
	        	</div>
	    	</form>
	</div>
	<div id="content">
		<div class="row">
			<div class="col-sm-2" ></div>
  			<div class="col-sm-8" id="expl">
  				<h3>Search Results for: </h3>
  				<h2>
  					<?php 
  					if(isset($_POST['key']))
					echo $_POST['key'];
  				?>
  				</h2>
  				<hr style="border-top:1px solid black;">
  				<div>
  				<?php
				   $db = new PDO("sqlite:dictionaries.db");
				   if(!$db){
				      echo $db->lastErrorMsg();
				   } 
				   if(isset($_POST['key'])){
					    if(strcasecmp( $_POST['key'], '' ) == 0){
					  echo "Sorry, we didn't find any word that match your search.";
						}
					   else
					   {
					   $q= $_POST["key"] ;
					  
					 	$s=trim($q);
					 	 $sql = "SELECT * from tbl_edict where word like " . "'" . $s ."';";
					   $ret = $db->query($sql);
					   $t=0;
					   while($row = $ret->fetch(\PDO::FETCH_ASSOC) ){
					    $t++;
					      echo "Explain  ". $row['detail'] ."\n";
					   }
						if($t==0||$s=='')
							echo "Sorry, we didn't find any word that match your search.";
					   
					   }
				}
				
				?>

					</div>
  			</div>
  			<div class="col-sm-2"  ></div>
		</div>
	</div>
	<footer class="container-fluid text-center">
		<div class="row">
			<div class="col-sm-4">
				<h3>Contact us</h3>
				<br>
				<h4>Our address and contact info here.</h4>
			</div>
			<div class="col-sm-4">
				<h3>Connect</h3>
				<a href="#" class="fa fa-facebook fa-3x"></a>
				<a href="#" class="fa fa-twitter fa-3x"></a>
				<a href="#" class="fa fa-google fa-3x"></a>
				<a href="#" class="fa fa-youtube fa-3x"></a>
			</div>
			<div class="col-sm-4">
				<img src="imgg/logo.png" class="icon">
			</div>
	</footer>



</body>
</html>