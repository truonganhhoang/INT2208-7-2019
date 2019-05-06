
<?php 

		$chungloai=chungloai();
		foreach($chungloai as $row)
		{
?>
			<li><a href="?page=list-thiet-bi&&ChungLoaiID=<?php echo $row['ChungLoaiID']?>"><?php echo $row['TenLoai']?></a></li>	
          	
          
          <?php }
		  ?>