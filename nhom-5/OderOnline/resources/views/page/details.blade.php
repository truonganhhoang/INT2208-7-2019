@extends('page.master')
@section('title')
    Chi tiết sản phẩm
@stop
@section('content')
    <div class="container-fluid">
        <div class="row" style="margin-top: 5px;">
            <div class="col-sm-3" style="background-color: white">
                <ul class="list-group">
                    @foreach($type_product as $sp)
                        @if($sp->id != $product[0]['id'])
                            <li  class="list-group-item" style="background-color: whitesmoke;">

                                <div class="single-item-header">
                                    <a href="{{route('details',[$sp->id_type,$sp->id])}}"><img style="height: 80px;width: 80px"  class="img-circle" src="/img/product/{{$sp->image}}" alt=""></a>
                                </div>
                                <div class="body">
                                    <p class="single-item-title" style="color: #31b0d5 !important;letter-spacing: 2px;">{{$sp->name}}</p>
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

                                </div>


                            </li>
                        @endif
                    @endforeach
                    {{$type_product->links()}}
                </ul>
            </div>
            <div class="col-sm-9" style="background-color: whitesmoke;padding: 45px;">
                <div class="col-sm-4">
                    <div class="single-item-header">
                        <a href="#"><img style="height: 270px;width: 270px"  class="img-fluid" src="/img/product/{{$product[0]['image']}}" alt=""></a>
                    </div>
                </div>
                <div class="col-sm-8">
                    <p class="single-item-title" style="letter-spacing: 4px;color: #31b0d5">{{$product[0]['name']}}</p>
                    @if($sp->promotion_price != 0)
                        <span style="text-decoration: line-through">{{number_format($product[0]['unit_price'])}} đồng</span>
                        <span  style="color: orange;margin-bottom: 10px">{{number_format($product[0]['promotion_price'])}} đồng</span>

                    @else
                        <p class="price ">
                            <span class="form-inline">{{number_format($product[0]['unit_price'])}} đồng</span>
                        </p>
                    @endif
                    <div class="descreption blockquote">
                        {{$product[0]['description']}}
                    </div>
                    <div class="caption" style="margin-top: 30px">
                        <a class="shopping shop"  href="{{route('cart',$product[0]['id'])}}"><i class="fas fa-cart-plus"></i></a>
                        <a class="shopping" href="{{route('don_hang')}}" style="letter-spacing: 2px"><i class="fas fa-mouse-pointer"></i>Thanh toán</a>

                    </div>

                </div>

            </div>
            <div class="col-sm-9 bg2" style="background: linear-gradient(90deg, rgb(0, 62, 82) 50%, rgb(13, 109, 130) 50% , rgb(26, 156, 183) 100%); ">
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3" style="color: white">
                            <h2 class="text-center" style="letter-spacing: 5px">feedback</h2>
                            <div>
                                <p style="font-size: 11px;color: whitesmoke;"><i class="fas fa-sms" style="margin-right: 3px"></i>Phone:0947781266</p>
                                <p style="font-size: 11px;color: whitesmoke"><i class="fas fa-envelope" style="margin-right: 3px"></i>Email:checkpassnch@gmail.com</p>
                            </div>
                            <form method="post" action="{{route('test_email')}}">
                                @csrf
                                <input class="col-sm-6 form-control" type="text" placeholder="Name" name="name" style="margin-bottom: 10px">
                                <input class="col-sm-6 form-control" type="email" placeholder="Email" name="email" style="margin-bottom: 10px">
                                <textarea style="color: black !important;" name="comment" rows="10" cols="30"></textarea>
                                <input type="submit" class="btn btn-primary" name="submit" value="send" >

                            </form>
                        </div>
                    </div>
                </div>
            </div>



        </div>

    </div>
@stop
@section('script')
    <script>
        @if(session('success'))
        alert('Cảm ơn vì feedback từ bạn , chúng tối sẽ phản hồi sớm nhất');
        @endif
        @if(session('empty'))
        alert('Mặt hàng này hiện chưa có, vui lòng quay lại sau');
        @endif
        $(document).ready(function(){

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
