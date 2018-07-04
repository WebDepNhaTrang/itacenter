@extends('frontend.layouts.master')

@section('title', $service->name)

@section('content')
    <section class="breadcrumb_area">
        <div class="breadcrumb_top">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_title section-padding">
                        <h2>Dịch Vụ</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="breadcrumb_bottom">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_nav">
                        <div class="col-sm-5">
                            <h2>{{ $service->name }}</h2>
                        </div>
                        <div class="col-sm-7">
                            <ul>
                                <li><a href="{{ url('/') }}">Home</a></li>
                                <li>{{ $service->name }}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="single_post_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="single_blog_post_box">
                        <div class="blog_post_photo">
                            <img src="{{ Voyager::image($service->image) }}" alt="{{ $service->name }}">
                            <div class="blog_post_date_caption">
                                <span>{{ $service->created_at->format('d M') }}</span>
                            </div>
                        </div>
                        <div class="blog_post_txt">
                            <div class="blog_post_heading">
                                <h2><a href="{{ route('service.single', ['id' => $service->id]) }}">{{ $service->name }}</a></h2>
                                
                            </div>
                            <div class="blog_post_content">
                                {!! $service->body !!}
                            </div>
                            <div class="blog_post_footer">
                                <ul>
                                    <!-- <li><i class="pe-7s-comment"></i>11 Bình Luận</li> -->
                                    <li><i class="pe-7s-like"></i>13 Thích</li>
                                    <li><i class="pe-7s-look"></i>19 Lượt xem</li>
                                    <!-- <li class="blog_post_footer_right_item"><i class="pe-7s-ticket"></i>University, courses, college</li> -->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-7">
                    <aside>
                        <div class="right_sidebar">
                            <div class="all_right_widgets">
                                
                                <div class="sing_right_widget">
                                        <h2>Khóa Học Mới Nhất</h2>
                                    <div class="sing_right_widg_content">
                                        <ul class="lat_news_right">
                                            <?php
                                                $latest_services = getLatestServices('*', 'created_at', 'desc', 4);
                                            ?>
                                            @foreach($latest_services as $latest_service)
                                                @if($service->id != $latest_service->id)
                                                <li>
                                                    <img src="{{ Voyager::image($latest_service->image) }}" alt="{{ $latest_service->name }}" width="59">
                                                    <div class="lat_news_right_con">
                                                        <h3><a href="{{ route('course.single', ['id' => $latest_service->id]) }}">{{ $latest_service->name }}</a></h3>
                                                        <h4>{{ $latest_service->created_at->format('M d, Y') }}</h4>
                                                    </div>
                                                </li>
                                                @endif
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                                
                                <div class="sing_right_widget">
                                    <h2>Theo Dõi Chúng Tôi</h2>
                                    <div class="sing_right_widg_content">
                                        <div class="social_share_logo_right fix_m_r">
                                            <div class="col-md-4 col-sm-4 fix_p_l">
                                                <div class="single_social_share">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <span class="counter">5169</span>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4 fix_p_l">
                                                <div class="single_social_share">
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <span class="counter">3210</span>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-4 fix_p_l">
                                                <div class="single_social_share">
                                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                                    <span class="counter">2012</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </section>

@endsection