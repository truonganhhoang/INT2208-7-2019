<div class="header_bottom">
	<div class="menu">
		<ul>
			<li class="active"><a href="/ShopWeb" title="Trang chủ Home Shoppe">Trang chủ</a></li>
			<li><a href="#">Thông tin</a></li>
			<li><a href="#">Tin tức</a></li>
			<li><a href="#">Khuyến mại</a></li>
			<div class="clear"></div>
		</ul>
	</div>

	<div class="search_box">
		<form action="search.php">
			<input type="text" type="submit" name="value" value="Tìm kiếm" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Tìm kiếm';}"><input type="submit" value="">
		</form>
	</div>

	<div class="account_desc">
		<?php
			if(isset($_SESSION['us']) && $_SESSION['us'] != NULL)
			{?>
				<ul>
					<li><a title="Tài khoản của tôi" href="/ShopWeb/account/myaccount/"><?php echo $_SESSION['us']; ?></a></li>
					<li><a href="/ShopWeb/account/signout">Đăng xuất</a></li>
				</ul>
			<?php } 
			else{
			?>
				<ul>
					<li>
						<a href="/ShopWeb/account/signin/">Đăng nhập
						</a>
					</li>
				</ul>
				
			<?php } 
		?>
	</div>

	<div class="clear"></div>
</div>