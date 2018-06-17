@extends('frontend.layouts.master')

@section('title', 'Trang Chủ')

@section('content')
    <section class="key_to_success_area">
        <div class="container">
            <div class="row">
                <div class="key_to_success">
                    <div class="col-md-7">
                        <div class="key2seccess_txt">
                            <h2>{{ setting('home.banner_title') }}</h2>
                            <p>{{ setting('home.banner_content') }}</p>
                            
                        </div>
                    </div>
                    <div class="col-md-5 hidden-sm hidden-xs">
                        <div class="key2seccess_photo">
                            <img src="{{ Voyager::image(setting('home.banner_photo')) }}" alt="">
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
                        <h1>{{ setting('home.courses_section_heading') }}</h1>
                    </div>
                </div>
            </div>
            <div class="row all_our_courses">
                <?php
                    $courses = getAllCoursesFront();
                ?>
                @foreach($courses as $value)
                <div class="col-md-4 col-sm-6">
                    <div class="single_our_course">
                        <div class="sing_course_thumb">
                            <img src="{{ Voyager::image($value->image) }}" alt="{{ $value->name }}">
                        </div>
                        <div class="sing_course_txt">
                            <img src="{{ Voyager::image($value->icon) }}" alt="{{ $value->name }}" title="{{ $value->name }}" class="course_icon">
                            <h2>{{ $value->name }}</h2>
                            <p>{{ $value->description }}</p>
                            <a href="{{ route('course.single', $value->id) }}">Xem chi tiết <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>

    <section class="search_courses_area section-padding" style="background: url({{ Voyager::image(setting('home.invite_section_bg')) }}); background-attachment: fixed; background-size: cover;">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section_heading">
                        <h1>{{ setting('home.invite_section_heading') }}</h1>
                        <p>{{ setting('home.invite_section_content') }}</p>
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

    <section class="latest_courses_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section_heading">
                        <h1>{{ setting('home.services_section_heading') }}</h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="all_latest_course">
                    <?php
                        $services = getAllServicesFront();
                    ?>
                    @foreach($services as $value)
                        <div class="single_latest_courses">
                            <div class="sing_lat_course_photo">
                                <img src="{{ Voyager::image($value->image) }}" alt="{{ $value->name }}">
                            </div>
                            <div class="sing_lat_course_txt">
                                <h2>{{ $value->name }}</h2>
                                <p>{{ $value->description }}</p>
                                
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>

    @include('frontend.partials.testimonials')
    
@endsection