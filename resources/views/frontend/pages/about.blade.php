@extends('frontend.layouts.master')

@section('title', 'Giới Thiệu')
@section('description', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')

@section('fb_url', route('frontend.pages.about'))
@section('fb_type', 'website')
@section('fb_title', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')
@section('fb_des', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')
@section('fb_img', Voyager::image(setting('site.logo')))

@section('content')
    <section class="breadcrumb_area">
        <div class="breadcrumb_top" style="background: url({{ Voyager::image(setting('about.banner_image')) }}); background-size: 100%; background-repeat: no-repeat; background-attachment: fixed;">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_title section-padding">
                        <h2>Giới thiệu</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="breadcrumb_bottom">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_nav">
                        <div class="col-sm-5">
                            <h2>Giới thiệu</h2>
                        </div>
                        <div class="col-sm-7">
                            <ul>
                                <li><a href="{{ url('/') }}">Trang chủ</a></li>
                                <li>Giới thiệu</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="our_degrees_area">
        <div class="container">
            <div class="row">
                <div class="col-md-6 section-padding od_bg1">
                    <div class="our_degrees_txt">
                        <h2>{{ setting('about.block_left_heading') }}</h2>
                        <p>
                            {!! setting('about.block_left_content') !!}
                        </p>
                    </div>
                </div>
                <div class="col-md-6 section-padding od_bg2">
                    <div class="our_degrees_item">
                        <div class="single_our_degree">
                            <div class="col-sm-3">
                                <div class="sing_degree_icon">
                                    <img src="{{ Voyager::image(setting('about.block_right_icon1')) }}" alt="">
                                </div>
                            </div>
                            <div class="col-sm-9 fix_p">
                                <div class="sing_degree_txt">
                                    <h2>{{ setting('about.block_right_heading1') }}</h2>
                                    <p>{{ setting('about.block_right_content1') }}</p>
                                </div>
                            </div>
                        </div>
                        <div class="single_our_degree">
                            <div class="col-sm-3">
                                <div class="sing_degree_icon">
                                    <img src="{{ Voyager::image(setting('about.block_right_icon2')) }}" alt="">
                                </div>
                            </div>
                            <div class="col-sm-9 fix_p">
                                <div class="sing_degree_txt">
                                    <h2>{{ setting('about.block_right_heading2') }}</h2>
                                    <p>{{ setting('about.block_right_content2') }}</p>
                                </div>
                            </div>
                        </div>
                        <div class="single_our_degree">
                            <div class="col-sm-3">
                                <div class="sing_degree_icon">
                                    <img src="{{ Voyager::image(setting('about.block_right_icon3')) }}" alt="">
                                </div>
                            </div>
                            <div class="col-sm-9 fix_p">
                                <div class="sing_degree_txt">
                                    <h2>{{ setting('about.block_right_heading3') }}</h2>
                                    <p>{{ setting('about.block_right_content3') }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="why_choose_us_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="why_choose_us_photo">
                        <img src="{{ Voyager::image(setting('home.why_section_image')) }}" alt="">
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="why_choose_us_txt">
                        <h1>{{ setting('home.why_section_heading') }}</h1>
                        <p>{!! setting('home.why_section_content') !!}</p>
                        
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="single_why_choose">
                                    <div class="single_why_choose_icon">
                                        <img src="{{ Voyager::image(setting('home.why_section_single1_icon')) }}" alt="">
                                    </div>
                                    <h3>{{ setting('home.why_section_single1_title') }}</h3>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="single_why_choose">
                                    <div class="single_why_choose_icon">
                                        <img src="{{ Voyager::image(setting('home.why_section_single2_icon')) }}" alt="">
                                    </div>
                                    <h3>{{ setting('home.why_section_single2_title') }}</h3>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="single_why_choose">
                                    <div class="single_why_choose_icon">
                                        <img src="{{ Voyager::image(setting('home.why_section_single3_icon')) }}" alt="">
                                    </div>
                                    <h3>{{ setting('home.why_section_single3_title') }}</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    @include('frontend.partials.testimonials')

@endsection