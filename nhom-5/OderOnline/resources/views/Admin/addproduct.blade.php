<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thêm sản phẩm</title>
    <script src="../bootstrap/jquery.min.js"></script>
    <link rel="stylesheet" href="../bootstrap/bootstrap.min.css">
    <script src="../bootstrap/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('css/admin/addproduct.css')}}">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet" type="text/css">

</head>
<body>
<div class="container-fluid">

    <div class="col-sm-4 col-sm-offset-4" style="background-color: whitesmoke">
        <h2 style="text-align: center">Thêm sản phẩm</h2>
        <form class="form-group" method="post" action="{{route('addProduct')}}" enctype="multipart/form-data">
            @csrf
            @if (session('error'))
            <div class="alert alert-success">
                {{ session('error') }}
            </div>
            @endif
            <div class="sp-name">
                @if($errors->has('name'))
                    <p  class="alert-danger">{{$errors->first('name')}}</p>
                @endif
                <span>Tên sản phẩm</span>
                <input class="form-control" placeholder="" type="text" name="name" value =@yield('name')>
            </div>
            <div class="sp-type">
                @if($errors->has('id_type'))
                    <p  class="alert-danger">{{$errors->first('id_type')}}</p>
                @endif
                <span>Loại sản phẩm</span>
                <input class="form-control" placeholder="" type="text" name="id_type" value =@yield('type') >
            </div>
            <div class="sp-description">
                @if($errors->has('description'))
                    <p  class="alert-danger">{{$errors->first('description')}}</p>
                @endif
                <span>Mô tả sản phẩm</span>
                <input class="form-control" placeholder="" type="text" name="description" value =@yield('description') >
            </div>
            <div class="sp-unit-price">
                @if($errors->has('unit_price'))
                    <p  class="alert-danger">{{$errors->first('unit_price')}}</p>
                @endif
                <span>Giá gốc</span>
                <input class="form-control" placeholder="" type="text" name="unit_price" value =@yield('unit_price')>
            </div>
            <div class="sp-promotion-price">
                @if($errors->has('promotion_price'))
                    <p  class="alert-danger">{{$errors->first('promotion_price')}}</p>
                @endif
                <span>Giá sale</span>
                <input class="form-control" placeholder="" type="text" name="promotion_price" value =@yield('promotion_price') >
            </div>
            <div class="sp-box">
                @if($errors->has('unit'))
                    <p  class="alert-danger">{{$errors->first('unit')}}</p>
                @endif
                <span>Kiểu sản phẩm</span>
                <input class="form-control" placeholder="" type="text" name="unit" value =@yield('box')>
            </div>
            <div class="sp-image">
                @if($errors->has('img'))
                    <p  class="alert-danger">{{$errors->first('img')}}</p>
                @endif
                <span>Hình ảnh</span>
                <input  type="file" name="img" id="img">
            </div>
            <div class="sp-submit" style="position: relative;left: 40%;top: 3px">

                <input  type="submit" value="submit" >
            </div>

        </form>
    </div>
</div>
</body>
</html>
<!-- "{{route('addProduct')}}"-->