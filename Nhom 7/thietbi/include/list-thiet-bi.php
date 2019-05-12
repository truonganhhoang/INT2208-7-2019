<?php 
	$ChungLoaiID=$_GET['ChungLoaiID']; //lay tren url(link);
	$chungloai2=chungloai2($ChungLoaiID);
	$row_chungloai2=$chungloai2->fetch();

?>

<?php
	
	$thietbi=thietbi($ChungLoaiID);
	?>
<div class="col-md-12">
	<h2 class="bg-info"><?php echo  $row_chungloai2['TenLoai']?></h2>
    <hr />
    <div class="row">
     <?php
              		foreach($thietbi as $row)
					{
			  ?>
            <div class="col-md-12">  
                    <div class="row">
                    	<div class="col-md-2">
                        	<a href="?page=chi-tiet-thiet-bi&&MaThietBi=<?php echo $row['MaThietBi'] ?>&&ChungLoaiID=<?php echo $row['ChungLoaiID'] ?> "><img src="upload/<?php echo $row['AnhThietBi']?>" class="img-responsive" height="80px"/>
                            </a>
                    	</div>
                        <div class="col-md-10">
                            
                               <div class="col-12"><strong><a href="?page=chi-tiet-thiet-bi&&MaThietBi=<?php echo $row['MaThietBi'] ?>&&ChungLoaiID=<?php echo $row3['ChungLoaiID'] ?> "></a></strong></div>
                            <br />
                          <div class="col-12" style="color: red"><?php echo $row['TenThietBi']?></div>
                           <div class="col-12"><?php echo $row['NoiDung']?></div>
                        </div>
                    </div> <hr />
            </div>  
                 
      <?php
					}
				?>
         </div>
                
</div>
