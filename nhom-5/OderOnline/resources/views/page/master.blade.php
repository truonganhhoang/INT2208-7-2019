<!DOCTYPE html>
<html lang="en">
<head>

    <title>Trang Chủ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">


    <link rel="stylesheet" href="{{asset('css/page/cssshop.css')}}">

</head>
<body>
<nav class="navbar navbar-inverse" >
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a  class="navbar-brand aHead" href="{{route('home')}}">OderOnline</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li><a  href="#"><i class="fas fa-home"></i>Home</a></li>
                <li class="dropdown loaisp">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fab fa-product-hunt"></i>Sản phẩm
                        <ul class="dropdown-menu">
                            @foreach($prod as $sp)
                                <li><a href="{{route('sp',$sp->id)}}" style="color:#1b4b72 !important;">{{$sp->name}}</a></li>
                                <div class="divider"></div>
                            @endforeach
                        </ul>
                    </a>
                </li>
                <li><a  href="#"><i class="far fa-hand-point-right"></i>Giới thiệu</a></li>
                <li><a  href="https://www.facebook.com/hatblack"><i class="fab fa-facebook"></i>Liên hệ</a></li>
            </ul>
            <form class="navbar-form navbar-left" method="get" action="{{route('searchall')}}">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search" size="30" name="key">
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="submit">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </div>
                </div>
            </form>
            <ul class="nav navbar-nav navbar-right">
                @if (\Illuminate\Support\Facades\Auth::check())
                    <div class="dropdown info">
                        <span class="glyphicon glyphicon-user" style="margin-right: 10px"></span><span class="dropdown-toggle" id="email" data-toggle="dropdown"><a style="color: whitesmoke"  href="#">{{\Illuminate\Support\Facades\Auth::user()->name}}<span class="caret"></span></a></span>
                        <ul class="dropdown-menu" style="background: linear-gradient(-180deg,#1d68a7,#999999);opacity: 0.9;font-family: Arial;font-size: 11px !important;letter-spacing: 2px;">

                            <li><a class="black" href="#">Đơn hàng</a></li>
                            <li><a class="black" href="#">Thông tin cá nhân</a></li>
                            <li><a class="black" href="#">St</a></li>
                            <li class="divider"></li>
                            <li class="dropdown-header"></li>
                            <li><a class="black" href="{{route('out')}}">Log Out</a></li>
                        </ul>

                    <!-- <span class="glyphicon glyphicon-log-out"></span><a id="logout" href="{{route('out')}}">LogOut</a>-->
                    </div>
                    <div class="giohang dropdown">
                        <span class="dropdown-toggle" data-toggle="dropdown"><a style="color: whitesmoke !important;" href="#"><i class="fas fa-cart-arrow-down fa-lg"></i></a></span>
                        <ul class="dropdown-menu listProduct" style="background: white;">
                            @if(count($cart)==0)
                                <li class="li-empty">
                                    <p class="li-empty-text"><i style="margin-right: 5px" class="fas fa-sad-tear fa-lg"></i>Danh sách rỗng</p>
                                </li>
                            @endif
                            @foreach($cart as $c)

                                <li class="row li-cart">
                                    <div class="col-sm-4">
                                        <img src="img/product/{{$c->img}}" style="height: 50px;width: 50px;padding-left: 3px">
                                    </div>
                                    <div class="col-sm-7">
                                        <div class="li-name">
                                            <p style="font-size: 11px">{{$c->name}}</p>
                                        </div>
                                        <div class="li-price">
                                            @if($c->sale_price != 0)
                                            <p style="font-size: 11px;margin-top: -5px">{{$c->sale_price}}</p>
                                            @else
                                                <p style="font-size: 11px;margin-top: -5px">{{$c->unit_price}}</p>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-sm-1" style="position: absolute; left: 80%">
                                        <a href="#"><i class="fas fa-trash"></i></a>
                                    </div>


                                </li>
                                    <div class="divider"></div>
                            @endforeach
                                @if(count($cart)!=0)
                                    <li><a href="#" style="color: #1b4b72 !important;"><i class="fas fa-mouse-pointer"></i>Thanh toán</a></li>
                                @endif

                        </ul>
                    </div>
                @else
                    <li><a href="{{route('reguser')}}" target="_parent"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li><a href="{{route('userlogin')}}"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                @endif

            </ul>
        </div>
    </div>
</nav>
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
@show
@yield('content')
@yield('script')
</body>


