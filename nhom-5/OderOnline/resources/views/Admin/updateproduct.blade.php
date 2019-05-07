
@extends('Admin.master')
@section('title')
    Cập nhật sản phẩm
@stop
@section('h2')
    Cập nhật sản phẩm
@stop
@section('action')
    "{{route('put_update_product',$id)}}"
@stop
@section('method')
    @method('PUT')
@stop
@section('name')
    {{$product[0]['name']}}
@stop
@section('type')
    {{$product[0]['id_type']}}
@stop
@section('description')
    {{$product[0]['description']}}
@stop
@section('unit_price')
    {{$product[0]['unit_price']}}
@stop
@section('promotion_price')
    {{$product[0]['promotion_price']}}
@stop
@section('box')
    {{$product[0]['unit']}}
@stop
@section('image')
    {{$product[0]['image']}}
@stop