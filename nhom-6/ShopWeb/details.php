<?php
    session_start();
    include_once __DIR__. "/function/sql.php";
    if(!isset($_SESSION['cart_num'])) $_SESSION['cart_num'] =  0;
    if(!isset($_SESSION['cart_pace'])) $_SESSION['cart_pace'] =  0;

    if(isset($_GET['action']) && $_GET['action']=="add"){ 
          
        $id=intval($_GET['p_id']); 
          
        if(isset($_SESSION['cart'][$id])){ 
              
            $_SESSION['cart'][$id]['quantity']++; 
              
        }else{ 
            $sql="SELECT * FROM product
                WHERE p_id={$id}"; 
            $query=mysqli_query($con, $sql); 
            if(mysqli_num_rows($query)!=0){ 
                $row=mysqli_fetch_array($query);

                $_SESSION['cart_num'] ++;
                  
                $_SESSION['cart'][$row['p_id']]=array( 
                        "quantity" => 1, 
                        "price" => $row['p_gia'] 
                    );                 
            }else{          
                $message="This product id it's invalid!";      
            }      
        }
    }
?>

<!DOCTYPE HTML>
<head>
    <title>Home Shoppe</title>
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
    <script>
            $(function(){
                $('#products').slides({
                    preload: true,
                    preloadImage: 'img/loading.gif',
                    effect: 'slide, fade',
                    crossfade: true,
                    slideSpeed: 350,
                    fadeSpeed: 500,
                    generateNextPrev: true,
                    generatePagination: false
                });
            });
    </script>
</head>
<body>
    <div class="wrap">
        <div class="header">
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

        <?php
            $sql_loai = mysqli_query($con,'select * from loai join product on product.p_loai=loai.p_loai where product.p_id="'.$_GET['p_id'].'"');
            $row = mysqli_fetch_assoc($sql_loai);
        ?>

        <div class="main">
            <div class="content">
                <div class="content_top">
                    <div>
                        <p><a href="<?php echo $domain; ?>">Trang chủ</a> >> <a href="#"><?php echo $row['l_name']; ?></a></p>
                    </div>

                    <div class="clear"></div>
                </div>

                <div class="section group">
                    <div class="cont-desc span_1_of_2">
                        <div class="product-details">             
                            <div class="grid images_3_of_2">
                                <div id="container">
                                    <div id="products_example">
                                        <div id="products">
                                            <div class="slides_container">
                                                <?php
                                                    if(isset($_GET["p_id"]))
                                                    {
                                                        $sql_sp=mysqli_query($con,'select * from product p join loai l on p.p_loai=l.p_loai where p.p_id="'.$_GET['p_id'].'"');
                                                        $r_sp=mysqli_fetch_assoc($sql_sp);
                                                        echo '<img src="public/images/'.$r_sp['p_img'].'"/>';
                                                    }
                                                ?>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <form method="post">
                            <div class="desc span_3_of_2">
                                <h2>SẢN PHẨM: <?php echo $row['p_name']; ?> </h2>
                                <p>Siêu giá trị, cấu hình siêu khủng.</p>                    
                                <div class="price">
                                    <p>Giá bán: <span><?php echo number_format($row['p_gia'],0,'','.'). 'đ'; ?></span></p>
                                </div>
                                    <div class="available">
                                    <p>Lựa chọn cấu hình :</p>
                                    <ul>
                                        <li>Màu sắc:
                                            <select name="seleccolor">
                                            <option>Bạc</option>
                                            <option>Đen</option>
                                            <option>Nâu xám</option>
                                            <option>Xanh</option>
                                        </select></li>
                                    </ul>
                                </div>
                                

                                <div class="share-desc">
                                    <div class="share">
                                        <p>Chia sẻ :</p>
                                        <ul>
                                            <li><a href="#"><img src="public/home/images/facebook.png" alt="" /></a></li>
                                            <li><a href="#"><img src="public/home/images/twitter.png" alt="" /></a></li>
                                        </ul>
                                    </div>
                                    <div class="button"><span><a href="details.php?action=add&p_id=<?php echo $r_sp['p_id'] ?>">Thêm vào giỏ hàng</a></span></div>

                                    <div class="clear"></div>
                                </div>
                                
                               

                                <div class="wish-list">
                                    <ul>
                                        <li class="wish"><a href="#">Thêm vào danh sách ưa thích</a></li>
                                        <li class="compare"><a href="#">So sánh</a></li>
                                    </ul>
                                </div>
                            </div>
                            </form>
                            <div class="clear"></div>
                        </div>

                        <div class="product_desc">  
                            <div id="horizontalTab">
                                <ul class="resp-tabs-list">
                                    <li>Cấu hình</li>
                                    <li>Mô tả</li>
                                    <li>Đánh giá</li>
                                    <div class="clear"></div>
                                </ul>

                                <div class="resp-tabs-container">
                                    <div class="product-desc">
                                        <?php
                                            if(isset($_GET['p_id']))
                                            {
                                                $sql_sp=mysqli_query($con,'select * from product p join loai l on p.p_loai=l.p_loai where p.p_id="'.$_GET['p_id'].'"');
                                                $r_sp=mysqli_fetch_assoc($sql_sp);

                                                echo'
                                                    <div class="your-review">
                                                        <p class="nd_tt"><b>THÔNG TIN CHI TIẾT SẢN PHẨM</b></p>
                                                        <p class="nd_tt"><b>Tên máy : '.$r_sp['p_name'].'</b></p>
                                                        <p class="nd_ct">
                                                            <b>Cấu hình</b> : '.$r_sp['p_cauhinh'].'<br />
                                                            <b>Bộ nhớ</b> : '.$r_sp['p_ram'].'<br />
                                                            <b>HDD</b> : '.$r_sp['p_hdd'].'<br />
                                                            <b>VAG</b> : '.$r_sp['p_vga'].'<br />
                                                            <b>Nhà sản xuất</b> : '.$r_sp['l_name'].'<br />
                                                            <b>Giá</b> : '.number_format($r_sp['p_gia'],0,'','.').' đ
                                                        </p>
                                                    </div>
                                                ';
                                            }       
                                        ?>                   
                                    </div>

                                    <div class="review">
                                        <p>Mô tả</p>
                                    </div>

                                    <div class="product-tags">
                                        <h4>Đánh giá <a href="#"><?php echo $row['p_name']; ?></a></h4>
                                        <ul>
                                            <li>Giá :<a href="#"><img src="images/price-rating.png" alt="" /></a></li>
                                            <li>Value :<a href="#"><img src="images/value-rating.png" alt="" /></a></li>
                                            <li>Quality :<a href="#"><img src="images/quality-rating.png" alt="" /></a></li>
                                        </ul>
                                        
                                        <p></p>

                                        <div class="your-review">
                                            <h3>Viết nhận xét của bạn?</h3>
                                            <form>
                                                <div>
                                                    <span><label>Tên của bạn<span class="red">*</span></label></span>
                                                    <?php
                                                        $name = "";
                                                        if(isset($_SESSION['us'])) $name = $_SESSION['us'];
                                                    ?>
                                                    <span><input type="text" value="<?php echo($name); ?>"></span>
                                                </div>

                                                <div>
                                                    <span><label>Tóm tắt đánh giá<span class="red">*</span></label></span>
                                                    <span><input type="text" value=""></span>
                                                </div>    

                                                <div>
                                                    <span><label>Đánh giá chi tiết<span class="red">*</span></label></span>
                                                    <span><textarea> </textarea></span>
                                                </div>

                                                <div>
                                                    <span><input type="submit" value="SUBMIT REVIEW"></span>
                                                </div>
                                            </form>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                        </div>

                        <script type="text/javascript">
                            $(document).ready(function () {
                                $('#horizontalTab').easyResponsiveTabs({
                                    type: 'default', //Types: default, vertical, accordion           
                                    width: 'auto', //auto or any width like 600px
                                    fit: true   // 100% fit in a container
                                });
                            });
                        </script>
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

        <div class="content">
            <div class="content_bottom">
                    <div class="heading">
                        <h3 title="Sản phẩm mới ra mắt">MUA NHIỀU NHẤT</h3>
                    </div>
                    
                    <div class="see">
                        <p><a href="product.php?p_loai=hot">Xem tất cả</a></p>
                    </div>

                    <div class="clear"></div>
                </div>

                <div class="section group">
                    <?php
                    $sql_sp=mysqli_query($con,'select * from product where p_group="hot"');
                    $i=0;
                    while($r_sp=mysqli_fetch_assoc($sql_sp)){
                        $i++;
                        echo'<div class="grid_1_of_4 images_1_of_4">
                            <img src="public/images/'.$r_sp['p_img'].'"/>

                            <h2>'.$r_sp['p_name'].'</h2>
                                <div class="price-details"><div class="price-number"><p><span class="rupees">'.number_format($r_sp['p_gia'],0,'','.').'đ</span></p></div><div class="add-cart"><h4><a href="details.php?p_id='.$r_sp['p_id'].'">Chi tiết</a></h4></div>  
                                <div class="clear"></div>
                                </div>
                                </div>
                        ';
                        if($i%4==0) break;
                        }
                    ?>
                </div>
        </div>

    </div>

    <div class="footer">
        <?php require_once __DIR__. "/layouts/footer.php"; ?>
    </div>

    <a href="#" id="toTop"><span id="toTopHover"> </span></a>
</body>
</html>


