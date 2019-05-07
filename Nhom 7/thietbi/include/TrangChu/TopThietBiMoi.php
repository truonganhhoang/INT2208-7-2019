<ul id="ticker01" class="news_sticker">
            <?php
            	$Top10ThietBiMoi=Top10ThietBiMoi();
				foreach($Top10ThietBiMoi as $row)
				{
			?>
            <li><a href="?page=chi-tiet-thiet-bi&&ChungLoaiID=<?php echo $row['ChungLoaiID']?>&&MaThietBi=<?php echo $row['MaThietBi']?>"><img src="upload/<?php echo $row['AnhThietBi']?>" alt=""></a></li>
            
            <?php 
				}
			?>
</ul>