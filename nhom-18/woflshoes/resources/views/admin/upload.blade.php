@extends('layouts.adminLayouts.admin_design')
@section('content')
    <div id="content">
        <div id="content-header">
            <h2 class="text-center lead">Upload product</h2>
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
                            <h5>Product new</h5>
                        </div>
                        <div class="widget-content nopadding">
                            <form class="form-horizontal" method="POST" enctype="multipart/form-data" action="{{url('/admin/uploadProduct')}}">
                                @csrf
                                <div class="control-group">
                                    <label class="control-label">Product Name</label>
                                    <div class="controls">
                                        <input type="text" name="pName" id="pName" required>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Description</label>
                                    <div class="controls">
                                        <textarea name="pDesc" rows="5"></textarea>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Product Line</label>
                                    <div class="controls">
                                        <label for="pLine">Select</label>
                                        <select name="pLine" id="pLine">
                                            <option value="1">Vans</option>
                                            <option value="2">Adidas</option>
                                            <option value="3">Converse</option>
                                            <option value="4">Palladium</option>
                                            <option value="5">Nike</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">ProductIMG 1</label>
                                    <div class="controls">
                                        <label for="pIMG1">IMG1</label>
                                        <input type="file" name="pIMG1" id="pIMG1" required >
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">ProductIMG 2</label>
                                    <div class="controls">
                                        <label for="pIMG2">IMG2</label>
                                        <input type="file" name="pIMG2" id="pIMG2" required >
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">ProductIMG 3</label>
                                    <div class="controls">
                                        <label for="pIMG3">IMG3</label>
                                        <input type="file" name="pIMG3" id="pIMG3" required >
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Price</label>
                                    <div class="controls">
                                        <input type="number" name="pPrice" required>
                                    </div>
                                </div>
                                <div class="form-actions">
                                    <input type="submit" value="Upload" class="btn btn-success">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

@endsection
