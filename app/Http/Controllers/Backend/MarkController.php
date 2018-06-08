<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CenterClass;
use App\StudentsCenterClass;

class MarkController extends Controller
{
    public function getAdd($center_class_id)
    {
        $center_class = CenterClass::findOrFail($center_class_id);
        
        return view('backend.marks.add')->with('center_class', $center_class);
    }

    public function postAdd(Request $request)
    {
        $center_class_id = $request->input('center_class_id');
        $marks = $request->input('mark');

        foreach($marks as $student_id => $test_score){
            StudentsCenterClass::where('center_class_id', $center_class_id)
            ->where('student_id', $student_id)
            ->update(['test_score' => $test_score]);
        }

        return back()->with(['message' => "Your have saved mark successfully! ", 'alert-type' => 'success']);;
    }
}
