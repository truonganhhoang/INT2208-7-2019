@extends('layouts.adminLayouts.admin_design')
@section('content')
    <div id="content">
        <div id="content-header">
            <h2 class="text-center lead">List Product</h2>
            @if(Session::has('flash_message_success'))
                <div class="alert alert-success alert-block">
                    <button type="button" class="close" data-dismiss="alert"></button>
                    <strong>{!! session('flash_message_success') !!}</strong>
                </div>
            @endif
            @if(Session::has('flash_message_error'))
                <div class="alert alert-error alert-block">
                    <button type="button" class="close" data-dismiss="alert"></button>
                    <strong>{!! session('flash_message_error') !!}</strong>
                </div>
            @endif
            <form class="form-horizontal" method="POST" enctype="multipart/form-data" action="{{url('/admin/listProducts')}}">
                @csrf
                <div class="control-group">
                    <label class="control-label">Product Name</label>
                    <div class="controls">
                        <input type="text" name="pName">
                    </div>
                </div>
                <div class="form-actions">
                    <input type="submit" value="Search" class="btn btn-success">
                </div>
            </form>
        </div>
        <div id="container-fluid">
            <p>Total: {{$total}}</p>
            <table class="table table-dark table-hover">
                <thead>
                <tr>
                    <th>ProductCode</th>
                    <th>ProductName</th>
                    <th>ProductLine</th>
                    <th>ProductPrice</th>
                    <th>IMG1</th>
                    <th>IMG2</th>
                    <th>IMG3</th>
                    <th>ProductDescription</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($products as $p)
                    <tr>
                        <td>{{$p->productCode}}</td>
                        <td>{{$p->productName}}</td>
                        <td>{{$p->productLineID}}</td>
                        <td>{{$p->productPrice}}</td>
                        <td><img src="{{asset('images/frontend_image/products/'.$p->productImg1)}}" class="img-rounded" alt="img1"> </td>
                        <td><img src="{{asset('images/frontend_image/products/'.$p->productImg2)}}" class="img-rounded" alt="img2"> </td>
                        <td><img src="{{asset('images/frontend_image/products/'.$p->productImg3)}}" class="img-rounded" alt="img3"> </td>
                        <td>{{$p->productDescription}}</td>
                        <td>
                            <a href="{{'/admin/edit/'.$p->productCode}}">Edit</a>
                            <a href="{{'/admin/delete/'.$p->productCode }}">Delete</a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
            {{ $products->links() }}


        </div>
    </div>

@endsection
