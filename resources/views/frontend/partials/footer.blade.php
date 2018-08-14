<footer class="footer_area">
    <div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="footer_widgets">
                    <div class="col-md-4 col-sm-6">
                        <div class="single_footer_widget">
                            {!! setting('site.footer_left') !!}
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="single_footer_widget">
                            
                        </div>
                    </div>
                    
                    <div class="col-md-4 col-sm-6">
                        <div class="single_footer_widget">
                            {!! setting('site.footer_right') !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_bottom">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <p>{!! setting('site.footer_copyright') !!}</p>
                </div>
                <div class="col-sm-8">
                    <nav class="footer_menu">
                        <ul>
                            <li><a href="{{ url('/') }}">Trang chủ</a></li>
                            <li><a href="{{ url('/gioi-thieu') }}">Giới thiệu</a></li>
                            <li><a href="{{ url('/lien-he') }}">Liên hệ</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <a style="font-size: 13px;" class="developed" title="thiết kế web tại Nha Trang, thiết kế web Khánh Hòa, web đẹp nha trang" href="https://www.facebook.com/webdepnhatrang" target="_blank">Thiết kế và phát triển: KaTiSoft - Web Đẹp Nha Trang</a>
                </div>
            </div>
        </div>
    </div>
</footer>

<!-- jQuery Latest version -->
<script src="{{ asset('/assets/jquery/jquery.1.11.1.js') }}"></script>



<!-- Bootstrap JS -->
<script src="{{ asset('/assets/bootstrap/bootstrap.min.js') }}"></script>

<!-- jQuery Counterup and Waypoints -->
<script src="{{ asset('/assets/counterup-waypoints/waypoints.min.js') }}"></script>
<script src="{{ asset('/assets/counterup-waypoints/jquery.counterup.min.js') }}"></script>

<!-- jQuery easing -->
<script src="{{ asset('/assets/easing/jquery.easing.1.3.min.js') }}"></script>

<!-- jQuery owl carousel -->
<script src="{{ asset('/assets/carousel/owl.carousel.min.js') }}"></script>

<!-- WOW Animation -->
<script src="{{ asset('/assets/wow/wow.min.js') }}"></script>
    
<!--Activating WOW Animation only for modern browser-->
<!--[if !IE]><!-->
    <script type="text/javascript">new WOW().init();</script>
<!--<![endif]-->		

<!--Oh Yes, IE 9+ Supports animation, lets activate for IE 9+-->
<!--[if gte IE 9]>
    <script type="text/javascript">new WOW().init();</script>
<![endif]-->		 

<!--Opacity & Other IE fix for older browser-->
<!--[if lte IE 8]>
    <script type="text/javascript" src="js/ie-opacity-polyfill.js"></script>
<![endif]-->	    

<!-- jQuery main script -->
<script src="{{ asset('/assets/main-project/js/main.js') }}"></script>