<?php
	$chungloai=chungloai();
	foreach($chungloai as $row)
	{
		
		
?>
<div class="col-md-12">
	<h2 class="bg-primary"><?php echo $row['TenLoai']?></h2>
    <hr />
    <div class="row">
     <?php
              		$thietbi_4moinhat=thietbi_4moinhat($row['ChungLoaiID']);
					foreach($thietbi_4moinhat as $row3)
					{
			  ?>
            <div class="col-md-12">  
                    <div class="row">
                    	<div class="col-md-2">
                        	<a href="?page=chi-tiet-thiet-bi&&MaThietBi=<?php echo $row3['MaThietBi'] ?>&&ChungLoaiID=<?php echo $row3['ChungLoaiID'] ?> "><img src="upload/<?php echo $row3['AnhThietBi']?>"  class="img-responsive" height="80px"/>
                            </a>
                    	</div>
                        <div class="col-md-10">
                            
                               <div class="col-12"><strong><a href="?page=chi-tiet-thiet-bi&&MaThietBi=<?php echo $row3['MaThietBi'] ?>&&ChungLoaiID=<?php echo $row3['ChungLoaiID'] ?> "></a></strong></div>
                            <br />
                            <div class="col-12" style="color: blue">Tên thiết bị: <?php echo $row3['TenThietBi']; ?></div>
                            <div class="col-12" style="color: blue">Đơn Giá: <?php echo $row3['DonGia']; ?></div>
                            <div class="col-12" style="color: blue">Nhà sản xuất: <?php echo $row3['NhaSX']; ?></div>
                           <div class="col-12">Thông số kỹ thuật: <?php echo $row3['NoiDung']?></div>
                        </div>
                    </div> <hr />
            </div>  
                 
      <?php
					}
				?>
         </div>
                
</div>
  <?php
		
	}
 ?>

