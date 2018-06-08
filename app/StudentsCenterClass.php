<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class StudentsCenterClass extends Model
{
    protected $table='students_center_classes';

    protected $fillable = ['student_id', 'center_class_id', 'test_score'];

    public $timestamps = true;
}
