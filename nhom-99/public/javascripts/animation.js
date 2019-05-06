
$(document).ready(function() {
	NProgress.start();
	NProgress.inc(0.2);
	NProgress.configure({ minimum: 0.06 });
	NProgress.configure({ easing: 'easeInOutBack', speed: 200 });
	NProgress.configure({ trickleSpeed: 200 });
	NProgress.done(true);
	
	// NProgress.set(0.4);
	// NProgress.set(0.5);
	// NProgress.set(0.6);
	// NProgress.set(0.7);
	// NProgress.set(0.8);
	
	var offsetWhitePart = $('.white-part').offset().top+200;
	$(window).scroll(function(event){
		//lấy ra vị trí thanh cuộn chuột trong thẻ html<chỉ sử dụng cho những phần tử có thanh cuộn>
		var distance = $('html').scrollTop();
		console.log(distance);
		if (distance >= offsetWhitePart) {
			$('.fixed-nav').addClass('navbar-fixed-top');
		}
		else
		{
			$('.fixed-nav').removeClass('navbar-fixed-top');
		}
	});
	
});