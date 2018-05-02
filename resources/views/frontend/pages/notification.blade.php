@extends('frontend.layouts.master')

@section('title', 'Thông Báo')

@section('content')
    <section class="breadcrumb_area">
        <div class="breadcrumb_top">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_title section-padding">
                        <h2>Thông báo</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="breadcrumb_bottom">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_nav">
                        <div class="col-sm-5">
                            <h2>Thông báo</h2>
                        </div>
                        <div class="col-sm-7">
                            <ul>
                                <li><a href="index-2.html">Trang chủ</a></li>
                                <li>Thông báo</li>
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
                    <div class="section_heading">
                        <h1>Thông báo từ Trung tâm</h1>
                        <p>Cập nhật mới nhất đến các bạn học viên</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="all_latest_blog_post">
                    <div class="col-md-4 col-sm-6">
                        <div class="single_blog_post_box">
                            <div class="blog_post_photo">
                                <img src="{{ asset('/assets/main-project/img/latest_blog_post_4.jpg') }}" alt="">
                                <div class="blog_post_date_caption">
                                    <span>08 Apr</span>
                                </div>
                            </div>
                            <div class="blog_post_txt">
                                <div class="blog_post_heading">
                                    <h2><a href="single-post.html">Love life's sweetest reward Let it</a></h2>
                                    <p>Posted By : Admin</p>
                                </div>
                                <div class="blog_post_content">
                                    <p>A man is born he's a man of means. Then along come two they got nothin' but their jeans. Just two good ol' boys </p>
                                    <ul>
                                        <li><i class="pe-7s-comment"></i>7 Comments</li>
                                        <li><i class="pe-7s-like"></i>10 Likes</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="single_blog_post_box">
                            <div class="blog_post_photo">
                                <img src="{{ asset('/assets/main-project/img/latest_blog_post_5.jpg') }}" alt="">
                                <div class="blog_post_date_caption">
                                    <span>08 Apr</span>
                                </div>
                            </div>
                            <div class="blog_post_txt">
                                <div class="blog_post_heading">
                                    <h2><a href="single-post.html">fateful trip that started tropic</a></h2>
                                    <p>Posted By : Admin</p>
                                </div>
                                <div class="blog_post_content">
                                    <p>Movin' on up to the east side. We finally got a piece of the pie. We're gonna do it. On your mark get set and go now.</p>
                                    <ul>
                                        <li><i class="pe-7s-comment"></i>7 Comments</li>
                                        <li><i class="pe-7s-like"></i>20 Likes</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-offset-0 col-md-4 col-sm-6 col-sm-offset-3">
                        <div class="single_blog_post_box">
                            <div class="blog_post_photo">
                                <img src="{{ asset('/assets/main-project/img/latest_blog_post_6.jpg') }}" alt="">
                                <div class="blog_post_date_caption">
                                    <span>08 Apr</span>
                                </div>
                            </div>
                            <div class="blog_post_txt">
                                <div class="blog_post_heading">
                                    <h2><a href="single-post.html">Rockin' and rollin' all week long</a></h2>
                                    <p>Posted By : Admin</p>
                                </div>
                                <div class="blog_post_content">
                                    <p>where people come to see ‘em. They really are a scream the Addams Family. The Love Boat soon will be making another run. </p>
                                    <ul>
                                        <li><i class="pe-7s-comment"></i>11 Comments</li>
                                        <li><i class="pe-7s-like"></i>15 Likes</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="all_latest_blog_post">
                    <div class="col-md-4 col-sm-6">
                        <div class="single_blog_post_box">
                            <div class="blog_post_photo">
                                <img src="{{ asset('/assets/main-project/img/latest_blog_post_4.jpg') }}" alt="">
                                <div class="blog_post_date_caption">
                                    <span>08 Apr</span>
                                </div>
                            </div>
                            <div class="blog_post_txt">
                                <div class="blog_post_heading">
                                    <h2><a href="single-post.html">Love life's sweetest reward Let it</a></h2>
                                    <p>Posted By : Admin</p>
                                </div>
                                <div class="blog_post_content">
                                    <p>A man is born he's a man of means. Then along come two they got nothin' but their jeans. Just two good ol' boys </p>
                                    <ul>
                                        <li><i class="pe-7s-comment"></i>7 Comments</li>
                                        <li><i class="pe-7s-like"></i>10 Likes</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="single_blog_post_box">
                            <div class="blog_post_photo">
                                <img src="{{ asset('/assets/main-project/img/latest_blog_post_5.jpg') }}" alt="">
                                <div class="blog_post_date_caption">
                                    <span>08 Apr</span>
                                </div>
                            </div>
                            <div class="blog_post_txt">
                                <div class="blog_post_heading">
                                    <h2><a href="single-post.html">fateful trip that started tropic</a></h2>
                                    <p>Posted By : Admin</p>
                                </div>
                                <div class="blog_post_content">
                                    <p>Movin' on up to the east side. We finally got a piece of the pie. We're gonna do it. On your mark get set and go now.</p>
                                    <ul>
                                        <li><i class="pe-7s-comment"></i>7 Comments</li>
                                        <li><i class="pe-7s-like"></i>20 Likes</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-offset-0 col-md-4 col-sm-6 col-sm-offset-3">
                        <div class="single_blog_post_box">
                            <div class="blog_post_photo">
                                <img src="{{ asset('/assets/main-project/img/latest_blog_post_6.jpg') }}" alt="">
                                <div class="blog_post_date_caption">
                                    <span>08 Apr</span>
                                </div>
                            </div>
                            <div class="blog_post_txt">
                                <div class="blog_post_heading">
                                    <h2><a href="single-post.html">Rockin' and rollin' all week long</a></h2>
                                    <p>Posted By : Admin</p>
                                </div>
                                <div class="blog_post_content">
                                    <p>where people come to see ‘em. They really are a scream the Addams Family. The Love Boat soon will be making another run. </p>
                                    <ul>
                                        <li><i class="pe-7s-comment"></i>11 Comments</li>
                                        <li><i class="pe-7s-like"></i>15 Likes</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection