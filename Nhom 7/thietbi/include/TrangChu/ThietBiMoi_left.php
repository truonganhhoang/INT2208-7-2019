 <div class="box-left box-menu">
            <?php
            	$Top5ThietBiMoi=Top5ThietBiMoi();
				foreach($Top5ThietBiMoi as $row)
				{
					?>
                    
                    	<a href="?page=chi-tiet-thiet-bi&&MaThietBi=<?php echo $row['MaThietBi'] ?>&&ChungLoaiID=<?php echo $row['ChungLoaiID'] ?> "><img src="upload/<?php echo $row['AnhThietBi'] ?>" height="100px" width="120px" /></a>
                    	 <div class="col-12" style="color: blue"><?php echo $row['TenThietBi']; ?></div>
                        <br /><hr />


                    
                    <?php
				}
			?>
</div>              