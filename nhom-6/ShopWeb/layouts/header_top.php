<link rel="stylesheet" type="text/css" media="all" href="public/home/css/style.css">
<link rel="stylesheet" type="text/css" media="all" href="public/home/css/slider.css">

<script type="text/javascript" src="public/home/js/jquery-1.7.2.min.js"></script> 
<script type="text/javascript" src="public/home/js/move-top.js"></script>
<script type="text/javascript" src="public/home/js/easing.js"></script>
<script type="text/javascript" src="public/home/js/startstop-slider.js"></script>

<div class="header-top">
	<div class="logo" title="Trang chủ Home Shoppe">
		<a href="/ShopWeb"><img src="/ShopWeb/public/home/images/logo.png"></a>
	</div>

	<div class="cart">
		
	</div>

	<script type="text/javascript">
		function DropDown(el) {
			his.dd = el;
			this.initEvents();
		}

		DropDown.prototype = {
			initEvents : function() {
				var obj = this;
				obj.dd.on('click', function(event){
					$(this).toggleClass('active');
					event.stopPropagation();
				});	
			}
		}

		$(function() {
			var dd = new DropDown( $('#dd') );
			$(document).click(function() {
				// all dropdowns
				$('.wrapper-dropdown-2').removeClass('active');
			});
		});		
	</script>

	<div class="clear"></div>
</div>