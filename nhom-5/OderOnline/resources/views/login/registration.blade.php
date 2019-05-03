@extends('page.master')
@section('title')
    Đăng ký
@stop
@section('content')
        <div class="container">
            <form action="{{ route('register') }}" method="post" class="form-horizontal col-sm-6 col-sm-offset-3" style="background-color: white;padding: 20px;border: 1px solid green;border-radius: 15px;margin-top: 8%;margin-bottom: 8%">
                <h3 style="margin-left: 40%">Đăng ký</h3>
                @csrf
                @if (session('success'))
                    <div class="alert-success">
                        {{ session('success') }}
                    </div>
                @endif
                @if (session('error'))
                    <div class="alert-danger">
                        {{ session('error') }}
                    </div>
                @endif

                @if (session('diff'))
                    <div class="alert-danger">
                        {{ session('diff') }}
                    </div>
                @endif
                <div class="col-sm-6">
                    @if($errors->has('name'))
                        <p  class="alert-danger">{{$errors->first('name')}}</p>
                    @endif
                    <div class="form-group has-success has-feedback">
                        <label class="col-sm-2 control-label" style="width: 130px; text-align: left;">Tên đăng nhập</label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" name="name" placeholder="">
                            <span class="form-control-feedback"><i class="far fa-user"></i></span>
                        </div>
                    </div>
                    @if($errors->has('email'))
                        <p  class="alert-danger">{{$errors->first('email')}}</p>
                    @endif
                    <div class="form-group has-success has-feedback">
                        <label class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-12">
                            <input type="email" class="form-control" name="email" placeholder="">
                            <span class="form-control-feedback"><i class="far fa-envelope"></i></span>
                        </div>
                    </div>
                    @if($errors->has('password'))
                        <p  class="alert-danger">{{$errors->first('password')}}</p>
                    @endif
                    <div class="form-group has-success has-feedback">
                        <label class="col-sm-2 control-label" style="width: 95px; text-align: left;">Mật khẩu</label>
                        <div class="col-sm-12">
                            <input type="password" class="form-control" name="password" placeholder="">
                            <span class="form-control-feedback"><i style="margin-top: 50%" class="fas fa-lock"></i></span>
                        </div>
                    </div>
                    <input style="margin-left: 30%" class="btn btn-dark" type="submit" value="Đăng ký">

                </div>
                <div class="col-sm-2" style="margin-top: 20%">
                    <span><i class="far fa-hand-point-right fa-lg"></i></span>
                </div>
                <div class="col-sm-4" style="margin-top: 15%">

                    <a href="#" style="padding: 10px;background-color: #1b4b72;color: white !important;letter-spacing: 2px"><!--<i style="margin-right: 2px" class="fab fa-facebook fa-lg"></i>-->Facebook</a>
                    <hr>
                    <a href="{{route('loginApp','google')}}" style="padding-top: 10px;padding-bottom: 10px; padding-left:25px;padding-right:25px;background-color: red;color: white !important;letter-spacing: 2px"><!--<i style="margin-right: 2px" class="fab fa-google-plus fa-lg"></i>-->Gmail</a>

                </div>

            </form>

        </div>

@stop
