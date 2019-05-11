<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <div class="col-sm-6 col-sm-offset-3">
        <form method="post" action="{{route('test_email')}}" style="border: 1px solid black;border-radius: 5px;padding: 20px">
            @csrf
            <p>Your Email:</p>
            <input class="form-control" type="email" name="email" placeholder="">
            <p>Your Name:</p>
            <input class="form-control" type="text" name="name" placeholder="">
            <p>Comment</p>
            <textarea name="comment" rows="10" cols="30">The cat was playing in the garden.</textarea>
            <br>
            <input type="submit" class="btn btn-primary">
        </form>
    </div>

</div>
</body>

</html>