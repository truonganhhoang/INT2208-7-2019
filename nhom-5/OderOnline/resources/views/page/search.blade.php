@extends('page.master')
@section('title')
    Tìm kiếm
@stop
@section('content')
    <div class="container" style="margin-bottom: 10%;margin-top: 3%">

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
                                <a href="{{route('details',[$pro->id_type,$pro->id])}}"><img  class="img-fluid newproduct" src="img/product/{{$pro->image}}" alt=""></a>
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
                                <a class="shopping shop"  href="{{route('cart',$pro->id)}}"><i class="fas fa-cart-plus"></i></a>

                                <a class="shopping pay"   href="{{route('details',[$pro->id_type,$pro->id])}}">Details<i class="fa fa-chevron-right"></i></a>
                                @if(\Illuminate\Support\Facades\Auth::id() == 1)
                                <!--<a href="{{route('dropsp',$pro->id)}}"><i class="fas fa-trash fa-lg"></i></a>-->
                                    <a class="dropItemKM" href="#"><i class="fas fa-trash fa-lg"></i></a>
                                   <a href="{{route('update_product',$pro->id)}}"><i class="fas fa-cog fa-lg"></i></a>
                                @endif
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
        @if(session('empty'))
        alert('Mặt hàng này hiện chưa có, vui lòng quay lại sau');
        @endif
        $(document).ready(function(){

            $(".dropItemKM").click(function () {
                var data = confirm("Bạn có muốn xóa sản phẩm này không?");
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
