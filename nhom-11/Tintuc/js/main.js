// Loader
(function() {
    $(document).ready(function() {
        $(document).imagesLoaded(function() {
            // Page loader
            jQuery(".page-loader .loader").delay(800).fadeOut();
            jQuery(".page-loader").delay(1200).fadeOut(600);
        });
    });
})();

// Popups
(function(){
    var popups = $('.js-popups');

    popups.magnificPopup({
        type:'inline',
        midClick: true,
        fixedContentPos: false,
        closeMarkup: '<span class="popup-close-ic mfp-close"></span>',
        removalDelay: 300,
        mainClass: 'mfp-fade-top'
    });
})();

// Mobile menu
(function(){
    var mbMenu = $('.js-mb-menu');

    mbMenu.magnificPopup({
        mainClass: 'mfp-mb-menu mfp-fade',
        type:'inline',
        midClick: true,
        fixedContentPos: false,
        closeMarkup: '<span class="mb-menu-close-ic mfp-close"></span>',
        removalDelay: 300
    });
})();

// Left sticky bar
(function() {
    $(window).load(function() {
        var inner = $('.inner-wrapper');
        var leftStBar = $('.js-lsb');

        var waypoints = inner.waypoint({
            handler: function(dir) {
                if (dir === 'down') {
                    leftStBar.addClass('sticky');
                } else if (dir === 'up') {
                    leftStBar.removeClass('sticky');
                }
            }
        });
    });
})();

// Sticky header
(function(){
    var stHeader = $('.js-sticky-header');
    var content = $('.main-content');

    content.waypoint(function(direction) {
        if(direction==="down") {
            stHeader.addClass('visible');
        } else if(direction==="up") {
            stHeader.removeClass('visible');
        }
    });
})();

// Aside menu
(function(){
    var mbMenu = $('.js-asd-menu');

    mbMenu.magnificPopup({
        mainClass: 'mfp-asd-menu mfp-slide-left',
        type:'inline',
        midClick: true,
        closeMarkup: '<span class="aside-menu-close-ic mfp-close"></span>',
        removalDelay: 300
    });
})();

// Super fish menu
(function(){
    $(document).ready(function() {
        $('ul.sf-menu').superfish({
            delay: 300
        });
    });
})();

// Search block variant 1
(function(){
    var searchBtn = $('.js-hd-search');
    var searchBlock = $('.js-hd-search-block');

    searchBtn.on('click', function(e) {
        var el = $(this);
        var searchBlock = el.parent().find('.js-hd-search-block');

        e.preventDefault();
        searchBlock.fadeToggle(200);
    });

    $(document).on("click", function(event) {
        if( $(event.target).closest(searchBlock).length == 0 && $(event.target).closest(searchBtn).length == 0 ) {
            searchBlock.fadeOut(200);
        }
    });
})();

// // Search block variant 2
// (function(){
//     var searchBtn = $('.js-hd-search');

//     searchBtn.magnificPopup({
//         type:'inline',
//         midClick: true,
//         fixedContentPos: false
//     });
// })();


// Trending line slider
(function() {
    $(document).ready(function() {
        var slider = $('.tl-slider');

        slider.slick({
            fade: true,
            speed: 800,
            autoplay: true,
            appendArrows: $('.tl-slider-control'),
            prevArrow: '<span class="arr-left-dark-ic tls-prev"><i></i></span>',
            nextArrow: '<span class="arr-right-dark-ic tls-next"><i></i></span>'
        });
    });
})();

// Trending posts slider
(function() {
    $(document).ready(function() {
        var slider = $('.js-trend-pst-slider');
        var pagg;

        slider.each(function() {
            var el = $(this);
            pagg = el.parents('.trpst-block').find('.js-sbr-pagination');

            el.slick({
                fade: true,
                speed: 1000,
                dots: true,
                arrows: false,
                appendDots: pagg,
                dotsClass: 'sbr-dots',
                customPaging : function(slider, i) {
                    return '<span></span>';
                }
            });
        });
    });
})();

// Filters dropdown
(function(){
    var filterBtn = $('.js-fl-btn');

    filterBtn.each(function() {
        var el = $(this);
        var filterBlock = el.find('.js-fl-block');

        el.on('click', function(e) {
            e.preventDefault();
            filterBlock.fadeToggle(200);
        });

        $(document).on("click", function(event) {
            if( $(event.target).closest(filterBlock).length == 0 && $(event.target).closest(el).length == 0 ) {
                filterBlock.fadeOut(200);
            }
        });
    });
})();

// Main slider 1
(function() {
    $(document).ready(function() {
        var swiper = new Swiper('.js-main-slider-1', {
            // Optional parameters
            speed: 1000,
            loop: true,

            nextButton: '.nav-arrow.next',
            prevButton: '.nav-arrow.prev',
            pagination: '.slide-count',
            paginationType: 'fraction',
            paginationFractionRender: function(swiper, currentClassName, totalClassName) {
                return '<span class="' + currentClassName + '"></span>' +
                    ' of ' +
                    '<span class="' + totalClassName + '"></span>';
            }

        });
    });
})();

// Main slider 2
(function() {
    $(document).ready(function() {
        var mainSlider = $('.js-main-slider-2');
        var slideCount = $('.slide-count');
        var slideNumCurrent = slideCount.find('.current');
        var slideNumTotal = slideCount.find('.total');

        mainSlider.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
            var i = (currentSlide ? currentSlide : 0) + 1;
            slideNumCurrent.text(i);
            slideNumTotal.text(slick.slideCount);
        });

        mainSlider.slick({
            speed: 600,
            appendArrows: $('.ms-navs'),
            prevArrow: '<div class="prev"><i class="ms-prev"></div>',
            nextArrow: '<div class="next"><i class="ms-next"></div>',
        });
    });
})();

// Main slider 3
(function() {
    $(document).ready(function() {
        var mainSlider = $('.js-main-slider-3');
        var slideCount = $('.slide-count');
        var slideNumCurrent = slideCount.find('.current');
        var slideNumTotal = slideCount.find('.total');

        mainSlider.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
            var i = (currentSlide ? currentSlide : 0) + 1;
            slideNumCurrent.text(i);
            slideNumTotal.text(slick.slideCount);
        });

        mainSlider.slick({
            fade: true,
            speed: 1000,
            appendArrows: $('.ms-navs'),
            prevArrow: '<div class="prev"><i class="ms-prev"></div>',
            nextArrow: '<div class="next"><i class="ms-next"></div>',
        });
    });
})();

// Thumbs slider
(function() {
    $(document).ready(function() {
        var thumbs = $('.js-thumbs').find('.js-thumbs-img');

        var slider = new Swiper('.js-thumbs-slider', {
            noSwiping: false
        });

        thumbs.on('click', function(e) {
            var el = $(this);
            var i = el.index();

            slider.slideTo(i, 1000);
        });
    });
})();

// Video posts slider
(function() {
    $(document).ready(function() {
        var slider = $('.js-video-pst-slider');

        slider.owlCarousel({
            singleItem: true,
            autoPlay: 3000,
            stopOnHover: true,
            slideSpeed: 1500,
            transitionStyle: 'fade'
        });

    });
})();

// Simple posts slider
(function() {
    $(document).ready(function() {
        var slider = $('.js-pst-block');
        var controls;
        var prev;
        var next;

        slider.each(function() {
            var el = $(this);
            controls = el.parents('.spst-slider').find('.js-pst-navs');
            prev = controls.find('.pst-prev');
            next = controls.find('.pst-next');

            el.owlCarousel({
                items: el.data('items') ? el.data('items') : 3,
                slideSpeed: 1000,
                pagination: false,
                addClassActive: true,
                itemsDesktop: el.data('items') ? [1229,el.data('items')] : [1229,3],
                itemsDesktopSmall: el.data('items') === 1 ? 1 : [1077,2],
                itemsTablet: el.data('items') === 1 ? 1 : [767,2],
                itemsTabletSmall: [639,1],
                // itemsMobile: [479,1]
            });

            // Custom Navigation Events
            next.click(function(e) {
                e.preventDefault();
                el.trigger('owl.next');
            });
            prev.click(function(e) {
                e.preventDefault();
                el.trigger('owl.prev');
            });
        });
    });
})();

// Simple posts slider two
(function() {
    $(document).ready(function() {
        var slider = $('.js-pst-block-2');
        var slides = slider.data('slides');
        var controls;
        var prev;
        var next;

        slider.each(function() {
            var el = $(this);
            controls = el.parents('.pst-box').find('.js-pst-navs');

            el.slick({
                slidesToShow: slides ? slides : 3,
                appendArrows: controls,
                prevArrow: '<span><i class="fa fa-angle-left"></i></span>',
                nextArrow: '<span><i class="fa fa-angle-right"></i></span>',
                responsive: [{
                    breakpoint: 1229,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3,
                    }
                }, {
                    breakpoint: 1077,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2
                    }
                }, {
                    breakpoint: 639,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }]
            });
        });
    });
})();

// Simple posts slider with custom pagination
(function() {
    $(document).ready(function() {
        var slider = $('.js-csp-block');
        var pagg;

        slider.each(function() {
            var el = $(this);
            pagg = el.parents('.pst-block').find('.js-sbr-pagination');

            el.slick({
                fade: true,
                speed: 1000,
                dots: true,
                arrows: false,
                appendDots: pagg,
                dotsClass: 'sbr-dots',
                customPaging : function(slider, i) {
                    return '<span></span>';
                }
            });
        });
    });
})();

// Image post slider
(function() {
    $(document).ready(function() {
        var mainSlider = $('.js-img-slider');
        var customNavs = mainSlider.parent('.img-slider').find('.js-custom-navs');
        var slideCount = customNavs.find('.js-slide-count');
        var slideNumCurrent = slideCount.find('.js-current');
        var slideNumTotal = slideCount.find('.js-total');

        mainSlider.on('init reInit afterChange', function (event, slick, currentSlide, nextSlide) {
            var i = (currentSlide ? currentSlide : 0) + 1;
            slideNumCurrent.text(i);
            slideNumTotal.text(slick.slideCount);
        });

        mainSlider.slick({
            speed: 600,
            appendArrows: customNavs,
            prevArrow: '<div class="prev"><i class="fa fa-angle-left"></div>',
            nextArrow: '<div class="next"><i class="fa fa-angle-right"></div>'
        });
    });
})();

// Sidebar slider
(function() {
    $(document).ready(function() {
        var slider = $('.js-sbr-slider');
        var pagg;
        var nav;
        var prev;
        var next;

        slider.each(function() {
            var el = $(this);
            pagg = el.parents('.sbr-slider').find('.js-sbr-pagination');
            nav = el.parents('.sbr-slider').find('.js-sbr-navs');
            prev = nav.find('.sbr-prev');
            next = nav.find('.sbr-next');

            el.slick({
                fade: true,
                speed: 1000,
                dots: true,
                appendDots: pagg,
                appendArrows: nav,
                prevArrow: '<div class="prev"><i class="sbr-prev"></div>',
                nextArrow: '<div class="next"><i class="sbr-next"></div>',
                dotsClass: 'sbr-dots',
                customPaging : function(slider, i) {
                    return '<span></span>';
                }
            });
        });
    });
})();

// Sidebar sticky
(function(){
    var stickSb = $(".js-sidebar");

     $(document).ready(function() {
        $(document).imagesLoaded(function() {
            stickSb.each(function () {
                var el = $(this);

                el.stick_in_parent({
                    parent: '.section',
                    offset_top: $('.js-sticky-header') ? 65 : 0
                });
            });
        });
    });
})();

(function(){
    var filters = $('.js-tab-filter');
    var slider = $('.js-tab-slider');

    filters.on('click', 'a', function(e) {
        e.preventDefault();
        var el = $(this);

        if(!el.hasClass('active')) {
            filters.find('a').removeClass('active');
            el.addClass('active');

            // DEMO
            var slide = '<div>' +
                            '<article class="post post-tp-9">' +
                                '<figure>' +
                                    '<a href="">' +
                                        '<img src="../img/115x85/10.jpg" alt="" class="adaptive" height="85" width="115">' +
                                    '</a>' +
                                '</figure>' +
                                '<h3 class="title-6"><a href="">Vivamus auctor quam nec mauris commodo</a></h3>' +
                                '<div class="date-tp-2">october 2, 2015</div>' +
                            '</article>' +
                            '<article class="post post-tp-9">' +
                                '<figure>' +
                                    '<a href="">' +
                                        '<img src="../img/115x85/9.jpg" alt="" class="adaptive" height="85" width="115">' +
                                    '</a>' +
                                '</figure>' +
                                '<h3 class="title-6"><a href="">Duis eu arcu sit amet ante tristique</a></h3>' +
                                '<div class="date-tp-2">october 2, 2015</div>' +
                            '</article>' +
                            '<article class="post post-tp-9">' +
                                '<figure>' +
                                    '<a href="">' +
                                        '<img src="../img/115x85/11.jpg" alt="" class="adaptive" height="85" width="115">' +
                                    '</a>' +
                                '</figure>' +
                                '<h3 class="title-6"><a href="">Nam ut metus elementum pharetra diam sed</a></h3>' +
                                '<div class="date-tp-2">october 2, 2015</div>' +
                            '</article>' +
                        '</div>' +
                        '<div>' +
                            '<article class="post post-tp-9">' +
                                '<figure>' +
                                    '<a href="">' +
                                        '<img src="../img/115x85/11.jpg" alt="" class="adaptive" height="85" width="115">' +
                                    '</a>' +
                                '</figure>' +
                                '<h3 class="title-6"><a href="">Nam ut metus elementum pharetra diam sed</a></h3>' +
                                '<div class="date-tp-2">october 2, 2015</div>' +
                            '</article>' +
                            '<article class="post post-tp-9">' +
                                '<figure>' +
                                    '<a href="">' +
                                        '<img src="../img/115x85/10.jpg" alt="" class="adaptive" height="85" width="115">' +
                                    '</a>' +
                                '</figure>' +
                                '<h3 class="title-6"><a href="">Vivamus auctor quam nec mauris commodo</a></h3>' +
                                '<div class="date-tp-2">october 2, 2015</div>' +
                            '</article>' +
                            '<article class="post post-tp-9">' +
                                '<figure>' +
                                    '<a href="">' +
                                        '<img src="../img/115x85/9.jpg" alt="" class="adaptive" height="85" width="115">' +
                                    '</a>' +
                                '</figure>' +
                                '<h3 class="title-6"><a href="">Duis eu arcu sit amet ante tristique</a></h3>' +
                                '<div class="date-tp-2">october 2, 2015</div>' +
                            '</article>' +
                        '</div>';

            slider.slick('slickRemove', 0);
            slider.slick('slickAdd', slide);
        }
    });
})();

// Go top button
(function(){
    var butt = $('.js-go-top');
    butt.on('click', function(e) {
        e.preventDefault();
        var body = $("html, body");
        body.animate({
            scrollTop: 0
        }, 1500);
    });

    $('.main-content').waypoint(function(direction) {
        if(direction==="down") {
            butt.removeClass('fadeOutUp')
                .addClass('fadeInUp');
        } else if(direction==="up") {
            butt.removeClass('fadeInUp')
                .addClass('fadeOutUp');
        }
    });
})();

// More post animate
(function(){
    var moreBtn = $('.js-more-posts');
    var moreBtn2 = $('.js-more-posts-2');

    // DEMO
    var posts1 = '<article class="post post-tp-17 animated fadeIn">' +
                    '<figure>' +
                        '<a href="">' +
                            '<img src="../img/ltst-nws-img-3.jpg" height="156" width="223" class="adaptive">' +
                        '</a>' +
                    '</figure>' +
                    '<span class="category-tp-4">style</span>' +
                    '<h3 class="title-5"><a href="">Fusce ac orci sagittis mattis magnabeneath chalete banvela</a></h3>' +
                    '<div class="meta-tp-2">' +
                        '<div class="date"><span>october 2, 2015</span></div>' +
                        '<div class="category">' +
                            '<a href=""><i class="li_user"></i><span>admin</span></a>' +
                        '</div>' +
                    '</div>' +
                    '<p>Sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium dolore mque laudantium, totamrem aperiam, eaque ipsa quae ab illo invent</p>' +
                '</article>' +
                '<article class="post post-tp-17 animated fadeIn">' +
                    '<figure>' +
                        '<a href="">' +
                            '<img src="../img/ltst-nws-img-4.jpg" height="156" width="223" class="adaptive">' +
                        '</a>' +
                    '</figure>' +
                    '<span class="category-tp-4">style</span>' +
                    '<h3 class="title-5"><a href="">Explain to you how all this mistaken</a></h3>' +
                    '<div class="meta-tp-2">' +
                        '<div class="date"><span>october 2, 2015</span></div>' +
                        '<div class="category">' +
                            '<a href=""><i class="li_user"></i><span>admin</span></a>' +
                        '</div>' +
                    '</div>' +
                    '<p>Sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium dolore mque laudantium, totamrem aperiam, eaque ipsa quae ab illo invent</p>' +
                '</article>' +
                '<article class="post post-tp-17 animated fadeIn">' +
                    '<figure>' +
                        '<a href="">' +
                            '<img src="../img/ltst-nws-img-5.jpg" height="156" width="223" class="adaptive">' +
                        '</a>' +
                    '</figure>' +
                    '<span class="category-tp-4">style</span>' +
                    '<h3 class="title-5"><a href="">But I must explain to you how all this mistaken idea of denouncing pleasure</a></h3>' +
                    '<div class="meta-tp-2">' +
                        '<div class="date"><span>october 2, 2015</span></div>' +
                        '<div class="category">' +
                            '<a href=""><i class="li_user"></i><span>admin</span></a>' +
                        '</div>' +
                    '</div>' +
                    '<p>Sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium dolore mque laudantium, totamrem aperiam, eaque ipsa quae ab illo invent</p>' +
                '</article>' +
                '<article class="post post-tp-17 animated fadeIn">' +
                    '<figure>' +
                        '<a href="">' +
                            '<img src="../img/ltst-nws-img-6.jpg" height="156" width="223" class="adaptive">' +
                        '</a>' +
                    '</figure>' +
                    '<span class="category-tp-4">style</span>' +
                    '<h3 class="title-5"><a href="">But I must explain to you how all this mistaken idea of denouncing pleasure</a></h3>' +
                    '<div class="meta-tp-2">' +
                        '<div class="date"><span>october 2, 2015</span></div>' +
                        '<div class="category">' +
                            '<a href=""><i class="li_user"></i><span>admin</span></a>' +
                        '</div>' +
                    '</div>' +
                    '<p>Sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium dolore mque laudantium, totamrem aperiam, eaque ipsa quae ab illo invent</p>' +
                '</article>';

    var posts2 = '<article class="post post-tp-21">' +
                    '<figure>' +
                        '<a href="">' +
                            '<img src="../img/ltst-nws-img-sm-1.jpg" height="133" width="190" class="adaptive">' +
                        '</a>' +
                    '</figure>' +
                    '<h3 class="title-5"><a href="">Fusce ac orci sagittis mattis magnabeneath chalete banvela</a></h3>' +
                    '<div class="meta-tp-2">' +
                        '<div class="date"><span>october 2, 2015</span></div>' +
                        '<div class="category">' +
                            '<a href=""><i class="li_pen"></i><span>life style</span></a>' +
                        '</div>' +
                    '</div>' +
                    '<p>Sed ut perspiciatis unde omnis iste natus sit volupt atem accusantium dolore mque laudantium, totamrem</p>' +
                '</article>' +
                '<article class="post post-tp-21">' +
                    '<figure>' +
                        '<a href="">' +
                            '<img src="../img/ltst-nws-img-sm-2.jpg" height="133" width="190" class="adaptive">' +
                        '</a>' +
                    '</figure>' +
                    '<h3 class="title-5"><a href="">Not know how to pursue pleasure rationally</a></h3>' +
                    '<div class="meta-tp-2">' +
                        '<div class="date"><span>october 2, 2015</span></div>' +
                        '<div class="category">' +
                            '<a href=""><i class="li_pen"></i><span>life style</span></a>' +
                        '</div>' +
                    '</div>' +
                    '<p>Sed ut perspiciatis unde omnis iste natus sit volupt atem accusantium dolore mque laudantium, totamrem</p>' +
                '</article>' +
                '<article class="post post-tp-21">' +
                    '<figure>' +
                        '<a href="">' +
                            '<img src="../img/ltst-nws-img-sm-3.jpg" height="133" width="190" class="adaptive">' +
                        '</a>' +
                    '</figure>' +
                    '<h3 class="title-5"><a href="">Those who do not know how to pursue pleasure rationally</a></h3>' +
                    '<div class="meta-tp-2">' +
                        '<div class="date"><span>october 2, 2015</span></div>' +
                        '<div class="category">' +
                            '<a href=""><i class="li_pen"></i><span>life style</span></a>' +
                        '</div>' +
                    '</div>' +
                    '<p>Sed ut perspiciatis unde omnis iste natus sit volupt atem accusantium dolore mque laudantium, totamrem</p>' +
                '</article>' +
                '<article class="post post-tp-21">' +
                    '<figure>' +
                        '<a href="">' +
                            '<img src="../img/ltst-nws-img-sm-4.jpg" height="133" width="190" class="adaptive">' +
                        '</a>' +
                    '</figure>' +
                    '<h3 class="title-5"><a href="">Avoids pleasure itself because it is pleasure but because</a></h3>' +
                    '<div class="meta-tp-2">' +
                        '<div class="date"><span>october 2, 2015</span></div>' +
                        '<div class="category">' +
                            '<a href=""><i class="li_pen"></i><span>life style</span></a>' +
                        '</div>' +
                    '</div>' +
                    '<p>Sed ut perspiciatis unde omnis iste natus sit volupt atem accusantium dolore mque laudantium, totamrem</p>' +
                '</article>';

    var scrllTop;

    moreBtn.on('click', function(e) {
        e.preventDefault();

        var el = $(this);
        var moreBlc = el.parent().prev().find('.posts');

        scrllTop = $(window).scrollTop();
        $(window).scrollTop(scrllTop+50);

        moreBlc.append(posts1);
    });

    moreBtn2.on('click', function(e) {
        e.preventDefault();

        var el = $(this);
        var moreBlc = el.parent().prev().find('.posts');

        scrllTop = $(window).scrollTop();
        $(window).scrollTop(scrllTop+50);

        moreBlc.append(posts2);
    });
})();

// Google Maps
(function(){
    var maps = $('.js-map');

    maps.each(function() {
        var currentMap = $(this);
        var latlng = new google.maps.LatLng(currentMap.attr('data-longitude'), currentMap.attr('data-latitude'));
        var point = currentMap.attr('data-marker');
        var mapColor = currentMap.attr('data-map-color');
        var mapSaturation = currentMap.attr('data-map-saturation');
        var styles = [{
            stylers: [{
                hue: mapColor
            },
            {
                saturation: mapSaturation
            }]
        }];
        var myOptions = {
            zoom: 13,
            scrollwheel: false,
            center: latlng,
            mapTypeControl: false
        };
        var map = new google.maps.Map(currentMap[0], myOptions);

        var styledMap = new google.maps.StyledMapType(styles, {
            name: "Styled Map"
        });

        if(mapColor !== "") {
            map.mapTypes.set('map_style', styledMap);
            map.setMapTypeId('map_style');
        }

        google.maps.event.addListenerOnce(map, 'tilesloaded', function() {
            var markerImgLoad = new Image();
            markerImgLoad.src = point;
            $(markerImgLoad).load(function(){
                addMarker(map, point, latlng);
            });
        });

        $(window).resize(function() {
            map.setCenter(latlng);
        });
    });

    function addMarker(map, point, latlng) {
        var marker = new google.maps.Marker({
            map: map,
            icon: point,
            position: latlng,
            animation: google.maps.Animation.BOUNCE
        });
        setTimeout(function() {marker.setAnimation(null);}, 700);
    }
})();

// Accordions
(function() {

    var allPanels = $('.accordion > dd').hide();

    $('.accordion > dt > a').on('click', function(e) {
        e.preventDefault();

        var el = $(this);
        if(!el.hasClass('open')) {
            allPanels.slideUp().prev().removeClass('open').children().removeClass('open');
            $(this).addClass('open').parent().addClass('open').next().slideDown();
        }
    });

})();

// Tabs
(function() {
    $(".tab-item").not(":first").hide();
    $(".tabs-list .tab").on('click', function() {
        var el = $(this);
        if(!el.hasClass('active')) {
            $(".tabs .tab").removeClass("active").eq(el.index()).addClass("active");
            $(".tab-item").hide().eq(el.index()).fadeIn();
        }
    }).eq(0).addClass("active");
})();

// Gallery
(function(){
    var gallery = $('.js-gallery-link');

    gallery.magnificPopup({
        mainClass: 'mfp-fade',
        type:'image',
        gallery: {
            enabled: true
        }
    });
})();

// Range slider
$(function() {
    var range = $(".js-range");
    var amount = range.parents('.range-wrap').find('.js-range-amount');

    range.each(function() {
        var el = $(this);

        el.slider({
            range: true,
            min: 5,
            max: 100,
            values: [0, 70],
            slide: function(event, ui) {
                amount.text("$" + ui.values[0] + " - $" + ui.values[1]);
            }
        });

        amount.text("$" + range.slider("values", 0) + " - $" + range.slider("values", 1));
    });
});

// Custom select
$(function() {
    var select = $(".js-select");

    select.each(function() {
        var el = $(this);

        el.selectmenu({
            icons: { button: "fa fa-angle-down" }
        });
    });

    $(window).on('resize', function() {
        select.each(function() {
            var el = $(this);

            el.selectmenu( "refresh" );
        });
    });
});

// Quantity
$(function() {
    var quantity = $(".js-quantity");

    quantity.each(function() {
        var el = $(this);
        var minus = el.find('.minus');
        var num = el.find('.num');
        var plus = el.find('.plus');

        var i = num.text();

        plus.on('click', function() {
            i++;
            num.text(i);
        });

        minus.on('click', function() {
            i--;
            if (i>=1) {
                num.text(i)
            } else {
                i = 1;
            }
        });
    });
});

