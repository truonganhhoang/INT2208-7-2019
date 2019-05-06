<?php
    session_start();
    include_once __DIR__. "/function/sql.php";
    ?>
<!DOCTYPE HTML>
<head>
    <meta http-equiv="content-type" content="text/html" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Quản lý sản phẩm</title>
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
        <?php
            if(isset($_GET['p_loai']))
            {
                if($_GET['p_loai']=="new" OR $_GET['p_loai']=="hot")
                {
                    if($_GET['p_loai'] == "new")
                    {
                        $title="SẢN PHẨM MỚI";
                    } else $title = "MUA NHIỀU NHẤT";
                    $sql_sp=mysqli_query($con,'select * from product where p_group="'.$_GET['p_loai'].'"');
                }
                else
                {
                    $sql_sp=mysqli_query($con,'select * from loai where p_loai="'.$_GET['p_loai'].'"');
                    $r_sp=mysqli_fetch_assoc($sql_sp);
                    $title = $r_sp['l_name'];
            
                    $sql_sp=mysqli_query($con,'select * from product WHERE p_loai="'.$_GET['p_loai'].'"');
                }
            }
            ?>
        <div class="main">
            <div class="content">
                <div class="content_top">
                    <div class="heading">
                        <h3 title="">
                            <?php
                                echo $title;
                                ?>
                        </h3>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="section group">
                    <?php
                        if(isset($_GET['p_loai']))
                        {
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
                                if($i%4==0) echo '</div><div class="section group">';
                            }
                        
                        }
                        ?>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <?php require_once __DIR__. "/layouts/footer.php"; ?>
    </div>
</body>
</html>