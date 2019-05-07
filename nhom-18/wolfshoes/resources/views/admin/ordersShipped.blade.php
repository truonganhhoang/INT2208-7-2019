@extends('layouts.adminLayouts.admin_design')
@section('content')
    <div id="content">
        <div id="content-header">
            <h2 class="text-center lead">List Orders Shipped</h2>
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
        </div>
        <div id="container-fluid">
            <p>Total: {{$total}}</p>
            <table class="table table-dark table-hover">
                <thead>
                <tr>
                    <th>Order Number</th>
                    <th>Order Date</th>
                    <th>Shipped Date</th>
                    <th>Product Name</th>
                    <th>Quantity Orderred</th>
                    <th>Price Each</th>
                    <th>Total price</th>
                    <th>Customer ID</th>
                    <th>Customer Name</th>
                </tr>
                </thead>
                <tbody>
                @foreach($orders as $o)
                    <tr>
                        <td>{{$o->orderID}}</td>
                        <td>{{$o->orderDate}}</td>
                        <td>{{$o->shippedDate}}</td>
                        <td>{{$o->productName}}</td>
                        <td>{{$o->quantityOrderred}}</td>
                        <td>{{$o->productPrice}}</td>
                        <td>{{$o->TotalPrice}}</td>
                        <td>{{$o->id}}</td>
                        <td>{{$o->name}}</td>
                    </tr>
                @endforeach
                </tbody>
            </table>
            {{ $orders->links() }}


        </div>
    </div>

@endsection
