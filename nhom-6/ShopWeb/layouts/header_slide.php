<div class="header_slide">
	<div class="header_bottom_left">
		<div class="categories">
			<ul>
				<h3>DANH SÁCH</h3>
				<?php
                    $sql_loai=mysqli_query($con,'select * from loai');
                    while($r_loai=mysqli_fetch_assoc($sql_loai)){
                        echo '<li><a kind="'.$r_loai['l_name'].'" href="product.php?p_loai='.$r_loai['p_loai'].'">'.$r_loai['l_name'].'</a></li>';
                    }
                ?>
			</ul>
		</div>
	</div>
	
	<div  class="header_bottom_right">
		<div class="slider">
			<div id="slider">
				<div id="mover">
					<div id="slide-1" class="slide">
						<div class="slider-img">
							<a href="#"><img src="public/images/slide1.jpg"></a>
						</div>
						
						<div class="slider-text">
							<h1>Chương trình<br><span>KHUYẾN MẠI</span></h1>
							<h2>Giảm giá lên đến 30%</h2>
							<div class="features_list">
								<h4>Siêu khuyến mại chào hè 2019</h4>	
							</div>
							<a href="#" class="button">Xem ngay</a>
						</div>

						<div class="clear"></div>
					</div>
					
					<div class="slide">
						<div class="slider-text">
							<h1>Chương trình<br><span>KHUYẾN MÃI</span></h1>
							<h2>Giảm giá lên đến 30%</h2>
							<div class="features_list">
								<h4>Siêu khuyến mại chào hè 2019</h4>	
							</div>
							<a href="#" class="button">Xem ngay</a>
						</div>

						<div class="slider-img">
							<a href="#"><img src="public/images/slide2.jpg"></a>
						</div>

						<div class="clear"></div>
					</div>

					<div class="slide">
						<div class="slider-text">
							<h1>Chương trình<br><span>KHUYẾN MẠI</span></h1>
							<h2>Giảm giá lên đến 30%</h2>
							<div class="features_list">
								<h4>Siêu khuyến mại chào hè 2019</h4>	
							</div>
							<a href="#" class="button">Xem ngay</a>
						</div>

						<div class="slider-img">
							<a href="#"><img src="public/images/slide3.jpg"></a>
						</div>

						<div class="clear"></div>
					</div>
				</div>
			</div>
			
			<div class="clear"></div>
		</div>
	</div>

	<div class="clear"></div>
</div>