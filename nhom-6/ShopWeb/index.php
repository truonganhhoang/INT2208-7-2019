<?php
    session_start();
    include('function/sql.php');
    ?>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <title>Home Shoppe</title>
        <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    </head>
    <body>
        <div class="wrap">
            <div class="header">
                <?php
                    require_once __DIR__. "/layouts/header_top.php";
                    require_once __DIR__. "/layouts/header_bottom.php";
                    require_once __DIR__. "/layouts/header_slide.php";
                    ?>
            </div>
            <div class="main">
                <div class="content">
                    <div class="content_top">
                        <div class="heading">
                            <h3 title="Sản phẩm mới ra mắt">SẢN PHẨM MỚI</h3>
                        </div>
                        <div class="see">
                            <p><a href="product.php?p_loai=new">Xem tất cả</a></p>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="section group">
                        <?php
                            $sql_sp=mysqli_query($con,'select * from product where p_group="new"');
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
        </div>
        <div class="footer">
            <?php require_once __DIR__. "/layouts/footer.php"; ?>
        </div>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    </body>
</html>