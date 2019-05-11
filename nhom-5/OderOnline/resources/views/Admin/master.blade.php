<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>@yield('title')</title>
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
        <h2 style="text-align: center">@yield('h2')</h2>
        <form class="form-group" method="post" action=@yield('action') enctype="multipart/form-data">
            @csrf
            @yield('method')
            <div class="sp-name">
                <span>Tên sản phẩm</span>
                <input class="form-control" placeholder="" type="text" name="name" value =@yield('name')>
            </div>
            <div class="sp-type">
                <span>Loại sản phẩm</span>
                <input class="form-control" placeholder="" type="text" name="id_type" value =@yield('type') >
            </div>
            <div class="sp-description">
                <span>Mô tả sản phẩm</span>
                <input class="form-control" placeholder="" type="text" name="description" value =@yield('description') >
            </div>
            <div class="sp-unit-price">
                <span>Giá gốc</span>
                <input class="form-control" placeholder="" type="text" name="unit_price" value =@yield('unit_price')>
            </div>
            <div class="sp-promotion-price">
                <span>Giá sale</span>
                <input class="form-control" placeholder="" type="text" name="promotion_price" value =@yield('promotion_price') >
            </div>
            <div class="sp-box">
                <span>Kiểu sản phẩm</span>
                <input class="form-control" placeholder="" type="text" name="unit" value =@yield('box')>
            </div>
            <div class="sp-image">
                <span>Hình ảnh</span>
                <input   type="file" name="image" id="image" value =@yield('image') >
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