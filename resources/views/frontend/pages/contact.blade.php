@extends('frontend.layouts.master')

@section('title', 'Liên Hệ')
@section('description', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')

@section('fb_url', route('frontend.pages.contact'))
@section('fb_type', 'website')
@section('fb_title', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')
@section('fb_des', 'Trung Tâm Công Nghệ Thông Tin & Mỹ Thuật Ứng Dụng - Trường Đại Học Khánh Hòa')
@section('fb_img', Voyager::image(setting('site.logo')))

@section('content')
    <section class="breadcrumb_area">
        <div class="breadcrumb_top" style="background: url({{ Voyager::image(setting('contact.banner_image')) }}); background-size: 100%; background-repeat: no-repeat; background-attachment: fixed;">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_title section-padding">
                        <h2>Liên hệ</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="breadcrumb_bottom">
            <div class="container">
                <div class="row">
                    <div class="breadcrumb_nav">
                        <div class="col-sm-5">
                            <h2>Liên hệ</h2>
                        </div>
                        <div class="col-sm-7">
                            <ul>
                                <li><a href="{{ url('/') }}">Trang chủ</a></li>
                                <li>Liên hệ</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="send_us_email_area" style="background: url({{ Voyager::image(setting('contact.image')) }}) no-repeat scroll left center / cover rgba(0, 0, 0, 0); overflow: hidden;">
        <div class="container">
            <div class="row">
                <div class="col-sm-offset-6 fix_p">
                    <div class="send_email">
                        <div class="section-padding">
                            <h2>{{ setting('contact.heading') }}</h2>
                            
                            <div class="email_form">
                                @if(Session::has('success'))
                                <div class="alert alert-success">
                                    {{ Session::get('success') }}
                                </div>
                                @endif
                                <form action="{{ route('contact.store') }}" method="post">
                                    @csrf
                                    <div class="col-md-6 fix_p_r">
                                        <label>Tên của bạn <span>*</span></label>
                                        <input type="text" name="name" required>
                                    </div>
                                    <div class="col-md-6 fix_p_r">
                                        <label>E-mail<span>*</span></label>
                                        <input type="email" name="email" required>
                                    </div>
                                    <div class="col-md-6 fix_p_r">
                                        <label>Số điện thoại <span>*</span></label>
                                        <input type="text" name="phone" required>
                                    </div>
                                    <div class="col-md-6 fix_p_r">
                                        <label>Chủ đề <span>*</span></label>
                                        <input type="text" name="obj" required>
                                    </div>
                                    <div class="col-md-12 fix_p_r">
                                        <label>Nội dung <span>*</span></label>
                                        <textarea name="msg" cols="30" rows="10" required></textarea>
                                        <input type="submit" value="Gửi"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="map_location_area">
        <div class="google_map">
            <div id="map_area"></div>
        </div>
    </section>

    <script>
        //popup google map
        //12.245887, 109.194832
        var center = new google.maps.LatLng(12.245887, 109.194832);

        function initialize() {

            var mapOptions = {
                zoom: 15,
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                center: center
            };

            map = new google.maps.Map(document.getElementById('map_area'), mapOptions);

            var marker = new google.maps.Marker({
                map: map,
                position: center
            });
        }
        initialize();
    </script>
@endsection