@extends('frontend.layouts.master')

@section('title', 'Khóa Học')

@section('content')
    <section class="breadcrumb_area">
        <div class="breadcrumb_top">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_title section-padding">
                        <h2>Khoá học</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="breadcrumb_bottom">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_nav">
                        <div class="col-sm-5">
                            <h2>Khoá học</h2>
                        </div>
                        <div class="col-sm-7">
                            <ul>
                                <li><a href="index-2.html">Trang chủ</a></li>
                                <li>Khoá học</li>
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
                        <h1>Khoá học của chúng tôi</h1>
                    </div>
                </div>
            </div>
            <div class="row all_our_courses">
                <div class="col-md-4 col-sm-6">
                    <div class="single_our_course">
                        <div class="sing_course_thumb">
                            <img src="{{ asset('/assets/main-project/img/single_course_thumb_1.png') }}" alt="">
                        </div>
                        <div class="sing_course_txt">
                            <img src="{{ asset('/assets/main-project/img/icon_course_1.png') }}" alt="" class="course_icon">
                            <h2>Thiết kế thời trang nhí</h2>
                            <p>Till the one day when the lady met this fellow and they knew it was much more than a hunch. It's time to put on makeup.</p>
                            <a href="#">Apply now <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single_our_course">
                        <div class="sing_course_thumb">
                            <img src="{{ asset('/assets/main-project/img/single_course_thumb_2.png') }}" alt="">
                        </div>
                        <div class="sing_course_txt">
                            <img src="{{ asset('/assets/main-project/img/icon_course_2.png') }}" alt="" class="course_icon">
                            <h2>Mỹ thuật cơ bản</h2>
                            <p>Till the one day when the lady met this fellow and they knew it was much more than a hunch. It's time to put on makeup.</p>
                            <a href="#">Apply now <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single_our_course">
                        <div class="sing_course_thumb">
                            <img src="{{ asset('/assets/main-project/img/single_course_thumb_3.png') }}" alt="">
                        </div>
                        <div class="sing_course_txt">
                            <img src="{{ asset('/assets/main-project/img/icon_course_3.png') }}" alt="" class="course_icon">
                            <h2>Thiết kế website</h2>
                            <p>Till the one day when the lady met this fellow and they knew it was much more than a hunch. It's time to put on makeup.</p>
                            <a href="#">Apply now <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single_our_course">
                        <div class="sing_course_thumb">
                            <img src="{{ asset('/assets/main-project/img/single_course_thumb_4.png') }}" alt="">
                        </div>
                        <div class="sing_course_txt">
                            <img src="{{ asset('/assets/main-project/img/icon_course_4.png') }}" alt="" class="course_icon">
                            <h2>Lập trình Ios</h2>
                            <p>Till the one day when the lady met this fellow and they knew it was much more than a hunch. It's time to put on makeup.</p>
                            <a href="#">Apply now <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single_our_course">
                        <div class="sing_course_thumb">
                            <img src="{{ asset('/assets/main-project/img/single_course_thumb_5.png') }}" alt="">
                        </div>
                        <div class="sing_course_txt">
                            <img src="{{ asset('/assets/main-project/img/icon_course_5.png') }}" alt="" class="course_icon">
                            <h2>Lập trình Android</h2>
                            <p>Till the one day when the lady met this fellow and they knew it was much more than a hunch. It's time to put on makeup.</p>
                            <a href="#">Apply now <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single_our_course">
                        <div class="sing_course_thumb">
                            <img src="{{ asset('/assets/main-project/img/single_course_thumb_6.png') }}" alt="">
                        </div>
                        <div class="sing_course_txt">
                            <img src="{{ asset('/assets/main-project/img/icon_course_6.png') }}" alt="" class="course_icon">
                            <h2>Chứng chỉ Mos</h2>
                            <p>Till the one day when the lady met this fellow and they knew it was much more than a hunch. It's time to put on makeup.</p>
                            <a href="#">Apply now <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    @include('frontend.partials.testimonials')

@endsection