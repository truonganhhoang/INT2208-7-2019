<?php
    session_start();
    include('function/sql.php');
    
    if(isset($_POST['submit'])){ 
             
           foreach($_POST['quantity'] as $key => $val) { 
               if($val==0) { 
                   unset($_SESSION['cart'][$key]); 
               }else{ 
                   $_SESSION['cart'][$key]['quantity']=$val; 
               } 
           } 
             
       } 
    ?>
<!DOCTYPE html>
<html>
    <head>
        <title>Đặt hàng</title>
        <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="public/home/css/style.css" rel="stylesheet" type="text/css" media="all"/>
        <script type="text/javascript" src="public/home/js/jquery-1.7.2.min.js"></script> 
        <script type="text/javascript" src="public/home/js/move-top.js"></script>
        <script type="text/javascript" src="public/home/js/easing.js"></script>
        <script src="public/home/js/easyResponsiveTabs.js" type="text/javascript"></script>
        <link href="public/home/css/easy-responsive-tabs.css" rel="stylesheet" type="text/css" media="all"/>
        <link rel="stylesheet" href="public/home/css/global.css">
        <script src="public/home/js/slides.min.jquery.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style type="text/css">
            #main{
            width: 100%;
            }
            #main table {
            width: 100%; 
            } 
            #main table th { 
            padding: 10px; 
            background-color: #48577D; 
            color: #fff; 
            text-align: left; 
            } 
            #main table td { 
            padding: 5px; 
            }
        </style>
    </head>
    <body>
        <div class="wrap">
            <div class="header">
                <div class="header">
                    <div class="header_top">
                        <div class="logo" title="Trang chủ Home Shoppe">
                            <a href="<?php echo $domain; ?>"><img src="public/home/images/logo.png"></a>
                        </div>
                        <div class="cart">
                            <p>Chào mừng đến với Home Shoppe. 
                                <span> Giỏ hàng:</span>
                            <div id="dd" class="wrapper-dropdown-2">
                                <?php echo $_SESSION['cart_num'] . " hóa đơn"; ?>
                                <ul class="dropdown">
                                    <?php 
                                        if(isset($_SESSION['cart'])){ 
                                        
                                            $sql="SELECT * FROM product WHERE p_id IN ("; 
                                              
                                            foreach($_SESSION['cart'] as $id => $value) { 
                                                $sql.=$id.","; 
                                            } 
                                              
                                            $sql=substr($sql, 0, -1).") ORDER BY p_name ASC"; 
                                            $query=mysqli_query($con, $sql); 
                                            while($row=mysqli_fetch_array($query)){ 
                                                  
                                            ?> 
                                    <li><?php echo $row['p_name'] ?> x <?php echo $_SESSION['cart'][$row['p_id']]['quantity'] ?></li>
                                    <?php 
                                        } 
                                        ?> 
                                    <hr />
                                    <li><a  href="orders.php">Thanh toán</a></li>
                                    <form method="POST">
                                        <li><button type="submit" name="deleteAll">Xóa tất cả</button></li>
                                    </form>
                                    <?php 
                                        }else{ 
                                              
                                            echo "<li>Bạn không có sản phẩm nào trong giỏ hàng!</li>"; 
                                              
                                        } 
                                        
                                        ?>
                                </ul>
                            </div>
                            </p>
                        </div>
                        <?php
                            if(isset($_POST['deleteAll']))
                            {
                                unset($_SESSION['cart_num']);
                                unset($_SESSION['cart_pace']);
                                unset($_SESSION['cart']);
                                header('Location: /ShopWeb');
                            }
                            ?>
                        <script type="text/javascript">
                            function DropDown(el) {
                                this.dd = el;
                                this.initEvents();
                            }
                            DropDown.prototype = {
                                initEvents : function() {
                                    var obj = this;
                                    obj.dd.on('click', function(event){
                                        $(this).toggleClass('active');
                                        event.stopPropagation();
                                    }); 
                                }
                            }
                            
                            $(function() {
                                var dd = new DropDown( $('#dd') );
                                $(document).click(function() {
                                    // all dropdowns
                                    $('.wrapper-dropdown-2').removeClass('active');
                                });
                            });
                        </script>
                        <div class="clear"></div>
                    </div>
                    <?php
                        include_once __DIR__. "/layouts/header_bottom.php"; 
                        ?>       
                </div>
            </div>
            <div class="main" id="main">
                <div class="section group">
                    <div class="cont-desc span_1_of_2">
                        <h1 style="text-align: center; padding-top: 2%; font-size: 22px; color: red;">Giỏ hàng của tôi</h1>
                        <a href="index.php">Tiếp tục mua sắm.</a> 
                        <form method="post" action="customer.php">
                            <table>
                                <tr>
                                    <th>Tên sản phẩm (1)</th>
                                    <th>Số lượng (2)</th>
                                    <th>Giá (3)</th>
                                    <th>Thành tiền (4=2*3)</th>
                                </tr>
                                <?php 
                                    $sql="SELECT * FROM product WHERE p_id IN ("; 
                                           
                                          foreach($_SESSION['cart'] as $id => $value) { 
                                              $sql.=$id.","; 
                                          } 
                                            
                                          $sql=substr($sql, 0, -1).") ORDER BY p_name ASC"; 
                                          $query=mysqli_query($con, $sql); 
                                          $totalprice=0;
                                          $i=1;
                                          while($row=mysqli_fetch_array($query)){ 
                                              $subtotal=$_SESSION['cart'][$row['p_id']]['quantity']*$row['p_gia'];
                                              $totalprice+=$subtotal;
                                      ?> 
                                <tr style="background-color: <?php if($i%2!=0) echo '#d3dcf2;'; else echo '#fff'; ?>">
                                    <td><?php echo $row['p_name'] ?></td>
                                    <td><?php echo $_SESSION['cart'][$row['p_id']]['quantity'] ?></td>
                                    <td><?php echo number_format($row['p_gia'],0,'','.') . " vnđ" ?></td>
                                    <td><?php echo number_format($_SESSION['cart'][$row['p_id']]['quantity']*$row['p_gia'],0,'','.') . " vnđ" ?></td>
                                </tr>
                                <?php 
                                    $i++;
                                    } 
                                    ?>
                            </table>
                            <br>
                            <p>Tổng (5) = <?php echo number_format($totalprice,0,'','.'). " vnđ" ?></p>
                            <p>Thuế giá trị gia tăng VAT (6 = 5x10%) = <?php echo number_format($totalprice*0.1,0,'','.') . " vnđ" ?></p>
                            <p>Khuyến mại/ giảm trừ (7) = 0</p>
                            <br>
                            <p>Tổng tiền phải trả (8 = 5 + 6 - 7) = <?php echo number_format($totalprice*1.1,0,'','.') . " vnđ" ?></p>
                            <br /> 
                            <br>
                            <div class="available">
                                <ul>
                                    <li>
                                        Hình thức thanh toán:
                                        <select name="selec1">
                                            <option>Tiền mặt</option>
                                            <option>Thẻ ngân hàng</option>
                                            <option>Thẻ tín dụng</option>
                                            <option>Home Shoppe xu</option>
                                        </select>
                                    </li>
                                    <li>
                                        Cách thức thanh toán:
                                        <select name="selec2">
                                            <option>Trả thẳng</option>
                                            <option>Trả góp 6 tháng</option>
                                            <option>Trả góp 12 tháng</option>
                                            <option>Trả góp 16 tháng</option>
                                        </select>
                                    </li>
                                </ul>
                            </div>
                            <br>
                            <button name="ok" type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Thanh toán</button> 
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title" style="text-align: center;">Thông tin khách hàng</h4>
                                        </div>
                                        <div class="modal-body">
                                            <?php
                                                if(!isset($_SESSION['us_id']))
                                                {
                                                	?>
                        <form>
                        <p>
                        <label style="width: 30%; padding-left: 5%;">Họ tên:</label>
                        <input style="width: 60%;" id="hoten" name="hoten" type="text"/>
                        </p>
                        <p>
                        <label style="width: 30%; padding-left: 5%;">Địa chỉ:</label>
                        <input style="width: 60%;" name="diachi" type="text"/>
                        </p>
                        <p>
                        <label style="width: 30%; padding-left: 5%;">Số điện thoại:</label>
                        <input style="width: 60%;" name="sdt" type="text"/>
                        </p>
                        <p>
                        <label style="width: 30%; padding-left: 5%;">Email:</label>
                        <input style="width: 60%;" name="email" type="text"/>
                        </p>
                        <p style="padding-left: 40%;">
                        <input style="width: 40%; text-align: center;" name="gui" class="xacnhan" type="submit" value="Xác nhận" />
                        </p>
                        <p class="batbuoc" style="color: red; font-size: 11px;display:none;">
                        Tất cả các trường đều bắt buộc
                        </p>
                        </form>
                        <?php
                            } else 
                            {
                            	?>
                        <p style="float: center;">
                        <input style="width: 100%; text-align: center;" name="gui" class="xacnhan" type="submit" value="Sử dụng thông tin tài khoản để giao dịch. Tiếp tục?" />
                        </p>
                        <?php
                            }
                            ?>
                        </div>
                        <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                        </div>
                        </div>
                        </div>
                        </div>
                        </form>  
                    </div>
                    <div class="rightsidebar span_3_of_1">
                        <h2>DANH SÁCH</h2>
                        <ul class="side-w3ls">
                            <?php
                                $sql_loai=mysqli_query($con,'select * from loai');
                                while($r_loai=mysqli_fetch_assoc($sql_loai)){
                                echo '<li><a kind="'.$r_loai['l_name'].'" href="product.php?p_loai='.$r_loai['p_loai'].'">'.$r_loai['l_name'].'</a></li>';
                                }
                                ?>
                        </ul>
                        <div class="subscribe">
                            <h2>THEO DÕI</h2>
                            <p>Nhập email của bạn để nhận được những thông tin mới nhất từ chúng tôi!</p>
                            <div class="signup">
                                <form>
                                    <input type="text" value="E-mail address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'E-mail address';"><input type="submit" value="Sign up">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>