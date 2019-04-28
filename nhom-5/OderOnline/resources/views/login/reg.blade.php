
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đăng Ký</title>
    <script src="../bootstrap/jquery.min.js"></script>
    <link rel="stylesheet" href="../bootstrap/bootstrap.min.css">
    <script src="../bootstrap/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/reg.css">

</head>
<body>
<div class="container-fluid">
    <div class="col-sm-6 col-sm-offset-3" style="margin-top: 10%;box-shadow: 10px 10px 10px 10px #9d9d9d;border-radius: 20px">
        <div class="form-group">
            <div class="top">
                <h3 class="head">Đăng Ký</h3>
            </div>
            <form method="POST" action="{{route('postreg')}}">
                @csrf
                @if (session('error'))
                    <div class="alert alert-danger">
                        {{ session('error') }}
                    </div>
                @endif

                @if (session('diff'))
                    <div class="alert alert-danger">
                        {{ session('diff') }}
                    </div>
                @endif
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input id="ten" type="text" class="form-control" name="name" placeholder="Tên đăng nhập">
                </div>
                <div class="input-group" style="margin-top: 30px">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input id="email" type="text" class="form-control" name="email" placeholder="Email">
                </div>
                @if($errors->has('email'))
                    <p  class="alert alert-danger">{{$errors->first('email')}}</p>
                @endif
                <div class="input-group" style="margin-top: 30px">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input id="password" type="password" class="form-control" name="password" placeholder="Mật khẩu">
                </div>
                @if($errors->has('password'))
                    <p  class="alert alert-danger">{{$errors->first('password')}}</p>
                @endif

                <div class="input-group" style="margin-top: 30px">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input id="password" type="password" class="form-control" name="againpassword" placeholder="Nhập lại mật khẩu">
                </div>

                @if($errors->has('againpassword'))
                    <p  class="alert alert-danger">{{$errors->first('againpassword')}}</p>
                @endif
                <button type="submit" class="btn btn-primary">Đăng ký</button>

            </form>
        </div>
    </div>
</div>
</body>
</html>
