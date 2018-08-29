<div id="preloader">
    <i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i>
</div>

<header class="header_area">
    <div class="">
        <div class="header_content">
            <div class="row">
                <div class="col-md-3 col-sm-2">
                    <div class="logo">
                        <a href="{{ url('/') }}"><img src="{{ Voyager::image(setting('site.logo')) }}" alt="ITA Center"></a>                           
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>       
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