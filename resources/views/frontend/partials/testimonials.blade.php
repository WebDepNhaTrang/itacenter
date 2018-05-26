<section class="testimonial_area section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section_heading">
                    <h1>{{ setting('home.testimonials_section_heading') }}</h1>
                    <p>{{ setting('home.testimonials_section_des') }}</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <div class="all_testimonial">
                    <?php
                        $testimonials = getAllTestimonialsFront();
                    ?>
                    @foreach($testimonials as $value)
                        <div class="single_testi_slider">
                            <div class="testi_student_photo">
                                <img src="{{ Voyager::image($value->image) }}" alt="{{ $value->name }}">
                                <i class="fa fa-quote-right"></i>
                            </div>
                            <div class="testi_studient_txt">
                                <p>{{ $value->testimonial }}</p>
                                <h3><span>{{ $value->name }}   |</span>   {{ $value->job }}</h3>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    <div class="testi_slider_nav">
        <i class="fa fa-angle-left testi_prev"></i>
        <i class="fa fa-angle-right testi_next"></i>
    </div>
</section>