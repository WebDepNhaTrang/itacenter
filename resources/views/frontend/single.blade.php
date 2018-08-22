@extends('frontend.layouts.master')

@section('title', $post->title)

@section('content')
    <section class="breadcrumb_area">
        <div class="breadcrumb_top">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_title section-padding">
                        <h2>{{ $post->title }}</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="breadcrumb_bottom">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_nav">
                        <div class="col-sm-5">
                            <h2>{{ $post->category->name }}</h2>
                        </div>
                        <div class="col-sm-7">
                            <ul>
                                <!--li><a href="{{ url('/') }}">Home</a></li>
                                <li>{{ $post->title }}</li-->
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
                            <img src="{{ Voyager::image($post->image) }}" alt="{{ $post->title }}">
                            <div class="blog_post_date_caption">
                                <span>{{ $post->created_at->format('d M') }}</span>
                            </div>
                        </div>
                        <div class="blog_post_txt">
                            <div class="blog_post_heading">
                                <h2><a href="{{ route('post.single', ['slug' => $post->slug]) }}">{{ $post->title }}</a></h2>
                                <p>Đăng bởi : {{ $post->authorId->name }}</p>
                                <iframe src="https://www.facebook.com/plugins/like.php?href={{ route('post.single', ['slug' => $post->slug]) }}&width=146&layout=button_count&action=like&size=small&show_faces=false&share=true&height=46&appId=534064153706931" width="146" height="46" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
                            </div>
                            <div class="blog_post_content">
                                {!! $post->body !!}
                            </div>
                            <div class="fb-comments" data-href="{{ route('post.single', ['slug' => $post->slug]) }}" data-numposts="5" data-width="100%"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-7">
                    <aside>
                        <div class="right_sidebar">
                            <div class="all_right_widgets">
                                <div class="sing_right_widget">
                                    @if($post->category_id == 1)
                                        <h2>Tin Tức Mới Nhất</h2>
                                    @elseif($post->category_id == 2)
                                        <h2>Thông Báo Mới Nhất</h2>
                                    @endif
                                    
                                    <div class="sing_right_widg_content">
                                        <ul class="lat_news_right">
                                            <?php
                                                $latest_posts = getLatestPosts('*', $post->category_id, 'created_at', 'desc', 4);
                                            ?>
                                            @foreach($latest_posts as $latest_post)
                                                @if($post->slug != $latest_post->slug)
                                                <li>
                                                    <img src="{{ Voyager::image($latest_post->image) }}" alt="{{ $latest_post->title }}" width="59">
                                                    <div class="lat_news_right_con">
                                                        <h3><a href="{{ route('post.single', ['slug' => $latest_post->slug]) }}">{{ $latest_post->title }}</a></h3>
                                                        <h4>{{ $post->created_at->format('M d, Y') }}</h4>
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
                                <div class="sing_right_widget">
                                    <h2>Danh Mục</h2>
                                    <div class="sing_right_widg_content">
                                        <ul class="category_right">
                                            <li class="{{ ($post->category_id == 1)?'current-cat':'' }}"><a href="{{ url('/tin-tuc') }}"><i class="fa fa-angle-right"></i>Tin Tức ({{ $count_post_news }})</a></li>
                                            <li class="{{ ($post->category_id == 2)?'current-cat':'' }}"><a href="{{ url('/thong-bao') }}"><i class="fa fa-angle-right"></i>Thông Báo ({{ $count_post_noti }})</a></li>
                                        </ul>
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