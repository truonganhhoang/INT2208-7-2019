@extends('page.profileMaster')
@section('form')
    <div class="header">
        <h4>Hồ sơ của tôi</h4>
        <p>Quản lý thông tin để bảo mật tài khoản</p>
    </div>
    <hr/>
    <form method="post" class="col-sm-6" style="margin-left: 10%" action="{{route("change_info",$user->id)}}">
        @csrf
        @method("put")
        <div class="form-inline">
            <label>Email</label>
            <span class="alert-info" style="margin-left: 8%">{{$user->email}}</span>
        </div>
        <div class="form-inline">
            <label>Phone</label>
            <input placeholder="" value="{{$user->phone}}" class="form-control" name="phone" style="margin-left: 8%">
        </div>
        <div class="form-inline">
            <label>Name</label>
            <input placeholder="" value="{{$user->name}}" class="form-control" name="name" style="margin-left: 8%">
        </div>
        <div class="form-inline">
            <label>Gender</label>
            <label style="margin-left: 8%"><input type="radio" value="male" name="gender">Nam</label>
            <label style="margin-left: 8%"><input type="radio" value="famale" name="gender">Nữ</label>


        </div>
        <input type="submit" value="Lưu" class="btn btn-danger">


    </form>
@stop


 <!--   <script>
        $(document).ready(function () {
           $('#account').click(function () {
              $('.profile-content').html('<div class="header">\n' +
                  '                        <h4>Hồ sơ của tôi</h4>\n' +
                  '                        <p>Quản lý thông tin để bảo mật tài khoản</p>\n' +
                  '                    </div>\n' +
                  '                    <hr/>\n' +
                  '                    <form method="post" class="col-sm-6" style="margin-left: 10%">\n' +
                  '                        @csrf\n' +
                  '                        @method("put")\n' +
                  '                        <div class="form-inline">\n' +
                  '                            <label>Email</label>\n' +
                  '                            <span class="alert-info" style="margin-left: 8%">{{$user->email}}</span>\n' +
                  '                        </div>\n' +
                  '                        <div class="form-inline">\n' +
                  '                            <label>Phone</label>\n' +
                  '                            <a href="#" style="text-decoration: none;margin-left: 7%">Thêm</a>\n' +
                  '                        </div>\n' +
                  '                        <div class="form-inline">\n' +
                  '                            <label>Name</label>\n' +
                  '                            <input placeholder="" value="{{$user->name}}" class="form-control" name="name" style="margin-left: 8%">\n' +
                  '                        </div>\n' +
                  '                        <div class="form-inline">\n' +
                  '                            <label>Gender</label>\n' +
                  '                            <label style="margin-left: 8%"><input type="radio" value="male" name="gender">Nam</label>\n' +
                  '                            <label style="margin-left: 8%"><input type="radio" value="famale" name="gender">Nữ</label>\n' +
                  '\n' +
                  '                        </div>\n' +
                  '                        <input type="submit" value="Lưu" class="btn btn-danger">\n' +
                  '\n' +
                  '\n' +
                  '                    </form>');
           });
           $("#changePassWord").click(function () {
              $('.profile-content').html('<div class="header">\n' +
                  '                        <h4>Hồ sơ của tôi</h4>\n' +
                  '                        <p>Thay đổi mật khẩu</p>\n' +
                  '                    </div>\n' +
                  '                    <hr>\n' +
                  '                    <form class="changePassWord col-sm-9" action="{{route("change_pw",$user->id)}}" method="post" style="margin-left: 10%">\n' +
                  '                        @csrf\n' +
                  '                        @method("put")\n' +
                  '                        @if (session("success"))\n' +
                  '                            <div class="alert-success">\n' +
                  '                                {{ session("success") }}\n' +
                  '                            </div>\n' +
                  '                        @endif\n' +
                  '                        @if (session("pw"))\n' +
                  '                            <div class="alert-danger">\n' +
                  '                                {{ session("pw") }}\n' +
                  '                            </div>\n' +
                  '                        @endif\n' +
                  '                        @if($errors->has("old_pw"))\n' +
                  '                            <p class="alert-danger">{{$errors->first("old_pw")}}</p>\n' +
                  '                        @endif\n' +
                  '                        <div class="old_pw form-inline">\n' +
                  '                            <label>Mật khẩu hiện tại</label>\n' +
                  '                            <input id="old_pw" class="form-control" type="password" name="old_pw" placeholder=""><span class="display_pw" style="margin-left:5px"><i class="far fa-eye fa-lg"></i></span>\n' +
                  '                        </div>\n' +
                  '                        @if($errors->has("new_pw"))\n' +
                  '                            <p class="alert-danger">{{$errors->first("new_pw")}}</p>\n' +
                  '                        @endif\n' +
                  '                        <div class="new_pw form-inline" style="margin-top: 20px;margin-bottom: 20px">\n' +
                  '                            <label>Mật khẩu mới</label>\n' +
                  '                            <input id="new_pw" class="form-control" type="password" name="new_pw" placeholder=""><span class="display_pw" style="margin-left:5px"><i class="far fa-eye fa-lg"></i></span>\n' +
                  '\n' +
                  '                        </div>\n' +
                  '                        @if($errors->has("new_pw_again"))\n' +
                  '                            <p class="alert-danger">{{$errors->first("new_pw_again")}}</p>\n' +
                  '                        @endif\n' +
                  '                        <div class="new_pw_again form-inline">\n' +
                  '                            <label>Nhập lại mật khẩu</label>\n' +
                  '                            <input class="form-control" type="password" name="new_pw_again" placeholder=""><span class="display_pw" style="margin-left:5px"><i class="far fa-eye fa-lg"></i></span>\n' +
                  '                        </div>\n' +
                  '                        <input type="submit" class="btn btn-primary" style="margin-top: 20px">\n' +
                  '\n' +
                  '\n' +
                  '\n' +
                  '                    </form>')
           });
           $(".display_pw").click(function () {
                alert("ook");
           });
        });
    </script>-->

