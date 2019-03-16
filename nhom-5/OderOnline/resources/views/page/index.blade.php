@extends('page.master')

@section('content')
    <div class="container">

        <div>
            <h3>Sản phẩm mới</h3>
            <p>Có {{count($product)}} sản phẩm</p>
        </div>
        <div class="row">
            <div class="">
                @foreach($product as $pro)
                    <div class="col-sm-3">
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
                                    <p class="price">
                                        <span class="form-inline">{{number_format($pro->unit_price)}} đồng</span>
                                    </p>
                                @endif

                            </div>
                            <div class="caption" style="margin-top: 10px">
                                <a class="shopping shop"  href="{{route('cart',$pro->id)}}"><i class="fas fa-cart-plus"></i></a>

                                <a class="shopping pay"   href="#">Details<i class="fa fa-chevron-right"></i></a>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                @endforeach
                <div class="row">
                    {{$product->links()}}
                </div>
            </div>

        </div>
        <div class="row spkm">
            <h3>Sản phẩm khuyến mãi</h3>
            <p>Có {{count($spkm)}} sản phẩm</p>
            <div class="col-sm-12">
                @foreach($spkm as $sp)
                    <div class="col-sm-3" style="margin-bottom: 35px">
                        <div class="single-item">
                            <div class="single-item-header">
                                <a href="#"><img  class="img-fluid newproduct" src="img/product/{{$sp->image}}" alt=""></a>
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

                                <a class="shopping pay"   href="#">Details<i class="fa fa-chevron-right"></i></a>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                @endforeach
                <div class="row">
                    {{$spkm->links()}}
                </div>
            </div>
        </div>

    </div>
   <div class="jumbotron" style="background: #13547a  ">
        <div class="form-group">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3" style="color: whitesmoke">
                    <h2 class="text-center" style="letter-spacing: 5px">Contact</h2>
                    <div>
                        <p style="font-size: 11px;color: whitesmoke;"><i class="fas fa-sms" style="margin-right: 3px"></i>Phone:0947781266</p>
                        <p style="font-size: 11px;color: whitesmoke"><i class="fas fa-envelope" style="margin-right: 3px"></i>Email:checkpassnch@gmail.com</p>
                    </div>
                    <form>
                        <input class="col-sm-6 form-control" type="text" placeholder="Name" name="name" style="margin-bottom: 10px">
                        <input class="col-sm-6 form-control" type="email" placeholder="Email" name="email" style="margin-bottom: 10px">
                        <input class="col-sm-6 form-control" type="text" placeholder="" name="text" style="height: 100px !important;margin-bottom: 10px">
                        <input type="submit" class="btn btn-primary" name="submit" value="send" >

                    </form>
                </div>
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




