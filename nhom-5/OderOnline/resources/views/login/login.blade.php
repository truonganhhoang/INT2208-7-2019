<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đăng Nhập</title>
    <script src="../bootstrap/jquery.min.js"></script>
    <link rel="stylesheet" href="../bootstrap/bootstrap.min.css">
    <script src="../bootstrap/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/login.css">

</head>
<body>
<div class="container-fluid">

    <div class="col-sm-6 col-sm-offset-3 login">
        <div class="form-group">
            <div class="top">
                <h3 class="head">Đăng Nhập</h3>
            </div>
            <form method="POST" action="{{route('postlogin')}}">
                @csrf
                @if(Session::has('error'))
                    <div class="alert alert-danger">
                        {{Session::get('error')}}
                    </div>
                @endif
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input id="email" type="text" class="form-control" name="email" placeholder="Email">
                </div>
                <div class="input-group" style="margin-top: 30px">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input id="password" type="password" class="form-control" name="password" placeholder="Password">
                </div>
                <div class="remember">
                    <input type="checkbox" name="Remember" value="Remmberme"><span style="color: white;margin-left: 2px;position: relative;top: -2px">Remember Me</span>
                </div>
                <div>
                    <a href="#" target="_blank" id = "qmk">Quên mật khẩu</a>
                    <br>
                    <input class="sign form-inline btn btn-danger" type="submit" value="ĐĂNG NHẬP">
                    <a href="{{route('loginwithfb','facebook')}}" class="sign form-inline" id="loginfb">LOGIN WITH FACEBOOK</a>
                  <!--  <a href="{{route('home')}}" class="backtohome">TRỞ LẠI</a> -->
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>