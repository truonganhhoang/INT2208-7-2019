@extends('page.master')
@section('title')
    Trang cá nhân
@stop
@section('content')
    <div class="container">
        <div class="row profile">
            <div class="col-md-3">
                <div class="profile-sidebar">
                    <!-- SIDEBAR USERPIC -->
                    <div class="profile-userpic">
                        <img src="http://keenthemes.com/preview/metronic/theme/assets/admin/pages/media/profile/profile_user.jpg" class="img-responsive" alt="">
                    </div>
                    <!-- END SIDEBAR USERPIC -->
                    <!-- SIDEBAR USER TITLE -->
                    <div class="profile-usertitle">
                        <div class="profile-usertitle-name">
                            {{$user->name}}
                        </div>
                        <div class="profile-usertitle-job">
                            @if($user->id == 1)
                                ADMIN
                            @else
                                Khách hàng
                            @endif
                        </div>
                    </div>
                    <!-- END SIDEBAR USER TITLE -->
                    <!-- SIDEBAR BUTTONS -->
                   <!-- <div class="profile-userbuttons">
                        <button type="button" class="btn btn-success btn-sm">Follow</button>
                        <button type="button" class="btn btn-danger btn-sm">Message</button>
                    </div>-->
                    <!-- END SIDEBAR BUTTONS -->
                    <!-- SIDEBAR MENU -->
                    <div class="profile-usermenu">
                        <ul class="nav">

                            <li id="info">
                                <a href="{{route('profile_user',$user->id)}}">
                                    <i class="glyphicon glyphicon-user"></i>
                                    Chỉnh sửa thông tin</a>
                            </li>
                            <li id="pw">
                                <a href="{{route('profile_user_pw',$user->id)}}" target="_parent">
                                    <i class="glyphicon glyphicon-ok"></i>
                                    Đổi mật khẩu </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="glyphicon glyphicon-flag"></i>
                                    Help </a>
                            </li>
                        </ul>
                    </div>
                    <!-- END MENU -->
                </div>
            </div>
            <div class="col-md-9" id="change">
                <div class="profile-content">
                    @yield('form')
                </div>
            </div>
        </div>
    </div>

@stop
@section('script')
    <script>
    $(document).ready(function(){
        $("#pw").click(function(){
            $(this).addClass("active");
            //  $("#info").removeClass("active");
        });




    });
    </script>
@stop