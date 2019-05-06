<?php ob_start();
  include "../config.php";
  include "function.php";
  include "check-login.php";
   date_default_timezone_set('Asia/Ho_Chi_Minh');
?>
<script>
  function deleteAction(){
    return confirm("Bạn có muốn xóa mục này");
    } //để bắt sự kiện onclick
  function edit(){
    return confirm("Bạn có sửa mục này");
    } //để bắt sự kiện onclick
</script>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang quản trị</title>

    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/local.css" />

    <script type="text/javascript" src="assets/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="assets/bootstrap/js/bootstrap.min.js"></script>

    <!-- you need to include the shieldui css and js assets in order for the charts to work -->
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
    <script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
    <script type="text/javascript" src="http://www.prepbootstrap.com/Content/js/gridData.js"></script>
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><marquee>TRANG QUẢN TRỊ QUẢN LÝ THIẾT BỊ</marquee></a>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active"><a href="index.php"><i class="fa fa-bullseye"></i> Bảng điều khiển</a></li>
                    <li><a href="#"><i class="fa fa-globe"></i>  Thiết bị</a>
                         <ul class="nav nav-second-level">
                            <li>
                              <a href="?ADpage=Them-TB">Thêm Thiết Bị</a>
                            </li>
                            <li>
                              <a href="?ADpage=QL-TB">Quản Lí Thiết Bị</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="fa fa-tasks"></i> Loại</a>
                        <ul class="nav nav-second-level">
                            <li>
                              <a href="?ADpage=Them-Loai"> Thêm Loại </a>
                            </li>
                            <li>
                              <a href="?ADpage=QL-Loai"> Quản Lí Loại </a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="fa fa-user"></i>  Tài khoản</a>
                        <ul class="nav nav-second-level">
                            <li>
                              <a href="?ADpage=QL-TK"> Quản Lí tài khoản </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right navbar-user">
                    <!-- <li class="dropdown messages-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Tin nhắn <span class="badge"></span> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header"> Tin nhắn mới</li>
                            <li class="message-preview">
                            </li>
                            <li class="divider"></li>
                            <li class="message-preview">
                            </li>
                        </ul>
                    </li> -->
                     <!-- <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i><b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="fa fa-user"></i> Hồ sơ</a></li>
                            <li class="divider"></li>
                            <li><a href="?ADpage=Log-out"><i class="fa fa-power-off"></i> Đăng xuất</a></li>
                        </ul>
                    </li> -->
                    <li><a href="?ADpage=Log-out"><i class="fa fa-power-off"></i> Đăng xuất</a></li>
                </ul>
            </div>
        </nav>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                     <div class="row">
                    <?php 
              if(isset($_GET['ADpage'])){$ADpage=$_GET['ADpage'];}else{$ADpage="";}
              switch($ADpage)
                {
                
                //QL TB
                case "Them-TB":
                  include("include/ThietBi/Them-TB.php"); //file include cùng cấp với index của admin
                break;
                case "Sua-TB":
                  include("include/ThietBi/Sua-TB.php");
                break;
                case "QL-TB":
                  include("include/ThietBi/QL-TB.php");
                break;
                case "Xoa-TB":
                  include("include/ThietBi/Xoa-TB.php");
                break;
                //QL loai
                case "Them-Loai":
                  include("include/Loai/Them-Loai.php"); //file include cùng cấp với index của admin
                break;
                case "Sua-Loai":
                  include("include/Loai/Sua-Loai.php");
                break;
                case "QL-Loai":
                  include("include/Loai/QL-Loai.php");
                break;
                case "Xoa-Loai":
                  include("include/Loai/Xoa-Loai.php");
                break;
                //QL taikhoan
                break;
                case "Sua-TK":
                  include("include/TaiKhoan/Sua-TK.php");
                break;
                case "QL-TK":
                  include("include/TaiKhoan/QL-TK.php");
                break;
                case "Xoa-TK":
                  include("include/TaiKhoan/Xoa-TK.php");
                break;
                //dang xuat
                case "Log-out":
                  include("logout.php");
                break;
                
                default:
                    include("include/DashBoard.php"); 
                  
                }
      ?>
      
                   
                </div>
            </div>
        </div>
    </div>
    <!-- /#wrapper -->

   
</body>
</html>
