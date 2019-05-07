<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Wolf Store</title>
    <link rel="stylesheet" href="{{asset('css/frontend_css/bootstrap-337.min.css')}}">
    <link rel="stylesheet" href="{{asset('fonts/frontend_fonts/font-awsome/css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/frontend_css/style.css')}}">
</head>
<body>
<!--Header-part-->
@include('layouts.frontLayouts.header')
<!--Content-part-->
@yield('content')
<!--Footer-part-->
@include('layouts.frontLayouts.footer')

<script src="{{asset('js/frontend_js/jquery-331.min.js')}}"></script>
<script src="{{asset('js/frontend_js/bootstrap-337.min.js')}}"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>


</body>
</html>