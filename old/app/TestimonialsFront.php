<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class TestimonialsFront extends Model
{
    protected $table='testimonials_fronts';

    protected $fillable = ['id', 'name', 'testimonial', 'image', 'job'];

    public $timestamps = true;
}
