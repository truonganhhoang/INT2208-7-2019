@extends('page.master')
@section('sl')

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
                                    <a class="shopping shop" style="background: white" href="{{route('cart',$sp->id)}}"><i class="fas fa-cart-plus"></i></a>

                                    <a class="shopping pay" style="background: white" href="{{route('details',[$sp->id_type,$sp->id])}}">Details<i class="fa fa-chevron-right"></i></a>

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
                        <a class="shopping shop" style="background: white" href="{{route('cart',$product[0]['id'])}}"><i class="fas fa-cart-plus"></i></a>
                        <a class="shopping" href="#" style="background: white; letter-spacing: 2px"><i class="fas fa-mouse-pointer"></i>Thanh toán</a>

                    </div>

                </div>
                <div class="col-sm-9" style="top: 45px; padding-top: 15px; padding-bottom: 15px; height: 100%;background-color: whitesmoke;">
                    <p style="display: inline">NHẬN XÉT</p>

                    @if (Auth::check())
                        <button class="btn btn-primary" style="float: right; " onclick="showHideForm()">Viết đánh giá</button>
                    @endif
                    <br>
                    <br>
                    @if (Auth::check())
                        <div id = "rateForm" style="display: none; height: 245px">
                            <br>
                            <form method="POST" action="{{route('postReview')}}" style="height: 90%; padding: 0px 15px 0px 15px; alignment: center; background: lightskyblue; box-shadow: 3px 5px #c3c3c3;">
                                @csrf
                                <div id = 'stars' style="padding-top: 10px" onmouseout="bright()" >
                                    @for ($i = 0; $i < 5; $i++)
                                        <i class="far fa-star" onmouseover="bright({{$i + 1}})" onclick="{
                                            document.getElementsByName('rate_input')[0].getAttributeNode('value').value = '{{$i + 1}}'
                                            }" style="display: inline-block; color : #b3b8b5"></i>
                                    @endfor
                                </div>
                                <input name="product_id" style="display: none" type="number" value="{{$auth_rate['product_id']}}">
                                <input name="customer_id" style="display: none" type="number" value="{{$auth_rate['customer_id']}}">
                                <input name="rate_input" style="display: none" type="number" value="{{$auth_rate['rate']}}">
                                <textarea class="form-control" rows="5" name="content_input" placeholder="Nhận xét của bạn" maxlength="1000">{{$auth_rate['content']}}</textarea>
                                <!-- todo: <p style="color: red; display: none">Không còn chỗ trống</p>-->
                                <div style="float: right; padding: 5px">
                                    <button class="btn btn-default" style=" float: right; " type="reset" onclick="showHideForm()">HỦY</button>
                                </div>
                                <div style="float: right; padding: 5px">
                                    <button class="btn btn-success" style="float: right;" type="submit">GỬI</button>
                                </div>
                            </form>
                            <br>
                        </div>
                    @endif
                    <br>
                    <div style="padding: 15px; alignment: center; background: white">
                        @foreach($rates as $rate)
                            <div>
                                <p style="display: inline">{{$rated_customer[$rate['customer_id']]}}: </p>
                                <span style="float: right;">
                                    @for ($i = 0; $i < 5; $i++)

                                        @if($i < $rate['rate'])
                                            <i class="fas fa-star" style="display: inline-block; color : #ffd655"></i>
                                        @else
                                            <i class="far fa-star" style="display: inline-block; color : #b3b8b5"></i>
                                        @endif
                                    @endfor
                                </span>
                                <p>{{$rate['content']}}</p>
                                <br>
                            </div>
                        @endforeach
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
                                <textarea name="comment" rows="10" cols="30"></textarea>
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
                $(this).css('background','white')
            });
            $(".pay").mouseenter(function(){

                $(this).css('background','#1b6d85');
            });
            $(".pay").mouseleave(function () {
                $(this).css('background','white')
            });
        });

        function showHideForm() {
            let x = document.getElementById("rateForm");
            if (x.style.display === "none") {
                document.getElementsByName("rate_input")[0].getAttributeNode("value").value = "{{$auth_rate['rate']}}";
                document.getElementsByName("content_input")[0].textContent = "{{$auth_rate['content']}}";
                bright();
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }

        function bright(num) {
            if (num == null)
                num = document.getElementsByName("rate_input")[0].getAttributeNode("value").value;
            let iArr = document.getElementById("stars").childNodes;
            for(let i=1; i <= 10; i += 2) {
                if(i < num*2 + 1) {
                    iArr[i].className = "fas fa-star";
                    iArr[i].style.color = "#ffd655";
                }else {
                    iArr[i].className = "far fa-star";
                    iArr[i].style.color = "#b3b8b5";
                }
            }
        }

    </script>
@stop
