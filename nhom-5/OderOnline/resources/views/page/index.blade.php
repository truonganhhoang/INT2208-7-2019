@extends('page.master')
@section('title')
    Trang chủ
@stop
@section('sl')
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            @foreach($slide as $sl)
                @if($sl->id == 1)
                    <li data-target="#myCarousel" data-slide-to="{{$sl->id}}" class="active"></li>
                @else
                    <li data-target="#myCarousel" data-slide-to="{{$sl->id}}"></li>
                @endif
            @endforeach


        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            @foreach($slide as $sl)
                @if($sl->id == 1)
                    <div class="item active">
                        <img src="img/slide/{{$sl->image}}@yield('slide')" alt="New York" width="1200" height="300">
                        <div class="carousel-caption">
                            <h3>{{$sl->tenbanh}}</h3>
                            <p>{{$sl->dacdiem}}</p>
                        </div>
                    </div>
                @else
                    <div class="item">
                        <img src="img/slide/{{$sl->image}}" alt="New York" width="1200" height="300">
                        <div class="carousel-caption">
                            <h3>{{$sl->tenbanh}}</h3>
                            <p>{{$sl->dacdiem}}</p>
                        </div>
                    </div>
                @endif
            @endforeach

            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

        </div>
    </div>
@stop
@section('content')
    <div class="container">

        <div class="row">
            <div>
                <h3>Sản phẩm mới</h3>
                <p>Có {{count($product)}} sản phẩm</p>
            </div>
            @foreach($product as $pro)
                @if(asset($pro))
                    <div class="col-sm-3 product-price">
                        <div class="single-item">
                            <div class="single-item-header" style="margin-top: 20px">
                                <a href="{{route('details',[$pro->id_type,$pro->id])}}"><img  class="img-fluid newproduct" src="img/product/{{$pro->image}}" alt="{{$pro->name}}"></a>
                            </div>
                            <div class="body">
                                <p class="single-item-title">{{$pro->name}}</p>

                                @if($pro->promotion_price != 0)
                                    <span style="text-decoration: line-through">{{number_format($pro->unit_price)}} đồng</span>

                                    <span  style="color: orange;margin-bottom: 10px">{{number_format($pro->promotion_price)}} đồng</span>

                                @else
                                    <p class="price">
                                        <span class="form-inline">{{number_format($pro->unit_price)}} đồng</span>
                                    </p>
                                @endif

                            </div>
                            <div class="caption" style="margin-top: 10px">
                                <a class="shopping shop"  href="{{route('cart',$pro->id)}}"><i class="fas fa-cart-plus"></i></a>
                                <a class="shopping pay"   href="{{route('details',[$pro->id_type,$pro->id])}}">Details<i class="fa fa-chevron-right"></i></a>
                                @if(\Illuminate\Support\Facades\Auth::id() == 1)
                                    <a class="dropItem" href="#"><i class="fas fa-trash fa-lg"></i></a>
                                    <a href="{{route('update_product',$pro->id)}}"><i class="fas fa-cog fa-lg"></i></a>
                                @endif
                            </div>
                        </div>
                    </div>
                @endif
            @endforeach



        </div>
        <div class="row">
            <div class="col-sm-6">
                {{$product->render()}}
            </div>
        </div>
        <div class="row">
            <h3>Sản phẩm khuyến mãi</h3>
            <p>Có {{count($spkm)}} sản phẩm</p>

            @foreach($spkm as $sp)
                <div class="col-sm-3 products-sale" style="margin-bottom: 20px">
                    <div class="single-item">
                        <div class="single-item-header">
                            <a href="{{route('details',[$sp->id_type,$sp->id])}}"><img  class="img-fluid newproduct" src="img/product/{{$sp->image}}" alt=""></a>
                        </div>
                        <div class="body">
                            <p class="single-item-title">{{$sp->name}}</p>
                            @if($sp->promotion_price != 0)
                                <span style="text-decoration: line-through">{{number_format($sp->unit_price)}} đồng</span>
                                <span  style="color: orange;margin-bottom: 10px">{{number_format($sp->promotion_price)}} đồng</span>

                            @else
                                <p class="price ">
                                    <span class="form-inline">{{number_format($sp->unit_price)}} đồng</span>
                                </p>
                            @endif
                        </div>
                        <div class="caption" style="margin-top: 10px">
                            <a class="shopping shop"  href="{{route('cart',$sp->id)}}"><i class="fas fa-cart-plus"></i></a>

                            <a class="shopping pay"   href="{{route('details',[$sp->id_type,$sp->id])}}">Details<i class="fa fa-chevron-right"></i></a>
                            @if(\Illuminate\Support\Facades\Auth::id() == 1)
                                <a class="dropItemKM" href="#"><i class="fas fa-trash fa-lg"></i></a>
                                <a href="{{route('update_product',$sp->id)}}"><i class="fas fa-cog fa-lg"></i></a>

                            @endif
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        <div class="row">
            <div class="col-sm-6">
                {{$spkm->render()}}
            </div>
        </div>
    </div>


@stop

@section('script')
    <script>
        @if(session('empty'))
        alert('Mặt hàng này hiện chưa có, vui lòng quay lại sau');
        @endif
        @if(session('sp'))
        alert('Hiện tại chưa có sản phẩm nào trong đơn hàng');
        @endif
        @if(session('notAdmin'))
        alert('Trang này chỉ dùng cho Admin');
        @endif
        @if(session('searchEmpty'))
        alert('Hiện tại chưa có sản phẩm này');
        @endif
        @if(session('verify'))
        alert('Vui lòng xác thực tài khoản để sử dụng dịch vụ này');
        @endif
        @if(session('order'))
        alert('Đặt hàng thành công!!!');
        @endif
        @if(session('key'))
        alert('Vui lòng nhập khóa để tìm kiếm');
        @endif
        @if(session('longText'))
        alert('Từ khóa quá dài vui lòng nhập lại');
        @endif
        $(document).ready(function(){

            $(".dropItemKM").click(function () {
                var data = confirm("Bạn có muốn xóa sản phẩm này không?");
                if(data === true){

                    $(this).attr("href", "{{route('dropsp',$sp->id)}}");
                }
                else{
                    $(this).attr("href", "#");
                }
            });
            $(".dropItem").click(function () {
                var data = confirm("Bạn có muốn xóa sản phẩm này không?");
                // var confirm = confirm("Bạn có muốn xóa sản phẩm này không?");
                if(data === true){
                    $(this).attr("href", "{{route('dropsp',$pro->id)}}");
                }
                else{
                    $(this).attr("href", "#");
                }
            });
            $(".shop").click(function () {

            });
            $(".shop").mouseenter(function(){
                $(this).css('background','orange');
            });
            $(".shop").mouseleave(function () {
                $(this).css('background','')
            });
            $(".pay").mouseenter(function(){

                $(this).css('background','#1b6d85');
            });
            $(".pay").mouseleave(function () {
                $(this).css('background','')
            });


        });
    </script>
@stop




