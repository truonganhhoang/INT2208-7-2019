@extends('page.master')
@section('title')
    Đơn hàng
@stop
@section('content')
    <div class="container" style="margin-top: 5%;margin-bottom: 5%">
        <div class="col-sm-7" style="background-color: white;padding: 20px" >
            <div>
                <h3>Thông tin đơn hàng</h3>
            </div>
            <div class="col-sm-10">
                <form  action="{{route('post_don_hang')}}" method="post">
                    @csrf
                    @if($errors->has('name'))
                        <p  class="alert-danger">{{$errors->first('name')}}</p>
                    @endif
                    <span>Tên</span>
                    <input style="margin-bottom: 20px" class="form-control" placeholder="Họ Tên" name="name">
                    @if($errors->has('phone'))
                        <p  class="alert-danger">{{$errors->first('phone')}}</p>
                    @endif
                    <span>Số điện thoại</span>
                    <input style="margin-bottom: 20px" class="form-control" placeholder="Vui lòng nhập số điện thoại" name="phone">
                    @if($errors->has('address'))
                        <p  class="alert-danger">{{$errors->first('address')}}</p>
                    @endif
                    <span>Địa chỉ nhận hàng </span>
                    <input style="margin-bottom: 20px" class="form-control" placeholder="Vui lòng nhập địa chỉ của bạn" name="address">
                    @if($errors->has('thanhtoan'))
                        <p  class="alert-danger">{{$errors->first('thanhtoan')}}</p>
                    @endif
                    <span>Phương thức thanh toán </span>
                    <div class="radio">
                        <label><input type="radio" name="thanhtoan" value="Tiền mặt">Thanh toán khi nhận hàng</label>
                    </div>
                    <div class="radio">
                        <label><input type="radio" name="thanhtoan" value="ATM">Chuyển khoản</label>
                    </div>
                    @if($errors->has('note'))
                        <p  class="alert-danger">{{$errors->first('note')}}</p>
                    @endif
                    <span>Ghi chú</span>
                    <textarea name="note" rows="10" cols="30"></textarea>

                    <input  class="btn btn-primary" type="submit" value="Đặt hàng">
                </form>
            </div>

        </div>
        <div class="col-sm-4" style="background-color: white;margin-left: 20px">
            <div class="alert-info col-sm-12 ">
                <h3>Danh sách sản phẩm</h3>
            </div>

            <ul class="fa-ul col-sm-8" style="background: white;margin-top: 20px">

                @foreach($sp as $c)
                    <li class="row" style="margin-bottom: 20px">
                        <div class="col-sm-4">
                            <img src="/img/product/{{$c->img}}" style="height: 80px;width: 80px;">
                        </div>
                        <div class="col-sm-6" style="margin-left: 40px">
                            <div class="li-name">
                                <p style="font-size: 13px">{{$c->name}}</p>
                            </div>
                            <div class="li-price">
                                @if($c->amount > 1)
                                    @if($c->sale_price != 0)
                                        <p style="font-size: 11px;margin-top: -5px">{{$c->sale_price * $c->amount }} SL:{{$c->amount}}</p>

                                    @else
                                        <p style="font-size: 11px;margin-top: -5px">{{$c->unit_price *$c->amount}} SL:{{$c->amount}}</p>

                                    @endif
                                @else
                                    @if($c->sale_price != 0)
                                        <p style="font-size: 11px;margin-top: -5px">{{$c->sale_price  }}</p>

                                    @else
                                        <p style="font-size: 11px;margin-top: -5px">{{$c->unit_price }}</p>

                                    @endif
                                @endif

                            </div>
                        </div>
                        <div  style="position: absolute; left: 95%;top:5%;">
                            <a href="{{route('dropItem',$c->id_type)}}"><i class="fas fa-trash"></i></a>
                        </div>

                        <div class="divider"></div>
                    </li>

                @endforeach
                    @if($total == 0)
                    <p>Danh sách hiện tại rỗng</p>
                    @else
                        <div>Tổng tiền : {{number_format($total)}}</div>
                    @endif


            </ul>

        </div>
    </div>
@stop