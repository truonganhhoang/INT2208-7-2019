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