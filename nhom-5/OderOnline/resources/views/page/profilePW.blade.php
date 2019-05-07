@extends('page.profileMaster')
@section('form')
    <div class="header">
        <h4>Hồ sơ của tôi</h4>
        <p>Thay đổi mật khẩu</p>
    </div>
    <hr>

    <form class="changePassWord col-sm-9" action="{{route("change_pw",$user->id)}}" method="post" style="margin-left: 10%">
        @csrf
        @method("put")
        @if (session('success'))
            <div class="alert-success">
                {{ session('success') }}
            </div>
        @endif
        @if (session('pw'))
            <div class="alert-danger">
                {{ session('pw') }}
            </div>
        @endif
        @if($errors->has("old_pw"))
            <p class="alert-danger">{{$errors->first("old_pw")}}</p>
        @endif
        <div class="old_pw form-inline">
            <label>Mật khẩu hiện tại</label>
            <input id="old_pw" class="form-control" type="password" name="old_pw" placeholder=""><span class="display_pw" style="margin-left:5px"></span>
        </div>
        @if($errors->has("new_pw"))
            <p class="alert-danger">{{$errors->first("new_pw")}}</p>
        @endif
        <div class="new_pw form-inline" style="margin-top: 20px;margin-bottom: 20px">
            <label>Mật khẩu mới</label>
            <input id="new_pw" class="form-control" type="password" name="new_pw" placeholder=""><span class="display_pw" style="margin-left:5px"></span>

        </div>
        @if($errors->has("new_pw_again"))
            <p class="alert-danger">{{$errors->first("new_pw_again")}}</p>
        @endif
        <div class="new_pw_again form-inline">
            <label>Nhập lại mật khẩu</label>
            <input class="form-control" type="password" name="new_pw_again" placeholder=""><span class="display_pw" style="margin-left:5px"></span>
        </div>
        <input type="submit" class="btn btn-primary" style="margin-top: 20px">



    </form>
@stop
@section('script')
    <script>
    $(document).ready(function(){
        $("#info").click(function(){
            $(this).addClass("active");
            $("#pw").removeClass("active");
        });
        $("#pw").click(function(){
            $(this).addClass("active");
            $("#info").removeClass("active");
        });
    });
    </script>
@stop