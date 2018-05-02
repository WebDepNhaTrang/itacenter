@extends('frontend.layouts.master')

@section('title', 'Trang Chủ')

@section('content')
    <section class="key_to_success_area">
        <div class="container">
            <div class="row">
                <div class="key_to_success">
                    <div class="col-md-7">
                        <div class="key2seccess_txt">
                            <h2>Giáo dục là chìa khoá thành công!</h2>
                            <p>Love exciting and new. Come aboard were expecting you. Love life's sweetest reward Let it flow it floats back to you. Texas tea. A man is born he's a man of means you knew. </p>
                            
                        </div>
                    </div>
                    <div class="col-md-5 hidden-sm hidden-xs">
                        <div class="key2seccess_photo">
                            <img src="{{ asset('/assets/main-project/img/header_bottom_photo.png') }}" alt="">
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

    <section class="search_courses_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section_heading">
                        <h1>Hay đến với chúng tôi</h1>
                        <p>Để tận hưởng các khoá học và dịch vụ tốt nhất</p>
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

    <section class="latest_courses_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section_heading">
                        <h1>Dịch vụ của chúng tôi</h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="all_latest_course">
                    <div class="single_latest_courses">
                        <div class="sing_lat_course_photo">
                            <img src="{{ asset('/assets/main-project/img/latest_course_1.jpg') }}" alt="">
                        </div>
                        <div class="sing_lat_course_txt">
                            <h2>Thiết kế website trọn gói</h2>
                            <p>Here's the story of a lovely lady who was bringing up three very lovely girls.</p>
                            
                        </div>
                    </div>
                    <div class="single_latest_courses">
                        <div class="sing_lat_course_photo">
                            <img src="{{ asset('/assets/main-project/img/latest_course_2.jpg') }}" alt="">
                        </div>
                        <div class="sing_lat_course_txt">
                            <h2>Tư vấn thiết kế nội thất</h2>
                            <p>Here's the story of a lovely lady who was bringing up three very lovely girls.</p>
                            
                        </div>
                    </div>
                    <div class="single_latest_courses">
                        <div class="sing_lat_course_photo">
                            <img src="{{ asset('/assets/main-project/img/latest_course_3.jpg') }}" alt="">
                        </div>
                        <div class="sing_lat_course_txt">
                            <h2>Cung cấp mặt hàng mỹ thuật</h2>
                            <p>Here's the story of a lovely lady who was bringing up three very lovely girls.</p>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    @include('frontend.partials.testimonials')
    
@endsection