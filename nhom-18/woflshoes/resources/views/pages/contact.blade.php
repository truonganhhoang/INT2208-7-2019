@extends('layouts.frontLayouts.master')
@section('content')
<div id="content"><!-- #content Begin -->
       <div class="container"><!-- container Begin -->
           <div class="col-md-12"><!-- col-md-12 Begin -->
               
               <ul class="breadcrumb"><!-- breadcrumb Begin -->
                   <li>
                       <a href={{url('/')}}>Home</a>
                   </li>
                   <li>
                       Contact Us
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
                           
                           <img src="{{asset('images/frontend_image/logo/logo1.png')}}" alt="wolfshop Logo" class="hidden-xs">
                           
                           <p class="text-muted"><!-- text-muted Begin -->
                               
                               If you have any questions!
                               
                           </p><!-- text-muted Finish -->
                           
                       </center><!-- center Finish -->
                       
                       <form id="contact" action="{!! url('contact') !!}" method="post">
                          <input type= "hidden" name= "_token" value= "{!! csrf_token() !!}" />
                          <fieldset>
                            <input name= "name" class="form-control" placeholder="Your name" type="text" tabindex="1" required autofocus>
                          </fieldset>

                          <br>

                          <fieldset>
                            <input name= "email" class="form-control" placeholder="Your Email Address" type="email" tabindex="2" required>
                          </fieldset>

                          <br>

                          <fieldset>
                            <textarea name= "subject" class="form-control" placeholder="Type your subject here...." tabindex="5" required></textarea>
                          </fieldset>

                          <br>

                          <div class="text-center">
                            <fieldset>
                              <button name="submit" class="btn btn-primary" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
                            </fieldset>
                          </div>
                        </form>
                         
                   </div><!-- box-header Finish -->
                   
               </div><!-- box Finish -->
               
           </div><!-- col-md-9 Finish -->
           
       </div><!-- container Finish -->
   </div><!-- #content Finish -->
   @endsection()