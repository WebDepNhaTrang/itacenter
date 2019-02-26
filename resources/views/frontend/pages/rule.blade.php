@extends('frontend.layouts.master')

@section('title', 'Thông Báo')
@section('description', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')

@section('fb_url', route('frontend.pages.notification'))
@section('fb_type', 'website')
@section('fb_title', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')
@section('fb_des', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')
@section('fb_img', Voyager::image(setting('site.logo')))

@section('content')
    <section class="breadcrumb_area">
        <div class="breadcrumb_top" style="background: url({{ Voyager::image(setting('notification.banner_image')) }}); background-size: 100%; background-repeat: no-repeat; background-attachment: fixed;">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_title section-padding">
                        <h2>Biểu mẫu và Quy trình</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="breadcrumb_bottom">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_nav">
                        <div class="col-sm-5">
                            <h2>Biểu mẫu và Quy trình</h2>
                        </div>
                        <div class="col-sm-7">
                            <ul>
                                <li><a href="{{ url('/') }}">Trang chủ</a></li>
                                <li>Biểu mẫu và Qui trình</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="latest_blog_post_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                {!! setting('site.bieumau-quitrinh') !!}
                </div>
            </div>
            
        </div>
    </section>
@endsection