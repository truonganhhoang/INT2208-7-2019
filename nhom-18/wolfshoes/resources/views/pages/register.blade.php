@extends('layouts.frontLayouts.master')
@section('content')
<div id="content"><!-- #content Begin -->
       <div class="container"><!-- container Begin -->
           <div class="col-md-12"><!-- col-md-12 Begin -->
               
               <ul class="breadcrumb"><!-- breadcrumb Begin -->
                   <li>
                       <a href="{{url('/')}}">Home</a>
                   </li>
                   <li>
                       Register
                   </li>
               </ul><!-- breadcrumb Finish -->
               
           </div><!-- col-md-12 Finish -->
           <div class="col-md-2"> </div>
           <div class="col-md-8">
               
               <div class="box"><!-- box Begin -->
                   
                   <div class="box-header"><!-- box-header Begin -->
                       
                       <center><!-- center Begin -->
                           
                           <h2> Register a new account </h2>
                           
                       </center><!-- center Finish -->
                       
                       <form action="{!! url('register') !!}" method="post" enctype="multipart/form-data"><!-- form Begin -->
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
                               
                               <label>Your Name</label>
                               
                               <input type="text" class="form-control" name="fullname" required>
                               
                           </div><!-- form-group Finish -->
                           
                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>Your Email</label>
                               
                               <input type="text" class="form-control" name="email" required>
                               
                           </div><!-- form-group Finish -->
                           
                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>Your Password</label>
                               
                               <input type="password" class="form-control" name="password" required>
                               
                           </div><!-- form-group Finish -->

                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>Re-Password</label>
                               
                               <input type="password" class="form-control" name="repassword" required>
                               
                           </div><!-- form-group Finish -->
                           
                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>Your Contact</label>
                               
                               <input type="text" class="form-control" name="contact" required>
                               
                           </div><!-- form-group Finish -->
                           
                           <div class="form-group"><!-- form-group Begin -->
                               
                               <label>Your Address</label>
                               
                               <input type="text" class="form-control" name="address" required>
                               
                           </div><!-- form-group Finish -->
                           
                           <div class="text-center"><!-- text-center Begin -->
                               
                               <button type="submit" name="register" class="btn btn-primary">
                               
                               <i class="fa fa-user-md"></i> Register
                               
                               </button>
                               
                           </div><!-- text-center Finish -->
                           
                       </form><!-- form Finish -->
                       
                   </div><!-- box-header Finish -->
                   
               </div><!-- box Finish -->
               
           </div><!-- col-md-8 Finish -->
           <div class="col-md-2"> </div>
           
       </div><!-- container Finish -->
   </div><!-- #content Finish -->
@endsection()