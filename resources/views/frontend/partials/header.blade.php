<div id="preloader">
    <i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i>
</div>

<header class="header_area">
    <div class="container">
        <div class="header_content">
            <div class="row">
                <div class="col-md-3 col-sm-2">
                    <div class="logo">
                        <a href="{{ url('/') }}"><img src="{{ asset('/assets/main-project/img/logoITA.jpg') }}" alt="">ITA<span> Center</span></a>                           
                    </div>
                </div>                                    
                <div class="col-md-9 col-sm-10 nav_area">
                    <nav class="main_menu">
                        <div class="navbar-collapse collapse">
                            {{ menu('frontend', 'frontend.partials.main-menu') }}                                            
                        </div>
                    </nav>
                </div>
                
            </div>
        </div>
    </div>
</header>