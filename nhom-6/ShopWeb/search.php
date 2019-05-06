<?php
    session_start();
    include_once __DIR__. "/function/sql.php";
    ?>
<!DOCTYPE HTML>
<head>
    <meta http-equiv="content-type" content="text/html" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Home Shoppe</title>
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
            if(isset($_GET['value']))
            {
                $title="Tìm kiếm với từ khóa '" . $_GET['value'] . "'";
                $sql_sp=mysqli_query($con,'select * from product where p_name LIKE "%'.$_GET['value'].'%"');
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
                        if(mysqli_num_rows($sql_sp) > 0)
                        {
                            $i=0;
                            while($r_sp=mysqli_fetch_assoc($sql_sp)){
                                $i++;
                                echo'<div class="grid_1_of_4 images_1_of_4">
                                    <img src="public/images/'.$r_sp['p_img'].'"/>
                        
                                    <h2>'.$r_sp['p_name'].'</h2>
                                        <div class="price-details"><div class="price-number"><p><span class="rupees">'.$r_sp['p_gia'].' vnđ</span></p></div><div class="add-cart"><h4><a href="details.php?p_id'.$r_sp['p_id'].'">Chi tiết</a></h4></div>  
                                        <div class="clear"></div>
                                        </div>
                                        </div>
                                ';
                                if($i%4==0) echo '</div><div class="section group">';
                            }
                        }
                        else
                        {
                            echo "Không tìm thấy sản phẩm ứng với từ khóa bạn nhập!";
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