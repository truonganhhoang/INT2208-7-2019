@extends('layouts.adminLayouts.admin_design')
@section('content')
    <div id="content">
        <div id="content-header">
            <h2 class="text-center lead">Edit Product</h2>
            @if(Session::has('flash_message_success'))
                <div class="alert alert-success alert-block">
                    <button type="button" class="close" data-dismiss="alert"></button>
                    <strong>{!! session('flash_message_success') !!}</strong>
                </div>
            @endif
        </div>
        <div id="container-fluid">
            <div class="row-fluid">
                <div class="span12">
                    <div class="widget-box">
                        <div class="widget-title"><span class="icon"> <i class="fas fa-cloud-upload-alt"></i> </span>
                            <h5>Product id={{$id}}</h5>
                        </div>
                        <div class="widget-content nopadding">
                            <form class="form-horizontal" method="POST" enctype="multipart/form-data" action="{{url('/admin/editProduct').'/'.$id}}">
                                @csrf
                                <div class="control-group">
                                    <label class="control-label">Product Name</label>
                                    <div class="controls">
                                        <input type="text" name="pName" id="pName" value="{{$p->productName}}" required>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Description</label>
                                    <div class="controls">
                                        <textarea name="pDesc" rows="5" >{{$p->productDescription}}</textarea>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Product Line</label>
                                    <div class="controls">
                                        <label for="pLine">Select</label>
                                        <select name="pLine" id="pLine">
                                            <option value="1" <?php if ($p->productLineID == 1) echo "selected"; ?>>Vans</option>
                                            <option value="2" <?php if ($p->productLineID == 2) echo "selected"; ?>>Adidas</option>
                                            <option value="3" <?php if ($p->productLineID == 3) echo "selected"; ?>>Converse</option>
                                            <option value="4" <?php if ($p->productLineID == 4) echo "selected"; ?>>Palladium</option>
                                            <option value="5" <?php if ($p->productLineID == 5) echo "selected"; ?>>Nike</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">ProductIMG 1</label>
                                    <div class="controls">
                                        <label for="pIMG1">{{$p->productImg1}}</label>
                                        <input type="file" name="pIMG1" id="pIMG1" >
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">ProductIMG 2</label>
                                    <div class="controls">
                                        <label for="pIMG2">{{$p->productImg2}}</label>
                                        <input type="file" name="pIMG2" id="pIMG2" >
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">ProductIMG 3</label>
                                    <div class="controls">
                                        <label for="pIMG3">{{$p->productImg3}}</label>
                                        <input type="file" name="pIMG3" id="pIMG3" >
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Price</label>
                                    <div class="controls">
                                        <input type="number" name="pPrice" value="{{$p->productPrice}}" required>
                                    </div>
                                </div>
                                <div class="form-actions">
                                    <input type="submit" value="Edit" class="btn btn-success">
                                </div>
                            </form>
                            <a href="{{asset('/admin/list')}}" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">Cancel</a>
                        </div>
                    </div>
                </div>
            </div>

@endsection
