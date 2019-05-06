<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css"/>
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<?php
		$connect = mysqli_connect('localhost','root','','quanlythietbi');
		mysqli_set_charset($connect,"utf8");
	?>
 
	<?php
		$page=1;
		$limit=2;
		
 
		$arrs_list = mysqli_query($connect," select id from thietbi ");
		$total_record = mysqli_num_rows($arrs_list);
		
		$total_page=ceil($total_record/$limit);

		if(isset($_GET["page"]))
			$page=$_GET["page"];
		if($page<1) $page=1; 
		if($page>$total_page) $page=$total_page;
 
		$start=($page-1)*$limit;
		
		//lấy ra danh sách và gán vào biến $arrs:
		$arrs = mysqli_query($connect," select * from thietbi limit $start,$limit ");
	?>
 
 
	<div class="container">
		<div class="row">
			<!-- 'start hiển thị danh sách môn học' -->
			<div class="col-md-6 div col-md-offset-3">
				<div class="alert alert-danger">
					
				</div>
 
				<?php foreach($arrs as $arr){ ?>
				<div class="alert alert-success">
					<?php echo $arr["thietbi"]; ?>
				</div>
				<?php } ?>
			</div>
			<!-- 'end hiển thị danh sách môn học' -->
 
 
			<!-- 'start hiện nút phân trang' -->
			<div class="col-md-6 div col-md-offset-3">
				<ul class="pagination">
					<?php for($i=1;$i<=$total_page;$i++){ ?>
				    <li <?php if($page == $i) echo "class='active'"; ?> ><a href="index.php?page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
				    <?php } ?>
				</ul>
			</div>
			<!-- 'end hiện nút phân trang' -->
		</div>
	</div>
</body>
</html>