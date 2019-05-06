$(document).ready(function () {
    var offsetWhitePart = $('.white-part').offset().top + 200;
    console.log(offsetWhitePart);
    $(window).scroll(function (event) {
        //lấy ra vị trí thanh cuộn chuột trong thẻ html<chỉ sử dụng cho những phần tử có thanh cuộn>
        var distance = $('html').scrollTop();

        if (distance >= offsetWhitePart) {
            $('.fixed-nav').addClass('navbar-fixed-top');
        } else {
            $('.fixed-nav').removeClass('navbar-fixed-top');
        }
    });

});