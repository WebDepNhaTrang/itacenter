@extends('frontend.layouts.master')

@section('title', 'Giới Thiệu')

@section('content')
    <section class="breadcrumb_area">
        <div class="breadcrumb_top">
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
                                <li><a href="index-2.html">Trang chủ</a></li>
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
                        <h2>Chào mừng bạn</h2>
                        <p>
                            Trung tâm Công nghệ thông tin và Mỹ thuật ứng dụng ra đời với sự mệnh cao cả đem lại cho các học viên những khóa học tốt nhất, 
                            cập nhật công nghệ mới, 
                            giúp học viên không chỉ học mà còn có cơ hội gặp gỡ tiếp xúc với xu thế của tương lai. Bạn sẽ có đủ tự tin bước vào cuộc sống
                            khi có đủ hành trang cho tương lại.
                        </p>
                    </div>
                </div>
                <div class="col-md-6 section-padding od_bg2">
                    <div class="our_degrees_item">
                        <div class="single_our_degree">
                            <div class="col-sm-3">
                                <div class="sing_degree_icon">
                                    <img src="{{ asset('/assets/main-project/img/icon_our_degree_1.png') }}" alt="">
                                </div>
                            </div>
                            <div class="col-sm-9 fix_p">
                                <div class="sing_degree_txt">
                                    <h2>Công nghệ thông tin</h2>
                                    <p>You would see the biggest gift would be from me and the card attached would say thank you for being a friend.</p>
                                </div>
                            </div>
                        </div>
                        <div class="single_our_degree">
                            <div class="col-sm-3">
                                <div class="sing_degree_icon">
                                    <img src="{{ asset('/assets/main-project/img/icon_our_degree_2.png') }}" alt="">
                                </div>
                            </div>
                            <div class="col-sm-9 fix_p">
                                <div class="sing_degree_txt">
                                    <h2>Mỹ thuật ứng dụng</h2>
                                    <p>On your mark get set and go now. Got a dream and we just know now we're gonna make our dream come true. </p>
                                </div>
                            </div>
                        </div>
                        <div class="single_our_degree">
                            <div class="col-sm-3">
                                <div class="sing_degree_icon">
                                    <img src="{{ asset('/assets/main-project/img/icon_our_degree_3.png') }}" alt="">
                                </div>
                            </div>
                            <div class="col-sm-9 fix_p">
                                <div class="sing_degree_txt">
                                    <h2>Thiết kế thời trang</h2>
                                    <p>Just sit right back and you'll hear a tale a tale of a fateful trip that started from this tropic port aboard this tiny ship.</p>
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
                        <img src="{{ asset('/assets/main-project/img/why_choose_us_photo.jpg') }}" alt="">
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="why_choose_us_txt">
                        <h1>Lý do bạn nên chọn chúng tôi?</h1>
                        <p>The ship set ground on the shore of this uncharted desert isle with Gilligan the Skipper too the millionaire and his wife. These days are all Happy and Free. These days are all share them with me.</p>
                        <p>It's time to put on makeup. It's time to dress up right. It's time to raise the curtain on the Muppet Show tonight. </p>
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="single_why_choose">
                                    <div class="single_why_choose_icon">
                                        <img src="{{ asset('/assets/main-project/img/icon_why_choose_1.png') }}" alt="">
                                    </div>
                                    <h3>Experienced Faculty</h3>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="single_why_choose">
                                    <div class="single_why_choose_icon">
                                        <img src="{{ asset('/assets/main-project/img/icon_why_choose_2.png') }}" alt="">
                                    </div>
                                    <h3>Popular Courses</h3>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="single_why_choose">
                                    <div class="single_why_choose_icon">
                                        <img src="{{ asset('/assets/main-project/img/icon_why_choose_3.png') }}" alt="">
                                    </div>
                                    <h3>Guaranteed Career</h3>
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