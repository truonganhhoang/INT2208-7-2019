@extends('layouts.frontLayouts.master')
@section('content')
    <div id="content"><!-- #content Begin -->
       <div class="container"><!-- container Begin -->
           <div class="col-md-12"><!-- col-md-12 Begin -->
               
               <ul class="breadcrumb"><!-- breadcrumb Begin -->
                   <li>
                       <a href="{{asset('/')}}">Home</a>
                   </li>
                   <li>
                       Shop
                   </li>
               </ul><!-- breadcrumb Finish -->
               
           </div><!-- col-md-12 Finish -->
           
           <div class="col-md-3"><!-- col-md-3 Begin -->
            @include('layouts.frontLayouts.leftmenu')
           </div><!-- col-md-3 Finish -->
           
           <div class="col-md-9"><!-- col-md-9 Begin -->
                       <div class='box'><!-- box Begin -->
                           <h1>WolfShop</h1>
                           <p>
                              5 members:<br>
                              - Nguyễn Văn Khải<br>
                              - Nguyễn Ngọc Minh<br>
                              - Nguyễn Hữu Nam<br>
                              - Nguyễn Ngọc Minh<br>
                              - Đặng Quang Liêm<br>
                              - Nguyễn Khắc Ngọc<br>
                            </p>
                       </div><!-- box Finish -->
               
               <div class="row"><!-- row Begin -->
               @foreach($products as $prd)             
                  <div class='col-md-4 col-sm-6 center-responsive'>
                    <div class='product'>
                      <a href="{{route('detail',$prd->productCode)}}">
                        <img class='img-responsive' src="{{url('images/frontend_image/products').'/'.$prd->productImg1}}">
                      </a>
                                            
                    <div class='text'>
                      <h3>
                        <a href="{{route('detail',$prd->productCode)}}"> {{$prd->productName}} </a>
                      </h3>
                        <p class='price'>
                          {{$prd->productPrice}}
                        </p>

                        <p class='buttons'>

                          <a class='btn btn-default' href="{{route('detail',$prd->productCode)}}">

                            View Details

                          </a>

                          <a class='btn btn-primary' href="{{route('addcart',$prd->productCode)}}">

                            <i class='fa fa-shopping-cart'></i> Add To Cart

                          </a>

                        </p>
                                            
                    </div>
                                        
                  </div>
                                    
                </div>
               @endforeach
               </div><!-- row Finish -->
               
               <center>
                  <div class="btn-group">
                      <div class="row">{{$products->links()}}</div>
                  </div> 
               </center>
                
           </div><!-- col-md-9 Finish -->
           
       </div><!-- container Finish -->
   </div><!-- #content Finish -->
@endsection()
