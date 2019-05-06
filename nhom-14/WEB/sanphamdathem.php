<?php 
session_start();
?>

<!DOCTYPE html>
<html lang="vi">
<head>
	<title>Trao đổi thông tin sản phẩm</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/png" href="webimage/icon.png"/>
	<!-- CSS, Boostrap -->
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fontawesome/all.css">
	<link rel="stylesheet" type="text/css" href="jcarousel/jcarousel.responsive.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/mdb.min.css">
	<!-- Javascript -->
	<script src="jquery-3.3.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="fontawesome/all.js"></script>
	<script type="text/javascript" src="jcarousel/jquery.jcarousel.min.js"></script>
	<script type="text/javascript" src="jcarousel/jcarousel.responsive.js"></script>
</head>
<body>
	<header>
		<div class="container-fluid">		
			<div class="logo">
				<a href="index1.php">
					<img src="webimage/logo1.png" alt="Logo trang">
				</a>

			</div>
		</div>
	</header>
	<div class="container-fluid">
		<div class="navbar navbar-expand-sm bg-primary navbar-light" style="justify-content: space-between; padding: 0px; height: 56px; cursor: pointer;">
			<ul class="navbar-nav menu">
				<li class="dropdowm">
					<a class="nav-link dropdown-toggle text-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Danh mục sản phẩm</a>
					<ul class="dropdown-menu">
						<li>
							<a href="loaisp.php?loai_sp=<?php echo "Sách" ?>" class="drowdown-item">Sách</a>
						</li>
						<li class="dropdown-divider"></li>
						<li>
							<a href="loaisp.php?loai_sp=<?php echo "Laptop - Thiết bị IT" ?>" class="drowdown-item">Laptop - Thiết bị IT</a>
						</li>
						<li class="dropdown-divider"></li>
						<li>
							<a href="loaisp.php?loai_sp=<?php echo "Thời trang - Phụ kiện thời trang" ?>" class="drowdown-item">Thời trang - Phụ kiện thời trang</a>
						</li>
						<li class="dropdown-divider"></li>
						<li>
							<a href="loaisp.php?loai_sp=<?php echo "Phụ kiện - Thiết bị số" ?>" class="drowdown-item">Phụ kiện - Thiết bị số</a>
						</li>
						<li class="dropdown-divider"></li>
						<li>
							<a href="loaisp.php?loai_sp=<?php echo "Điện thoại - Máy tính bảng" ?>" class="drowdown-item">Điện thoại - Máy tính bảng</a>
						</li>
						<li>
							<a href="loaisp.php?loai_sp=<?php echo "Loại khác" ?>" class="drowdown-item">Loại khác</a>
						</li>
					</ul>
				</li>
			</ul>
			<div class="navbar-nav">
				<form action="timkiem.php" method="post" style="margin: auto;">
					<div class="input-group">
						<input type="text" name="search" class="search" value="Tim kiem san pham" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Tim kiem san pham';}">
						<div class="input-group-append" style="margin-top: 9px; margin-left: -34px">
							<a class="text-dark">
								<i class="fa fa-search"></i>
							</a>
						</div>
					</div>			
				</form>
				<div>			
					<ul class="navbar-nav menu">
						<li class="dropdowm">
							<a href="#" class="nav-link text-light dropdown-toggle" data-toggle="dropdown" style="display: -webkit-inline-box;">
								<?php
								if(isset($_SESSION['avatar'])){
									$imageURL="avatar/".$_SESSION['avatar'];
									$tentaikhoan = $_SESSION['username'];
									?>
									<img src="<?php echo $imageURL; ?>" alt="avatar_user" style="width: 40px; height: 34px;" />
                                    <p><?php echo $tentaikhoan; ?></p>
									<?php
								}
								?>								
							</a>
							<ul class="dropdown-menu-right border border-primary dropdown-menu">
								<li>
									<a href="taikhoancuatoi.php" class="drowdown-item">Thông tin tài khoản</a>
								</li>
								<li class="dropdown-divider"></li>
								<li>
									<a href="themsanpham.php" class="drowdown-item">Thêm sản phẩm</a>
								</li>
								<li class="dropdown-divider"></li>
								<li>
									<a href="#" class="drowdown-item">Sản phẩm đã thêm</a>
								</li>
								<li class="dropdown-divider"></li>
								<li>
									<a href="#" class="drowdown-item">Sản phẩm đã thích</a>
								</li>
								<li class="dropdown-divider"></li>
								<li>
									<a href="doimatkhau.php" class="drowdown-item">Đổi mật khẩu</a>
								</li>
								<li class="dropdown-divider"></li>
								<li>
									<a href="dangxuat.php" class="drowdown-item">Đăng xuất</a>
								</li>		
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<section class="container-fluid">
		<section id="container">
			<div class="row" style="margin-top: 32px;">
				
				<div class="user_left col-md-3">
					<div class="avatar" style="padding: 30px">
						<img class="rounded-circle border border-light" src="<?php echo $imageURL; ?>" alt="webadmin">
					</div>
					<div class="mt-md-3">
						<div class="user_info"><?php echo $tentaikhoan; ?></div>
						<div class="content">
							<?php
									include 'connect.php';

									$query = mysqli_query($con,"SELECT * FROM thongtinsanpham WHERE username_themsp = '$tentaikhoan'");
									$num = mysqli_num_rows($query);
							?>
							<label>
								Số sản phẩm đã thêm : <?php echo "$num"; ?>
							</label>
						</div>
					</div>
					<div class="mt-md-3">
						<div class="user_info">Chức năng thành viên</div>
						<div class="content">
							<ul>
								<li><a href="taikhoancuatoi.php">Chỉnh sửa thông tin</a></li>
								<li><a href="doimatkhau.php">Đổi mật khẩu</a></li>
								<li><a href="themsanpham.php">Thêm sản phẩm</a></li>
								<li><a href="sanphamdathem.php">Sản phẩm đã thêm</a></li>
								<li><a href="sanphamdathich.php">Sản phẩm đã thích</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="user_right col-md-9">

					<div>
						<div class="mt-5" style="border: 1px solid #ddd; ">
							<div class="title_tab">
								<div class="title_header">Sản phẩm bạn đã thêm</div>
								<br class="clear"> 
							</div>

							<div class="sp_moi">
								<ul class="listsp">
									<?php
									include 'connect.php';

									$query = mysqli_query($con,"SELECT * FROM thongtinsanpham WHERE username_themsp = '$tentaikhoan'");
									if($query->num_rows > 0){
										while($row = $query->fetch_assoc()){
											$imageURL1 = 'sanpham/'.$row["img"];
											$tensp = $row['name'];
											$giasp = $row['giatien'];
											?>
											<li>
												<div class="float-left" style="margin: 20px 10px 0px;">
													<div class="item_sp">
														<a href="sanpham.php?id=<?php echo $row['ma_sp']?>">
															<img class="img" src="<?php echo $imageURL1; ?>" alt="Hình ảnh sản phẩm">
															<div class="mt-4">
																<div>
																	<h5 class="card-title"><?php echo $tensp; ?></h5>
																</div>
																<div>
																	<p class="card-text"><?php echo $giasp; ?> đồng</p>
																</div>
															</div>

														</a>
													</div>
												</div>

											</li>

										<?php }
									}else{ ?>
										<p class="ml-4 mt-4" style="display: -webkit-inline-box;">Bạn chưa thêm sản phẩm nào. Ấn vào&nbsp<a href="themsanpham.php" class="p-0 text-primary"><b><i>thêm sản phẩm</i></b></a>&nbspđể đóng góp.</p>

										<?php
									} ?>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

		</section>
	</section>

</body>
</html>
