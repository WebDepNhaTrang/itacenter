<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class CenterClass extends Model
{
    protected $table='center_classes';

    protected $fillable = ['id', 'class_code', 'class_type', 'school_year'];

    public $timestamps = true;

    public function students()
    {
        return $this->belongsToMany('App\Student', 'students_center_classes', 'center_class_id', 'student_id')
                    ->withPivot('center_class_id', 'student_id', 'process_score', 'test_score', 'final_score')
                    ->withTimestamps();
    }
}
