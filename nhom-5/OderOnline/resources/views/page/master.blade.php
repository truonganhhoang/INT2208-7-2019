<!DOCTYPE html>
<html lang="en">
<head>

    <title>@yield('title')</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">


    <link rel="stylesheet" href="{{asset('css/page/cssshop.css')}}">
    <link rel="stylesheet" href="{{asset('css/footer/footermap.css')}}">
    <link rel="stylesheet" href="{{asset('css/login/cssLogin.css')}}">
    <link rel="stylesheet" href="{{asset('css/page/profile.css')}}">
    @yield('css')

</head>
<body>
<nav class="navbar navbar-inverse" style="position: relative">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a  class="navbar-brand aHead" href="{{route('home')}}"><img id="logo" class="img-fluid" src="{{asset('img/Logo/logo.png')}}" style="height: 80px;width: 80px;position: relative;bottom: 170%"></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><a  href="{{route('home')}}"><i class="fas fa-home"></i>Trang chủ</a></li>
                <li class="dropdown">
                    <a class="dropdown-toggle type-product" data-toggle="dropdown" href="#"><i class="fab fa-product-hunt"></i>Sản phẩm
                        <ul class="dropdown-menu">
                            @foreach($prod as $sp)
                                <li><a href="{{route('sp',$sp->id)}}" style="color:#1b4b72 !important;">{{$sp->name}}</a></li>
                                <div class="divider"></div>
                            @endforeach
                        </ul>
                    </a>
                </li>
            <!--    <li><a  href="#"><i class="far fa-hand-point-right"></i>Giới thiệu</a></li> -->
                <li><a  href="https://www.facebook.com/hatblack"><i class="fab fa-facebook"></i>Liên hệ</a></li>
            </ul>
            <form class="navbar-form navbar-left search-form" method="get" action="{{route('searchall')}}">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search" size="30" name="key">
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="submit">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </div>
                </div>
            </form>
            <ul class="nav navbar-nav  navbar-right user-logged" >
                @if (\Illuminate\Support\Facades\Auth::check())
                    <div class="dropdown">
                        <span class="glyphicon glyphicon-user" style="margin-right: 10px"></span><span class="dropdown-toggle" id="email" data-toggle="dropdown"><a style="color: whitesmoke"  href="#">{{\Illuminate\Support\Facades\Auth::user()->name}}<span class="caret"></span></a></span>
                        <ul class="dropdown-menu" style="background:#1b4b72;font-size: 11px !important;letter-spacing: 2px;">
                            <!--<li><a class="black" href="{{route('dh',\Illuminate\Support\Facades\Auth::id())}}}">Đơn hàng</a></li>-->
                            <li><a class="black" href="{{route('don_hang')}}">Đơn hàng</a></li>
                            <li><a class="black" href="{{route('profile_user')}}">Thông tin cá nhân</a></li>
                            <li class="divider"></li>
                            <li class="dropdown-header"></li>
                            <li><a class="black" href="{{route('logout')}}">Đăng xuất</a></li>

                        </ul>

                    <!-- <span class="glyphicon glyphicon-log-out"></span><a id="logout" href="{{route('out')}}">LogOut</a>-->
                    </div>
                    <div class="giohang dropdown">
                        <span class="dropdown-toggle" data-toggle="dropdown"><a style="color: whitesmoke !important;" href="#"><i class="fas fa-cart-arrow-down fa-lg"></i></a></span>
                        <ul class="dropdown-menu list-in-cart" style="background: white;">
                            @if(count($cart)==0)
                                <li class="li-empty">
                                    <p class="li-empty-text"><i style="margin-right: 5px" class="fas fa-sad-tear fa-lg"></i>Danh sách rỗng</p>
                                </li>
                            @endif
                            @foreach($cart as $c)

                                <li class="row li-cart" style="position: relative">
                                    <div class="col-sm-4">
                                        <img src="/img/product/{{$c->img}}" style="height: 50px;width: 50px;padding-left: 3px">
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="li-name">
                                            <p style="font-size: 11px">{{$c->name}}</p>
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
                                    <div class="col-sm-1" style="position: absolute; left: 75%;top:5%;">
                                        <a href="{{route('dropItem',$c->id_type)}}"><i class="fas fa-trash"></i></a>
                                    </div>


                                </li>
                                    <div class="divider"></div>
                            @endforeach
                                @if(count($cart)!=0)
                                    <li><a href="{{route('don_hang')}}" style="color: #1b4b72 !important;"><i class="fas fa-mouse-pointer"></i>Thanh toán</a></li>

                                @endif

                        </ul>
                    </div>
                @else
                        <li><a href="{{route('reguser')}}" target="_parent"><span class="glyphicon glyphicon-user"></span>Đăng kí</a></li>
                        <li><a href="{{route('login')}}" target="_parent"><span class="glyphicon glyphicon-log-in"></span>Đăng nhập</a></li>
                @endif

            </ul>
        </div>
    </div>
</nav>
@yield('sl')
@yield('content')

<footer id="myFooter" style="background: linear-gradient(90deg, rgb(0, 62, 82) 50%, rgb(13, 109, 133) 87%, rgb(26, 156, 183) 100%)">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <h5>Get started</h5>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Sign up</a></li>
                    <li><a href="#">Downloads</a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h5>About us</h5>
                <ul>
                    <li><a href="#">Company Information</a></li>
                    <li><a href="#">Contact us</a></li>
                    <li><a href="#">Reviews</a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h5>Support</h5>
                <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Help desk</a></li>
                    <li><a href="#">Forums</a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h5>Legal</h5>
                <ul>
                    <li><a href="#">Terms of Service</a></li>
                    <li><a href="#">Terms of Use</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="social-networks">
        <a href="#" class="twitter"><i class="fab fa-twitter fa-lg"></i></a>
        <a href="#" class="facebook"><i class="fab fa-facebook fa-lg"></i></a>
        <a href="#" class="google"><i class="fab fa-google-plus fa-lg"></i></a>
    </div>
    <div class="footer-copyright">
        <p>© 2019 Copyright </p>
    </div>
</footer>

</body>

@yield('script')

