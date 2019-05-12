<?php
	include_once('..\Model\database.php');
    include_once('..\Model\process_db.php');
    $categories = get_all_caterory();
?>
<!DOCTYPE html>
<html>
<head>
	<title>Trang chủ</title>
	<meta charset="utf-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="..\View\css\bootstrap.min.css">
    <script src="..\View\js\jquery.min.js"></script>
    <script src="..\View\js\bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="..\View\css\style.css">
</head>
<body>
	<div class=container>
		<div class=row >
			<form class="formlogin">
				<button>Login</button>
			</form>	
		</div>

		<div class=row>
			<div class="col-xs-6 col-md-3 box" >
			<ul class="menu">
				<br>
				<br>
				<br>

				<?php foreach($categories as $value){?>
				<li>
				<a href="?action=category_list&id_category=<?php echo $value['id'];?>">
					<?php echo $value['name'];?>
				</a>
				</li>
				 <br>
				<?php }?>			
			</ul>	
			</div>
			<div class="col-xs-12 col-md-9 box">
				<div class="col-xs-12 col-md-12">					
					<?php
						$news=get_news();						
					?>
					<h2>
						<?php
							echo $news['title'];
						?>
					</h2>
					<p>
						<?php
							echo $news['content'];
						?>
					</p>
					<p>
						<?php
							echo "Ngày đăng : ".$news['Date_upload'];
						?>
					</p>
				</div>
				<div class="col-xs-12 col-md-12">
					Tin mới nhất
					<ul>
						<?php
							$top_news=get_top_news();
							foreach($top_news as $value){
						?>

						<li>
							<a href="?action=article_detail.php&article_id=<?php echo $value['Id'];?>">
								<?php echo $value['title'];?>
							</a>
						</li>
						<?php
							}
						?>						
					</ul>						

				</div>
			</div>  
		</div>			
	</div>
</div>
</body>
</html>