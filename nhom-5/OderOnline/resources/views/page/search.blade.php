@extends('page.master')
@section('content')
    <div class="container">
        @if(\Illuminate\Support\Facades\Auth::check())
            <div class="giohang dropdown">
                <span class="dropdown-toggle" data-toggle="dropdown"><a href="#"><i class="fas fa-cart-arrow-down" style="margin-right: 5px"></i> Giỏ hàng</a><span class="caret"></span></span>
                <ul class="dropdown-menu listProduct" style="background: linear-gradient(-180deg,#1d68a7,#999999);opacity: 0.9">


                </ul>
            </div>
        @endif
        <div>
            <h3>Sản phẩm tìm kiếm được</h3>
            <p>Có {{count($getS)}} sản phẩm</p>
        </div>
        <div class="row">
            <div class="col-sm-12">
                @foreach($getS as $pro)
                    <div class="col-sm-3" style="margin-bottom: 15px">
                        <div class="single-item">
                            <div class="single-item-header">
                                <a href="#"><img  class="img-fluid newproduct" src="img/product/{{$pro->image}}" alt=""></a>
                            </div>
                            <div class="body">
                                <p class="single-item-title">{{$pro->name}}</p>

                                @if($pro->promotion_price != 0)
                                    <span style="text-decoration: line-through">{{number_format($pro->unit_price)}} đồng</span>

                                    <span  style="color: orange;margin-bottom: 10px">{{number_format($pro->promotion_price)}} đồng</span>

                                @else
                                    <p class="price ">
                                        <span class="form-inline">{{number_format($pro->unit_price)}} đồng</span>
                                    </p>
                                @endif

                            </div>
                            <div class="caption" style="margin-top: 10px">
                                <a class="shopping shop"  href="#"><i class="fas fa-cart-plus"></i></a>

                                <a class="shopping pay"   href="#">Details<i class="fa fa-chevron-right"></i></a>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                @endforeach

            </div>

        </div>


    </div>
@stop
@section('script')
    <script>
        $(document).ready(function(){
            $(".shop").click(function () {

            });
            $(".shop").mouseenter(function(){
                $(this).css('background','orange');
            });
            $(".shop").mouseleave(function () {
                $(this).css('background','white')
            });
            $(".pay").mouseenter(function(){

                $(this).css('background','#1b6d85');
            });
            $(".pay").mouseleave(function () {
                $(this).css('background','white')
            });


        });
    </script>
@stop