@extends('layouts.adminLayouts.admin_design')
@section('content')
<!--main-container-part-->
<div id="content">
    <!--breadcrumbs-->
    <div id="content-header">
        <div id="breadcrumb"> <a href="{{asset('/admin/dashboard')}}" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
    </div>
    <!--End-breadcrumbs-->

    <!--Action boxes-->
    <div class="container-fluid">
        <div class="quick-actions_homepage">
          <h2>Welcome To Wolf Dashboard</h2>
        </div>
        <!--End-Action boxes-->

        <!--Chart-box-->
        <div class="row-fluid">
            <div class="widget-box">
                <div class="widget-title bg_lg"><span class="icon"><i class="icon-signal"></i></span>
                    <h5>wolfshoes</h5>
                </div>
                <div class="widget-content" >
                    <div class="row-fluid">
                        <div class="span9">
                                <img src="{{asset('images/frontend_image/wolfhihi.jpg')}}" alt="wolfhihi">
                        </div>
                        <div class="span3">
                            <ul class="site-stats">
                                <li class="bg_lh"><i class="icon-user"></i> {{$total['customers']}}</strong> <small>Total Customers</small></li>
                                <li class="bg_lh"><i class="icon-globe"></i> <strong> {{$total['products']}}</strong> <small>Total Products</small></li>
                                <li class="bg_lh"><i class="icon-shopping-cart"></i> <strong> {{$total['orders']}}</strong> <small>Total Orders</small></li>
                                <li class="bg_lh"><i class="icon-tag"></i> <strong> {{$total['oShipped']}}</strong> <small>Shipped Orders</small></li>
                                <li class="bg_lh"><i class="icon-repeat"></i> <strong> {{$total['oPending']}}</strong> <small>Pending Orders</small></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End-Chart-box-->
    </div>
</div>

<!--end-main-container-part-->
@endsection()