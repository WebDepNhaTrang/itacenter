@extends('frontend.layouts.master')

@section('title', $course->name)

@section('content')
    <section class="breadcrumb_area">
        <div class="breadcrumb_top">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_title section-padding">
                        <h2>Khóa Học</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="breadcrumb_bottom">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_nav">
                        <div class="col-sm-5">
                            <h2>{{ $course->name }}</h2>
                        </div>
                        <div class="col-sm-7">
                            <ul>
                                <!--li><a href="{{ url('/') }}">Home</a></li>
                                <li>{{ $course->name }}</li-->
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
                            <img src="{{ Voyager::image($course->image) }}" alt="{{ $course->name }}">
                            <div class="blog_post_date_caption">
                                <span>{{ $course->created_at->format('d M') }}</span>
                            </div>
                        </div>
                        <div class="blog_post_txt">
                            <div class="blog_post_heading">
                                <h2><a href="{{ route('course.single', ['id' => $course->id]) }}">{{ $course->name }}</a></h2>
                                
                            </div>
                            <div class="blog_post_content">
                                {!! $course->body !!}
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
                                                $latest_courses = getLatestCourses('*', 'created_at', 'desc', 4);
                                            ?>
                                            @foreach($latest_courses as $latest_course)
                                                @if($course->id != $latest_course->id)
                                                <li>
                                                    <img src="{{ Voyager::image($latest_course->image) }}" alt="{{ $latest_course->name }}" width="59">
                                                    <div class="lat_news_right_con">
                                                        <h3><a href="{{ route('course.single', ['id' => $latest_course->id]) }}">{{ $latest_course->name }}</a></h3>
                                                        <h4>{{ $latest_course->created_at->format('M d, Y') }}</h4>
                                                    </div>
                                                </li>
                                                @endif
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                                
                                <div class="sing_right_widget">
                                    <h2>Theo Dõi Chúng Tôi</h2>
                                    {!! render_fanpage_fb() !!}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </section>
    @if($course->galleries)
    <section class="alumni_carousel">
        <div class="all_alumni_carousel_item">
            @foreach(json_decode($course->galleries) as $v)
            <div class="single_alumni_caro_photo">
                <img src="{{ Voyager::image($v) }}" alt="">
            </div>
            @endforeach
        </div>
    </section>
    @endif

@endsection