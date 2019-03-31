@extends('page.master')
@section('content')
<div class="container" style="margin-top: 5%;margin-bottom: 5%">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="form-body">
                <div>
                    <h3 class="text-center">Login</h3>
                </div>
                <div class="tab-content">
                    <div id="sectionA" class="tab-pane fade in active">
                        <div class="innter-form">
                            <form  action="{{route('postlogin')}}" class="sa-innate-form" method="post">
                                @csrf
                                @if (session('login'))
                                    <div class="alert-success">
                                        {{ session('login') }}
                                    </div>
                                @endif

                                @if (session('error'))
                                    <div class="alert-danger">
                                        {{ session('error') }}
                                    </div>
                                @endif
                                <label>Email Address</label>
                                <input type="email" name="email">
                                <label>Password</label>
                                <input type="password" name="password">
                                <button type="submit">Sign In</button>

                               <a href="{{ route('forgot_pw')}}" style="text-decoration: none">Forgot Password?</a>
                            </form>
                        </div>
                        <div class="social-login">
                            <p>- - - - - - - - - - - - - Sign In With - - - - - - - - - - - - - </p>
                            <ul>
                                <li><a href="{{route('loginwithfb','facebook')}}"><i class="fab fa-facebook"></i> Facebook</a></li>
                                <li><a href=""><i class="fab fa-google-plus"></i> Google+</a></li>
                                <li><a href=""><i class="fab fa-twitter"></i> Twitter</a></li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
@stop
