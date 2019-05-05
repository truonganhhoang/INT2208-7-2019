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
				<?php 
				if(isset($_SESSION['avatar'])){
					?>
					<a href="index1.php">
						<img src="webimage/logo1.png" alt="Logo trang">
					</a>
					<?php
				}else{
					?>
					<a href="index.php">
						<img src="webimage/logo1.png" alt="Logo trang">
					</a>
					<?php
					
				}
				?>
				

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
							<a href="#" class="text-dark">
								<i class="fa fa-search"></i>
							</a>
						</div>
					</div>			
				</form>
				<?php
				if(isset($_SESSION['avatar'])){
					$imageURL="avatar/".$_SESSION['avatar'];
					$tentaikhoan = $_SESSION['username'];
					?>
					<div>           
						<ul class="navbar-nav menu">
							<li class="dropdowm">
								<a href="#" class="nav-link text-light dropdown-toggle" data-toggle="dropdown" style="display: -webkit-inline-box;">
									<img src="<?php echo $imageURL; ?>" alt="avatar_user" style="width: 40px; height: 34px;" />
									<p><?php echo $tentaikhoan; ?></p>
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
										<a href="sanphamdathem.php" class="drowdown-item">Sản phẩm đã thêm</a>
									</li>
									<li class="dropdown-divider"></li>
									<li>
										<a href="sanphamdathich.php" class="drowdown-item">Sản phẩm đã thích</a>
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
					<?php
				}else{?>
					<div>
						<button type="button" class="btn btn-primary p-1" data-toggle="modal" data-target="#user_login">
							Đăng nhập/Đăng ký
						</button>
						<div class="modal fade" id="user_login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog cascading-modal" role="document">
								<!--Content-->
								<div class="modal-content">
									<div class="modal-c-tabs">

										<!-- Nav tabs -->
										<ul class="nav nav-tabs" role="tablist">
											<li class="nav-item">
												<a class="nav-link active" data-toggle="tab" href="#login" role="tab"><i class="fas fa-user mr-1"></i>
												Đăng nhập</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" data-toggle="tab" href="#register" role="tab"><i class="fas fa-user-plus mr-1"></i>
												Đăng ký</a>
											</li>
										</ul>

										<!-- Tab panels -->
										<div class="tab-content">
											<!--Login-->
											<div class="tab-pane fade in show active" id="login" role="tabpanel">

												<!--Body-->
												<form action="dangnhap.php" method="post" class="modal-body my-3 mx-3">
													<div class="input-group md-form form-sm mb-4">
														<div class="input-group-prepend">
															<span class="input-group-text">
																<i class="fa fa-user"></i>
															</span>
														</div>
														<input type="username" name="username" class="form-control" placeholder="Tên tài khoản" value="<?php if(isset($_COOKIE['username'])) echo $_COOKIE['username']; ?>" required>
													</div>

													<div class="input-group md-form form-sm mb-4">
														<div class="input-group-prepend">
															<span class="input-group-text" style="width: 40px;">
																<i class="fas fa-lock prefix" style="width: 15px"></i>
															</span>
														</div>
														<input type="password" name="password" id="pass" class="form-control" placeholder="Mật khẩu" value="<?php if(isset($_COOKIE['password'])) echo $_COOKIE['password']; ?>" required>
													</div>

													<div class="form-group form-check">
														<label class="form-check-label font-weight-normal">
															<input class="form-check-input" type="checkbox" name="remember" checked <?php if(isset($_COOKIE['username']) && isset($_COOKIE['password']) ){echo 'checked';} ?>> Remember me
														</label>
													</div>

													<div class="text-center mt-2">
														<button type="submit" name="submit" class="btn btn-info">Đăng nhập<i class="fas fa-sign-in ml-1"></i></button>
													</div>
												</form>
												<!--Footer-->
												<div class="modal-footer">
													<button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal">Đóng</button>
												</div>

											</div>
											<!--/Login-->

											<!--Register-->
											<div class="tab-pane fade" id="register" role="tabpanel">

												<!--Body-->
												<form action="dangky.php" method="post" class="modal-body my-3 mx-3" enctype="multipart/form-data">
													<div class="input-group md-form form-sm mb-4">
														<div class="input-group-prepend">
															<span class="input-group-text">
																<i class="fa fa-user"></i>
															</span>
														</div>
														<input type="username" name="username" class="form-control" placeholder="Tên tài khoản" required>
													</div>

													<div class="input-group md-form form-sm mb-4">
														<div class="input-group-prepend">
															<span class="input-group-text" style="width: 40px;">
																<i class="fas fa-lock prefix" style="width: 15px"></i>
															</span>
														</div>
														<input type="password" id="password" name="password" placeholder="Mật khẩu" class="form-control" required>
													</div>
													<div id="message">
														<p id="length" class="invalid">
															<i class="fa fa-check"></i>
															Mật khẩu lớn hơn 5 ký tự
														</p>
													</div>												
													
													<div class="input-group md-form form-sm mb-4">
														<div class="input-group-prepend">
															<span class="input-group-text" style="width: 40px;">
																<i class="fas fa-lock prefix" style="width: 15px"></i>
															</span>
														</div>
														<input type="password" name="password2" class="form-control" placeholder="Nhập lại mật khẩu" required>
													</div>

													<div class="input-group md-form form-sm mb-4" enc>
														<div class="input-group-prepend">
															<span class="input-group-text">
																<i class="fa fa-image"></i>
															</span>
														</div>
														<input type="file" name="avatar" class="form-control" placeholder="Link Avatar" required>
													</div>

													<div class="text-center form-sm mt-2">
														<button type="submit" name="submit" class="btn btn-info">Đăng ký<i class="fas fa-sign-in ml-1"></i></button>
													</div>

												</form>
												<!--Footer-->
												

												<div class="modal-footer">
													<button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal">Đóng</button>
												</div>
											</div>
											<!--/Register-->
										</div>

									</div>
								</div>
								<!--/.Content-->
							</div>
						</div>		
					</div>
					<?php
				}
				?> 
			</div>
		</div>
	</div>
	<div class="container-fluid mt-4 mb-5">
		<div class="jcarousel-wrapper">
			<div class="jcarousel" data-jcarousel="true">
				<ul>
					<?php
					include 'connect.php';

					$query = mysqli_query($con,"SELECT * FROM thongtinsanpham ORDER BY time_sp DESC LIMIT 6");
					if($query->num_rows > 0){
						while($row = $query->fetch_assoc()){
							$imageURL1 = 'sanpham/'.$row["img"];
							?>
							<li style="height: 200px">
								<img class="img" src="<?php echo $imageURL1; ?>" alt="Hình ảnh sản phẩm" style="height: 195px!important;">
							</li>

						<?php }
					} ?>
				</ul>
			</div>

			<a href="#" class="jcarousel-control-prev" role="button" data-jcarouselcontrol="true">‹</a>
			<a href="#" class="jcarousel-control-next" role="button" data-jcarouselcontrol="true">›</a>

			<p class="jcarousel-pagination" data-jcarouselpagination="true">
				<a href="#1" class="">1</a>
				<a href="#2" class="">2</a>
				<a href="#3" class="">3</a>
				<a href="#4" class="">4</a>
				<a href="#5" class="">5</a>
				<a href="#6" class="active">6</a>
			</p>
		</div>
	</div>
	<section class="container-fluid mt-5">
		<section class="text-center mb-4">

			<div class="row wow fadeIn" style="visibility: visible; animation-name: fadeIn;">
				<?php
				include 'connect.php';
				$loai = $_GET['loai_sp'];
				$query = mysqli_query($con,"SELECT * FROM thongtinsanpham WHERE loai_sp = '$loai' ORDER BY time_sp DESC");
				if($query->num_rows > 0){
					while($row = $query->fetch_assoc()){
						$imageURL1 = 'sanpham/'.$row["img"];
						$tensp = $row['name'];
						$giasp = $row['giatien'];
						?>
						<div class="col-lg-3 col-md-6 mb-4">
							<div class="card">

								<div class="view overlay">
									<img src="<?php echo $imageURL1; ?>" class="card-img-top" alt="" style=" padding: 15px;">
									<a href="sanpham.php?id=<?php echo $row['ma_sp']?>">
										<div class="mask rgba-white-slight waves-effect waves-light"></div>
									</a>
								</div>

								<div class="card-body text-center" style="display: contents;">
									<h5>
										<strong>
											<a href="sanpham.php?id=<?php echo $row['ma_sp']?>">
												<span class="badge badge-pill primary-color" style="white-space: normal;"><?php echo $tensp; ?></span>
											</a>
										</strong>
									</h5>

									<h4 class="font-weight-bold blue-text">
										<strong><?php echo $giasp; ?> đồng</strong>
									</h4>

								</div>
							</div>
						</div>
					<?php }
				}else{?>
					<p style="margin: auto;">
						<big><i>Chưa có sản phẩm loại này</i></big>
					</p>
					<?php
				}?>
			</div>
		</section>
	</section>

	
</body>
</html>
