@extends('frontend.layouts.master')

@section('title', 'Thông Báo')
@section('description', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')

@section('fb_url', route('frontend.pages.notification'))
@section('fb_type', 'website')
@section('fb_title', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')
@section('fb_des', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')
@section('fb_img', Voyager::image(setting('site.logo')))

@section('content')
    <section class="breadcrumb_area">
        <div class="breadcrumb_top" style="background: url({{ Voyager::image(setting('notification.banner_image')) }}); background-size: 100%; background-repeat: no-repeat; background-attachment: fixed;">
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
                                <li><a href="{{ url('/') }}">Trang chủ</a></li>
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
                        <h1>{{ setting('notification.heading') }}</h1>
                        <p>{{ setting('notification.sub_heading') }}</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="all_latest_blog_post">
                    <?php
                        $paginate = setting('notification.paginate');
                        $posts = getAllPosts('*', 2, 'created_at', 'desc', $paginate);
                        // echo $posts[0]->category->name;
                        // echo "<pre>";
                        // print_r($posts);
                        // echo "</pre>";
                    ?>
                    @foreach($posts as $post)
                        <div class="col-md-4 col-sm-6">
                            <div class="single_blog_post_box">
                                <div class="blog_post_photo">
                                    <img src="{{ Voyager::image($post->image) }}" alt="{{ $post->title }}">
                                    <div class="blog_post_date_caption">
                                        <span>{{ $post->created_at->format('d M') }}</span>
                                    </div>
                                </div>
                                <div class="blog_post_txt">
                                    <div class="blog_post_heading">
                                        <h2><a href="{{ route('post.single', ['slug' => $post->slug]) }}">{{ $post->title }}</a></h2>
                                        <p>Đăng bởi : {{ $post->authorId->name }}</p>
                                    </div>
                                    <div class="blog_post_content">
                                        <p>{{ $post->excerpt }}</p>
                                        <ul>
                                            <li><i class="pe-7s-comment"></i>7 Bình Luận</li>
                                            <li><i class="pe-7s-like"></i>10 Thích</li>
                                            <li><i class="pe-7s-look"></i>19 Lượt xem</li>
                                        </ul>
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