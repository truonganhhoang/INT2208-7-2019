<!DOCTYPE html>
<html>
    <head>
        <title>Quản lý thiết bị</title>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        
        <script  src="assts/js/jquery-3.2.1.min.js"></script>
        <script  src="assts/js/bootstrap.min.js"></script>
        <!---->
        <link rel="stylesheet" type="text/css" href="assets/css/slick.css"/>
        <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css"/>
        <!--slide-->
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        
    </head>
     <?php
        include 'config.php';
        include 'Process_db.php';
    ?>       
    <body>
        <div id="wrapper">
            <!---->
            <!--HEADER-->
            <div id="header">
                <div class="container">
                    <div class="row" id="header-main"> 
                        <div class="col-md-3">
                             <img src="upload/logo.jpg" class="img-thumbnail" width="500px" height="500px">
                        </div>

                          <div class="col-md-2">
                              <img src="upload/laptop.jpg" alt="mykieu" class="img-circle" width="130px" height="130px">
                        </div>
                        <div class="col-md-2">
                            <img src="upload/phone.jpg" alt="mykieu" class="img-circle" width="130px" height="130px">
                        </div>
                          <div class="col-md-2">
                            <img src="upload/mouse.jpg" alt="mykieu" class="img-circle" width="130px" height="130px">
                        </div>
                        <div class="col-md-3" id="header-right">
                            <img src="upload/sac.jpg" alt="mykieu" class="img-circle" width="130px" height="130px">
                            <div class="pull-right">
                                <div class="pull-left">  
                                    <i class="glyphicon glyphicon-phone-alt"></i>
                                </div>
                                <div class="pull-right">
                                    <p id="hotline">HOTLINE</p>
                                    <p>0123456789</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--END HEADER-->
       <!--MENU-->
            <data iv id="menunav">
                <div class="container">
                    <nav>
                        <div class="home pull-left">
                            <a href="index.php">Trang chủ</a>
                        </div>
                        <!--menu main-->
                        <ul id="menu-main">
                             <!-- <li>
                                <a href="admin/register.php">Đăng ký</a>
                            </li> -->
                            <li>
                                <a href="admin/login.php">Đăng nhập trang quản lý thiết bị</a>
                            </li>
                            <li>
                                <a href="Lienhe.php">Liên hệ</a>
                            </li>
                        </ul>
            
                    </nav>
                </div>
            </data>
        </div>
            <!--ENDMENU-->
            <!--DANH MUC & SAN PHAM MOI-->
            <div id="maincontent">
                <div class="container">
                    <div class="col-md-3  fixside" >
                        <div class="box-left box-menu" >
                            <h3 class="box-title"><i class="fa fa-list"></i>  Danh mục</h3>
                            <ul>
                                 <?php include('include/TrangChu/DanhMuc.php');?>
                            </ul>
                        </div>

                        <div class="box-left box-menu">
                            <h3 class="box-title"><i class="fa fa-warning"></i>Thiết bị mới </h3>
                            <ul>
                               <?php include('include/TrangChu/ThietBiMoi_left.php') ?><br /> 
                            </ul>
                        
                        </div>   
                    </div>
                    <!--ADD DANH MUC & SAN PHAM MOI-->
                    <!--LIST SAN PHAM-->
                    <div class="col-md-9 bor">
                        <section id="slide" class="text-center" >
                            <img src="upload/logo.png" class="img-thumbnail" width="10px" height="10px">
                        </section>

                        <section class="box-main1">
                            <?php 
                            if(isset($_GET['page'])){$page=$_GET['page'];}else{$page="";}


                            switch($page)
                                {
                                
                                
                                case "list-thiet-bi":
                                
                                    include("include/list-thiet-bi.php");


                                break;
                                
                                case "chi-tiet-thiet-bi":
                                    include("include/chi-tiet-thiet-bi.php");
                                break;
                                 case "login":
                                    include("login.php");
                                break;
                                default:
                                    include("include/TrangChu.php");    


                                }
                            ?>
                        </section>
                              <ul class="pagination">
                                <li class="page-item">
                                  <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                    <span class="sr-only">Previous</span>
                                  </a>
                                </li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li class="page-item">
                                  <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                  </a>
                                </li>
                              </ul>
                    </div>
        </div>
                <!--ADD LIST SAN PHAM-->
             <!--FOOTER-->
                <div class="container-pluid">
                <section id="footer">
                    <div class="container">
                        <div class="col-md-3" id="shareicon">
                            <ul>
                                <li>
                                    <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a href="https://twitter.com/"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li>
                                    <a href="https://www.google.com/"><i class="fa fa-google-plus"></i></a>
                                </li>
                                <li>
                                    <a href="https://www.youtube.com/"><i class="fa fa-youtube"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </section>
                <section id="footer-button">
                    <div class="container-pluid">
                        <div class="container">
                             <div id="footer_wrapper">
                <span style="font-family:arial,helvetica,sans-serif;"><span style="font-size: 130%;">
                <span style="color:#FFF;">
                <p style="float:left;padding-top:2%; width:60%">
                    <span style="font-size:130%;"><span style="font-family:tahoma,geneva,sans-serif;"><span style="color:#00bcf2;"><b>CÔNG TY TNHH UET</b></span></span></span><br>
                    <strong style="font-family: tahoma, geneva, sans-serif;"><u>Địa chỉ</u></strong><span style="font-family: tahoma, geneva, sans-serif;">: Xuân Thủy - Hà Nội</span><br>
                    <strong style="font-family: tahoma, geneva, sans-serif;"><u>Số điện thoại</u></strong><span style="font-family: tahoma, geneva, sans-serif;">: 0123456789</span><br>
                    <u style="font-family: tahoma, geneva, sans-serif;">Website</u><span style="font-family: tahoma, geneva, sans-serif;">: </span><span style="font-family: tahoma, geneva, sans-serif; color:#00bcf2;">uet.vnu.edu.vn</span>                  
                </p>
                </span>             
        </div>
        <!--End #footer_wrapper-->
                        </div>
                </section>
            </div>
        </div>      
    </div>
            </div>      
        </div>
    <script  src="assets/js/slick.min.js"></script>

    </body>
        
</html>

<script type="text/javascript">
    $(function() {
        $hidenitem = $(".hidenitem");
        $itemproduct = $(".item-product");
        $itemproduct.hover(function(){
            $(this).children(".hidenitem").show(100);
        },function(){
            $hidenitem.hide(500);
        })
    })
</script>                     