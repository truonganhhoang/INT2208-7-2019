<div id="top"><!-- Top Begin -->

    <div class="container"><!-- container Begin -->

        <div class="col-md-6 offer"><!-- col-md-6 offer Begin -->

            <a href="#" class="btn btn-success btn-sm">Welcome</a>
            @if(Session::has('Cart'))
               <a href={{url('/cart')}}>{{Session('Cart')->totalQuantity}} Items In Your Cart | Total Price: $ {{Session('Cart')->totalPrice}} </a>
            @else
               <a href={{url('/cart')}}>Chưa có sản phẩm trong giỏ hàng | Total Price: $ 0</a>
            @endif

        </div><!-- col-md-6 offer Finish -->

        <div class="col-md-6"><!-- col-md-6 Begin -->

            <ul class="menu"><!-- cmenu Begin -->

                <li>
                    <a href={{route('register')}}>Register</a>
                </li>
                <li>
                    <a href={{route('cart')}}>Go To Cart</a>
                </li>
                <li>
                    @if(Auth::check())
                    <li>
                      <a href={{route('login')}}>{{Auth::user()->name}}</a>
                    </li>
                    <li>
                        <a href={{route('logout')}}>Logout</a>
                    </li>
                  @else
                    <li>
                      <a href={{route('login')}}>Login</a>
                    </li>
                   @endif
                </li>

            </ul><!-- menu Finish -->

        </div><!-- col-md-6 Finish -->

    </div><!-- container Finish -->

</div><!-- Top Finish -->

<div id="navbar" class="navbar navbar-default"><!-- navbar navbar-default Begin -->

    <div class="container"><!-- container Begin -->

        <div class="navbar-header"><!-- navbar-header Begin -->

            <a href={{route('index')}} class="navbar-brand home"><!-- navbar-brand home Begin -->

                <img src="{{asset('images/frontend_image/logo/logo1.png')}}" alt="M-dev-Store Logo" class="hidden-xs">
                <img src="{{asset('images/frontend_image/logo/logo1.png')}}" alt="M-dev-Store Logo Mobile" class="visible-xs">

            </a><!-- navbar-brand home Finish -->

            <button class="navbar-toggle" data-toggle="collapse" data-target="#navigation">

                <span class="sr-only">Toggle Navigation</span>

                <i class="fa fa-align-justify"></i>

            </button>

            <button class="navbar-toggle" data-toggle="collapse" data-target="#search">

                <span class="sr-only">Toggle Search</span>

                <i class="fa fa-search"></i>

            </button>

        </div><!-- navbar-header Finish -->

        <div class="navbar-collapse collapse" id="navigation"><!-- navbar-collapse collapse Begin -->

            <div class="padding-nav"><!-- padding-nav Begin -->

                <ul class="nav navbar-nav left"><!-- nav navbar-nav left Begin -->

                    <li class="active">
                        <a href={{route('index')}}>Home</a>
                    </li>
                    <li>
                        <a href={{route('shop')}}>Shop</a>
                    </li>
                    <li>
                        <a href={{route('cart')}}>Shopping Cart</a>
                    </li>
                    <li>
                        <a href={{route('postContact')}}>Contact Us</a>
                    </li>

                </ul><!-- nav navbar-nav left Finish -->

            </div><!-- padding-nav Finish -->

            <a href="{{url('/cart')}}" class="btn navbar-btn btn-primary right"><!-- btn navbar-btn btn-primary Begin -->

                <i class="fa fa-shopping-cart"></i>
                @if(Session::has('Cart'))
                    <span>{{Session('Cart')->totalQuantity}} Items In Your Cart</span>
                @else
                    <span>Giỏ hàng trống</span>
                @endif

            </a><!-- btn navbar-btn btn-primary Finish -->

            <div class="navbar-collapse collapse right"><!-- navbar-collapse collapse right Begin -->

                <button class="btn btn-primary navbar-btn" type="button" data-toggle="collapse" data-target="#search"><!-- btn btn-primary navbar-btn Begin -->

                    <span class="sr-only">Toggle Search</span>

                    <i class="fa fa-search"></i>

                </button><!-- btn btn-primary navbar-btn Finish -->

            </div><!-- navbar-collapse collapse right Finish -->

            <div class="collapse clearfix" id="search"><!-- collapse clearfix Begin -->

                <form method="get" action="{{url('/pSearch')}}" class="navbar-form"><!-- navbar-form Begin -->

                    <div class="input-group"><!-- input-group Begin -->

                        <input type="text" class="form-control" placeholder="Search" name="pSearch" required>

                        <span class="input-group-btn"><!-- input-group-btn Begin -->

                           <button type="submit" name="search" value="Search" class="btn btn-primary"><!-- btn btn-primary Begin -->

                               <i class="fa fa-search"></i>

                           </button><!-- btn btn-primary Finish -->

                           </span><!-- input-group-btn Finish -->

                    </div><!-- input-group Finish -->

                </form><!-- navbar-form Finish -->

            </div><!-- collapse clearfix Finish -->

        </div><!-- navbar-collapse collapse Finish -->

    </div><!-- container Finish -->

</div><!-- navbar navbar-default Finish -->