<?php
session_start();
require('connect.php');
$username = $_SESSION['username'];
if(isset($_POST['upPass'])){
	$password = $_POST['password'];
	$passnew = $_POST['passnew'];
	if(strlen($passnew) < 6){
		echo '<script language="javascript">alert("Mật khẩu nhiều hơn 5 ký tự!"); window.location="doimatkhau.php";</script>';
	}else{
		if($passnew==$password){
			echo '<script language="javascript">alert("Trùng mật khẩu cũ!"); window.location="doimatkhau.php";</script>';
		}else{
			
			$sql = "UPDATE thongtinnguoidung SET password = '$passnew' WHERE username = '$username'";

			$query = mysqli_query($con,$sql);
			if($query){
				echo '<script language="javascript">alert("Thay đổi thành công!"); window.location="doimatkhau.php";</script>';;

			}else{
				echo '<script language="javascript">alert("Thay đổi không thành công!"); window.location="doimatkhau.php";</script>';
			}
		}
	}
}


?>

<!DOCTYPE html>
<html lang="vi">
<head>
	<title>Trao đổi thông tin sản phẩm</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="style.css">
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
							<a href="loaisp.php?loai_sp='Thời trang - Phụ kiện thời trang'" class="drowdown-item">Thời trang - Phụ kiện thời trang</a>
						</li>
						<li class="dropdown-divider"></li>
						<li>
							<a href="loaisp.php?loai_sp='Phụ kiện - Thiết bị số'" class="drowdown-item">Phụ kiện - Thiết bị số</a>
						</li>
						<li class="dropdown-divider"></li>
						<li>
							<a href="loaisp.php?loai_sp='Điện thoại - Máy tính bảng'" class="drowdown-item">Điện thoại - Máy tính bảng</a>
						</li>
						<li>
							<a href="loaisp.php?loai_sp='Loại khác'" class="drowdown-item">Loại khác</a>
						</li>
					</ul>
				</li>
			</ul>
			<div class="navbar-nav">
				<form>
					<div class="input-group" style="margin-top: 9px;">
						<input type="text" class="search" value="Tim kiem san pham" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Tim kiem san pham';}">
						<div class="input-group-append" style="margin-top: 9px; margin-left: -34px">
							<a href="#" class="text-dark">
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
									<img src="<?php echo $imageURL; ?>" alt="avatar_user" style="width: 40px;" />
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
			</div>
		</div>
	</div>

	<section id="middle" class="container-fluid">
		<section id="container">
			<div class="row">
				<div class="user_left col-md-3">
					<div class="avatar">
						<img class="rounded-circle" src="<?php echo $imageURL; ?>" alt="webadmin">
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
								<div class="title_header">Đổi mật khẩu</div>
								<br class="clear"> 
							</div>

							<form action="" class="form-horizontal" id="form_thongtin" enctype="multipart/form-data" method="post" role="form">
								<div class="form-group mt-3">
									<div class="input-group-prepend">
										<label class="col-md-2 control-label">Mật khẩu cũ :</label>
										<div class="col-sm-10">
											<input type="password" name="password" placeholder="Mật khẩu cũ" required>
										</div>
										
									</div>									
								</div>
								<div class="form-group mt-3">
									<div class="input-group-prepend">
										<label class="col-md-2 control-label">Mật khẩu mới :</label>
										<div class="col-sm-10">
											<input type="password" name="passnew" placeholder="Mật khẩu mới" required>
										</div>									
									</div>								
								</div>
								
								<div class="form-group">
									<div class="col-md-12">
										<button class="btn btn-primary" type="submit" name="upPass">Đổi mật khẩu</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

		</section>
	</section>

</body>
</html>
