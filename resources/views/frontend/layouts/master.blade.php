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
        <title>@yield('title') | Trung Tâm CNTT & MTUD</title>

        <meta name="description" content="@yield('description')">
        <meta name="keywords" content="Trung Tâm CNTT ĐH KH, Đại Học KHánh Hòa, @yield('keywords')">
        <meta name="author" content="Trung Tâm CNTT&MTUD" />
        <meta http-equiv="content-language" content="{{ app()->getLocale() }}" />
        <meta name="robots" content="index, follow">
        <meta name="revisit-after" content="3 days">
        <meta name="geo.region" content="VN-34" />
        <meta name="geo.position" content="12.245787, 109.194826" />
        <meta name="ICBM" content="12.245787, 109.194826" />
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- FB Open Graph Tags -->
        <meta property="fb:app_id"        content="" />
        <meta property="og:url"           content="@yield('fb_url')" />
        <meta property="og:type"          content="@yield('fb_type')" />
        <meta property="og:title"         content="@yield('fb_title')" />
        <meta property="og:description"   content="@yield('fb_des')" />
        <meta property="og:image"         content="@yield('fb_img')" />

        @include('frontend.partials.head')
    </head>
    
    <body>
        <!-- Facebook JavaScript SDK -->
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.1&appId=534064153706931&autoLogAppEvents=1';
        fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>

        @include('frontend.partials.header')

        @yield('content')

        @include('frontend.partials.footer')
    </body>
</html>
