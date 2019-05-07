<?php
	include __DIR__. "/../function/sql.php";

    if(!isset($_SESSION['cart_num'])) $_SESSION['cart_num'] =  0;
    if(!isset($_SESSION['cart_pace'])) $_SESSION['cart_pace'] =  0;
?>

<link rel="stylesheet" type="text/css" media="all" href="public/home/css/style.css">
<link rel="stylesheet" type="text/css" media="all" href="public/home/css/slider.css">

<script type="text/javascript" src="public/home/js/jquery-1.7.2.min.js"></script> 
<script type="text/javascript" src="public/home/js/move-top.js"></script>
<script type="text/javascript" src="public/home/js/easing.js"></script>
<script type="text/javascript" src="public/home/js/startstop-slider.js"></script>

<div class="header_top">
                <div class="logo" title="Trang chủ Home Shoppe">
                    <a href="<?php echo $domain; ?>"><img src="public/home/images/logo.png"></a>
                </div>

                <div class="cart">
                    <p>Chào mừng đến với Home Shoppe. 
                        <span> Giỏ hàng:</span>
                        <div id="dd" class="wrapper-dropdown-2"> <?php echo $_SESSION['cart_num'] . " hóa đơn"; ?>
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
                                        <li><a  href="/ShopWeb/orders.php">Thanh toán</a></li>
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