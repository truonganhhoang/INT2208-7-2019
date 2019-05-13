<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
    <ul>
        <li class="active"><a href="{{url('/admin/dashboard')}}"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
        <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Products</span> <span class="label label-important">2</span></a>
            <ul>
                <li><a title="" href="{{url('/admin/upload')}}"><i class="fas fa-cloud-upload-alt"></i> <span class="text">Upload Product </span></a></li>
                <li><a title="" href="{{url('/admin/list')}}"><i class="fas fa-list-ol"></i> <span class="text">List Products </span></a></li>
            </ul>
        </li>
        <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Customer</span> <span class="label label-important">1</span></a>
            <ul>
                <li><a title="" href="{{url('/admin/customer')}}"><i class="fas fa-cloud-upload-alt"></i> <span class="text">List Customer</span></a></li>
            </ul>
        </li>
        <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Order</span> <span class="label label-important">2</span></a>
            <ul>
                <li><a title="" href="{{url('/admin/ordersShipped')}}"><i class="fas fa-cloud-upload-alt"></i> <span class="text">Shipped</span></a></li>
            </ul>
            <ul>
                <li><a title="" href="{{url('/admin/ordersPending')}}"><i class="fas fa-cloud-upload-alt"></i> <span class="text">Pending</span></a></li>
            </ul>
        </li>
    </ul>
</div>
<!--sidebar-menu-->