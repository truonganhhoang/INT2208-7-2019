<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thêm sản phẩm</title>
    <script src="../bootstrap/jquery.min.js"></script>
    <link rel="stylesheet" href="../bootstrap/bootstrap.min.css">
    <script src="../bootstrap/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/login.css">

</head>
<body>
<div class="container-fluid">

    <form method="POST" action="{{route('addproduct')}}">
        @csrf

        <p>Name</p>
        <input type="text" class="form-control" name="name" placeholder="name">
        <p>Type</p>
        <input type="text" class="form-control" name="id_type" placeholder="type">
        <p>descripstion</p>
        <input type="text" class="form-control" name="description" placeholder="des">
        <p>unit_price</p>
        <input type="text" class="form-control" name="unit_price" placeholder="unit">
        <p>descripstion</p>
        <input type="text" class="form-control" name="promotion_price" placeholder="promotion">
        <p>image</p>
        <input type="text" name="image" placeholder="">
        <p>Unit</p>
        <input type="text" name="unit" placeholder="">
        <button type="submit" value="Add">ADD</button>
    </form>
</div>
</body>
</html>