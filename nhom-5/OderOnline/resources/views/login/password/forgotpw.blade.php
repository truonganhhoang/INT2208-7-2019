@extends('page.master')
@section('content')
    <div class="container" style="margin-top: 5%;margin-bottom: 10%">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="form-body">
                    <div>
                        <h3 class="text-center">Reset password</h3>
                    </div>
                    <div class="tab-content">
                        <div id="sectionA" class="tab-pane fade in active">
                            <div class="innter-form">
                                <form  action="{{ route('password.email') }}"  method="post">
                                    @csrf
                                    <div class="card-body">
                                        <div class="card-header">
                                            Email Address
                                        </div>
                                        <div class="card-body">
                                            <input class="form-control" placeholder="" type="email">
                                            <br>
                                            <input class="btn btn-primary" value="Send Link Reset" type="submit">
                                        </div>

                                    </div>

                                </form>
                            </div>

                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
