@extends('layouts.frontLayouts.master')
@section('content')
<div id="content"><!-- #content Begin -->
       <div class="container"><!-- container Begin -->
           <div class="col-md-12"><!-- col-md-12 Begin -->
               
               <ul class="breadcrumb"><!-- breadcrumb Begin -->
                   <li>
                       <a href="index.php">Home</a>
                   </li>
                   <li>
                       Register
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
          
                  <h1> Login </h1>
          
                  <p class="lead"> Already have our account..? </p>
          
                </center><!-- center Finish -->
      
              </div><!-- box-header Finish -->
   
              <form method="post" action="{!! url('login') !!}"><!-- form Begin -->
                <input type= "hidden" name= "_token" value= "{!! csrf_token() !!}" />

                @if(Session::has('flag'))
                <div class="alert alert-{{Session::get('flag')}}">{{Session::get('message')}}</div>
                @endif

                <div class="form-group"><!-- form-group Begin -->
          
                  <label> Email </label>
          
                  <input name="email" type="text" class="form-control" required>
          
                </div><!-- form-group Finish -->
      
                <div class="form-group"><!-- form-group Begin -->
          
                  <label> Password </label>
          
                  <input name="password" type="password" class="form-control" required>
          
                </div><!-- form-group Finish -->
      
                <div class="text-center"><!-- text-center Begin -->
          
                  <button name="login" value="Login" class="btn btn-primary">
              
                  <i class="fa fa-sign-in"></i> Login
              
                  </button>
          
                </div><!-- text-center Finish -->     
      
              </form><!-- form Finish -->
    
            </div><!-- box Finish -->
           
           </div><!-- col-md-9 Finish -->
           
       </div><!-- container Finish -->
   </div><!-- #content Finish -->
@endsection