@extends('layouts.frontLayouts.master')
@section('content')
<div id="content"><!-- #content Begin -->
       <div class="container"><!-- container Begin -->
           <div class="col-md-12"><!-- col-md-12 Begin -->
               
               <ul class="breadcrumb"><!-- breadcrumb Begin -->
                   <li>
                       <a href="{{route('home')}}">Home</a>
                   </li>
                   <li>
                       Checkout
                   </li>
               </ul><!-- breadcrumb Finish -->
               
           </div><!-- col-md-12 Finish -->
           
           <div class="col-md-3"><!-- col-md-3 Begin -->
   
    @include('layouts.frontLayouts.leftmenu');
               
           </div><!-- col-md-3 Finish -->
           
           <div class="col-md-9"><!-- col-md-9 Begin -->
               
               <div class="box"><!-- box Begin -->
                   
                   <div class="box-header"><!-- box-header Begin -->
                       
                       <center><!-- center Begin -->
                           
                           <h2> Checkout </h2>
                           
                       </center><!-- center Finish -->

                       <form action="{!! url('checkout') !!}" method="post" enctype="multipart/form-data"><!-- form Begin -->
                       	<input type= "hidden" name= "_token" value= "{!! csrf_token() !!}" />
                       		@if(count($errors)>0)
                       			<div class='alert alert-danger'>
                       				@foreach($errors->all() as $err)
                       				{{$err}}
                       				@endforeach
                       			</div>
                       		@endif
                           @if(Session::has('success'))
                           		<div class='alert alert-success'>
                           			{{Session::get('success')}}
                           		</div>
                           @endif
                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>CustomerID</label>
                               
                               <input type="text" class="form-control" name="text" required>
                               
                           </div><!-- form-group Finish -->
                           
                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>OrderID</label>
                               
                               <input type="text" class="form-control" name="text" required>
                               
                           </div><!-- form-group Finish -->
                           
                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>ProductID</label>
                               
                               <input type="password" class="form-control" name="password" required>
                               
                           </div><!-- form-group Finish -->

                           
                           <div class="text-center"><!-- text-center Begin -->
                               
                               <button type="submit" name="register" class="btn btn-primary">
                               
                               <i class="fa fa-user-md"></i> OK.
                               
                               </button>
                               
                           </div><!-- text-center Finish -->
                           
                       </form><!-- form Finish -->
                       
                   </div><!-- box-header Finish -->
                   
               </div><!-- box Finish -->
               
           </div><!-- col-md-9 Finish -->
           
       </div><!-- container Finish -->
   </div><!-- #content Finish -->
@endsection()