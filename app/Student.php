<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Student extends Model
{
    protected $table='students';

    protected $fillable = ['id', 'mssv', 'fullname', 'birthday', 'regular_class_id', 'has_certificate'];

    public $timestamps = true;

    public function center_classes()
    {
        return $this->belongsToMany('App\CenterClass', 'students_center_classes', 'student_id', 'center_class_id')
                    ->withPivot('center_class_id', 'student_id', 'test_score')
                    ->withTimestamps();
    }

    public function regular_classes()
    {
        return $this->belongsTo('App\RegularClass', 'regular_class_id');
    }
}
