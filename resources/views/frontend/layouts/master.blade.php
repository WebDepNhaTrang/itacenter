<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if lt IE 7 ]> <html lang="en" class="ie6">    <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="ie7">    <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="ie8">    <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="ie9">    <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="{{ app()->getLocale() }}"><!--<![endif]-->
    
    <!-- Mirrored from wpmines.com/demos/educampus/ by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 31 Jul 2015 12:38:44 GMT -->
    <!-- Added by HTTrack -->
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
    <head>  
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>@yield('title') | TT CNTT&MTUD</title>

        @include('frontend.partials.head')
    </head>
    
    <body>
        @include('frontend.partials.header')

        @yield('content')

        @include('frontend.partials.footer')
    </body>
</html>
