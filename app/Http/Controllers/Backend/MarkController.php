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
        $process_scores = $request->input('process_score');
        // dd($process_scores[102]);
        $test_scores = $request->input('test_score');

        foreach($test_scores as $student_id => $test_score){
            StudentsCenterClass::where('center_class_id', $center_class_id)
            ->where('student_id', $student_id)
            ->update([
                'test_score' => $test_score,
                'process_score' => $process_scores[$student_id],
                'final_score' => ($test_score+$process_scores[$student_id])/2
            ]);
        }

        return back()->with(['message' => "Your have saved mark successfully! ", 'alert-type' => 'success']);;
    }
}
