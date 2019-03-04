<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Student extends Model
{
    protected $table='students';

    protected $perPage = 50; // other code

    protected $fillable = ['id', 'mssv', 'fullname', 'birthday', 'regular_class_id', 'has_certificate_word', 'has_certificate_excel', 'school_year', 'gender', 'phone'];

    public $timestamps = true;

    public function center_classes()
    {
        return $this->belongsToMany('App\CenterClass', 'students_center_classes', 'student_id', 'center_class_id')
                    ->withPivot('center_class_id', 'student_id', 'process_score', 'test_score', 'final_score')
                    ->withTimestamps();
    }

    public function regular_classes()
    {
        return $this->belongsTo('App\RegularClass', 'regular_class_id');
    }
}
