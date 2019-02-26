@extends('frontend.layouts.master')

@section('title', 'Tin Tức')
@section('description', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')

@section('fb_url', route('frontend.pages.news'))
@section('fb_type', 'website')
@section('fb_title', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')
@section('fb_des', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')
@section('fb_img', Voyager::image(setting('site.logo')))

@section('content')
<section class="breadcrumb_area">
    <div class="breadcrumb_top" style="background: url({{ Voyager::image(setting('news.banner_image')) }}); background-size: 100%; background-repeat: no-repeat; background-attachment: fixed;">
        <div class="container">
            <div class="row">
                <div class="breadcrumb_title section-padding">
                    <h2>Tin tức</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="breadcrumb_bottom">
        <div class="container">
            <div class="row">
                <div class="breadcrumb_nav">
                    <div class="col-sm-5">
                        <h2>Tin tức</h2>
                    </div>
                    <div class="col-sm-7">
                        <ul>
                            <li><a href="{{ url('/') }}">Trang chủ</a></li>
                            <li>Tin tức</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="alumni_info_area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section_heading">
                    <h1>{{ setting('news.heading') }}</h1>
                    <p>{{ setting('news.sub_heading') }}</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="all_alumni_item">
                <?php
                    $paginate = setting('news.paginate');
                    $posts = getAllPosts('*', 1, 'created_at', 'desc', $paginate);
                ?>
                @foreach($posts as $post)
                <div class="col-sm-6">
                    <div class="single_alumni_box">
                        <div class="col-sm-4 fix_p_l">
                            <div class="sing_alumni_photo">
                                <a href="{{ route('post.single', ['slug' => $post->slug]) }}">
                                    <img src="{{ Voyager::image($post->image) }}" alt="{{ $post->title }}">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-8 fix_p_l">
                            <div class="sing_alumni_txt">
                                <h2>{{ $post->title }}</h2>
                                <p>{{ $post->excerpt }}</p>
                                <a href="{{ route('post.single', ['slug' => $post->slug]) }}">Xem Thêm</a>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
        {{ $posts->links() }}
    </div>
</section>
@endsection