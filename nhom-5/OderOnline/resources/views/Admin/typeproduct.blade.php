<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thêm loại sản phẩm</title>
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
        <h2 style="text-align: center">Thêm sản loại phẩm</h2>
        <form class="form-group" method="post" action="{{route('add_type_product')}}" >
            @csrf
            <div class="sp-name">
                <span>ID sản phẩm</span>
                <input class="form-control" placeholder="" type="text" name="id" >
            </div>
            <div class="sp-type">
                <span>Tên loại sản phẩm</span>
                <input class="form-control" placeholder="" type="text" name="name" >
            </div>
            <div class="sp-descreption">
                <span>Mô tả loại sản phẩm</span>
                <input class="form-control" placeholder="" type="text" name="des">
            </div>
            <div class="sp-image">
                <span>Hình ảnh</span>
                <input   type="file" name="image">
            </div>
            <div class="sp-submit" style="position: relative;left: 40%;top: 3px">

                <input  type="submit" value="submit" >
            </div>

        </form>
    </div>
</div>
</body>
</html>