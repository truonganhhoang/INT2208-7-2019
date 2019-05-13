@extends('layouts.frontLayouts.master')
@section('content')
   <div id="content"><!-- #content Begin -->
       <div class="container"><!-- container Begin -->
           <div class="col-md-12"><!-- col-md-12 Begin -->
               
               <ul class="breadcrumb"><!-- breadcrumb Begin -->
                   <li>
                       <a href={{route('index')}}>Home</a>
                   </li>
                   <li>
                       Result
                   </li>
               </ul><!-- breadcrumb Finish -->
               
           </div><!-- col-md-12 Finish -->
           
         
           
           <div class="col-md-12"><!-- col-md-9 Begin -->
             
             
               
               <div class="row"><!-- row Begin -->
        
        		@if($count==0)
            
                <div class='box'>
                
                    <h1> No Product Found In This Product Categories </h1>
                
                </div>
            
        		@else
        		@foreach($pc as $pc)
                           
                <div class='col-md-3 col-sm-6 center-responsive'>
                                    
                    <div class='product'>
                                        
                        <a href="{{route('detail',$pc->productCode)}}">
                                            
                            <img class='img-responsive' src="{{url('images/frontend_image/products').'/'.$pc->productImg1}}">
                                            
                        </a>
                                            
                    	<div class='text'>
                                            
                            <h3>
                                                
                                <a href="{{route('detail',$pc->productCode)}}"> {{$pc->productName}} </a>
                                                
                            </h3>
                                            
                            <p class='price'>

                                {{$pc->productPrice}}

                            </p>

                            <p class='buttons'>

                                <a class='btn btn-default' href="{{route('detail',$pc->productCode)}}">

                                    View Details

                                </a>

                                <a class='btn btn-primary' href="{{route('addcart',$pc->productCode)}}">

                                    <i class='fa fa-shopping-cart'></i> Add To Cart

                                </a>

                            </p>
                                            
                        </div>
                                        
                    </div>
                                    
                </div>
                @endforeach
                @endif
               
               </div><!-- row Finish -->
               
             
              
               
           </div><!-- col-md-9 Finish -->
           
       </div><!-- container Finish -->
   </div><!-- #content Finish -->
 @endsection()