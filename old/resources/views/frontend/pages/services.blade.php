@extends('frontend.layouts.master')

@section('title', 'Dịch Vụ')
@section('description', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')

@section('fb_url', route('frontend.pages.services'))
@section('fb_type', 'website')
@section('fb_title', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')
@section('fb_des', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')
@section('fb_img', Voyager::image(setting('site.logo')))

@section('content')
    <section class="breadcrumb_area">
        <div class="breadcrumb_top" style="background: url({{ Voyager::image(setting('course.banner_image')) }}); background-size: 100%; background-repeat: no-repeat; background-attachment: fixed;">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_title section-padding">
                        <h2>Dịch vụ</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="breadcrumb_bottom">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_nav">
                        <div class="col-sm-5">
                            <h2>Dịch vụ</h2>
                        </div>
                        <div class="col-sm-7">
                            <ul>
                                <li><a href="{{ url('/') }}">Trang chủ</a></li>
                                <li>Dịch vụ</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="our_courses_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section_heading">
                        <h1>Dịch vụ của chúng tôi</h1>
                    </div>
                </div>
            </div>
            <div class="row all_our_courses">
                <?php
                    $courses = getAllServicesFront();
                ?>
                @foreach($courses as $value)
                <div class="col-md-4 col-sm-6">
                    <div class="single_latest_courses">
                        <div class="sing_lat_course_photo">
                            <a href="{{ route('service.single', $value->id) }}">
                                <img src="{{ Voyager::image($value->image) }}" alt="{{ $value->name }}">
                            </a>
                        </div>
                        <div class="sing_lat_course_txt">
                            <a href="{{ route('service.single', $value->id) }}"><h2>{{ $value->name }}</h2></a>
                            <p class="description">{{ shorten_text($value->description, 220, '...', true) }}</p>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>

    @include('frontend.partials.testimonials')

@endsection