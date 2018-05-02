@extends('frontend.layouts.master')

@section('title', 'Thông Báo')

@section('content')
    <section class="breadcrumb_area">
        <div class="breadcrumb_top">
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
                                <li><a href="index-2.html">Trang chủ</a></li>
                                <li>Liên hệ</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="send_us_email_area">
        <div class="container">
            <div class="row">
                <div class="col-sm-offset-6 fix_p">
                    <div class="send_email">
                        <div class="section-padding">
                            <h2>Hãy liên hệ với chúng tôi</h2>
                            <div class="email_form">
                                <form action="http://wpmines.com/demos/educampus/contact.html">
                                    <div class="col-md-6 fix_p_r">
                                        <label>Tên của bạn <span>*</span></label>
                                        <input type="text">
                                    </div>
                                    <div class="col-md-6 fix_p_r">
                                        <label>E-mail<span>*</span></label>
                                        <input type="text">
                                    </div>
                                    <div class="col-md-6 fix_p_r">
                                        <label>Số điện thoại</label>
                                        <input type="text">
                                    </div>
                                    <div class="col-md-6 fix_p_r">
                                        <label>Chủ đề</label>
                                        <input type="text">
                                    </div>
                                    <div class="col-md-12 fix_p_r">
                                        <label>Nội dung</label>
                                        <textarea name="" cols="30" rows="10"></textarea>
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