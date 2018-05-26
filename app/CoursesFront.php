<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class CoursesFront extends Model
{
    protected $table='courses_fronts';

    protected $fillable = ['id', 'name', 'description', 'image', 'icon'];

    public $timestamps = true;
}
