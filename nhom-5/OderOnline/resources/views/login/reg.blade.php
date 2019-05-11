@extends('page.master')
@section('title')
    Đăng kí
@stop
@section('content')
    <div class="container" style="margin-top: 5%;margin-bottom: 5%">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="form-body">
                    <div>
                        <h3 class="text-center">Đăng kí</h3>
                    </div>
                    <div class="tab-content">
                        <div id="sectionA" class="tab-pane fade in active">
                            <div class="innter-form">
                                <form  action="{{ route('register') }}" method="post" class="sa-innate-form">
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
                                    @if($errors->has('name'))
                                        <p  class="alert-danger">{{$errors->first('name')}}</p>
                                    @endif
                                    <label>Tên tài khoản</label>
                                    <input id="username" type="text" name="name">
                                    @if($errors->has('email'))
                                        <p  class="alert-danger">{{$errors->first('email')}}</p>
                                    @endif
                                    <label>Email</label>
                                    <input type="email" name="email">
                                    @if($errors->has('password'))
                                        <p  class="alert-danger">{{$errors->first('password')}}</p>
                                    @endif
                                    <label>Mật Khẩu</label>
                                    <input type="password" name="password">
                                    <button type="submit">Đăng kí</button>

                                    <a href="{{ route('login')}}" style="text-decoration: none">Đăng nhập</a>
                                </form>
                            </div>
                            <div class="social-login">
                                <p>- - - - - - - - - - - - - Phương thức khác - - - - - - - - - - - - - </p>
                                <ul>
                                    <li><a href="{{route('loginApp','facebook')}}"><i class="fab fa-facebook"></i> Facebook</a></li>
                                    <li id="google"><a href="{{route('loginApp','google')}}"><i class="fab fa-google-plus"></i> Google+</a></li>
                                    <!-- <li><a href=""><i class="fab fa-twitter"></i> Twitter</a></li>-->
                                </ul>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
