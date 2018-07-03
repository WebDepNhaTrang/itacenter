<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CenterClass;
use App\StudentsCenterClass;
use App\Student;

class StatisticController extends Controller
{
    public function index(){
        $center_classes = CenterClass::all();

        return view('backend.statistic.index', ['center_classes' => $center_classes]);
    }

    public function postStatisticByYear(Request $request){

        $year = $request->input('year');
        if($year){

            $center_classes = CenterClass::select('*')->where('school_year', $year)->get();

            if(!$center_classes->isEmpty()){

                $html = $this->renderStatisticByYear($center_classes);

                return response()
                ->json([
                    'result' => 'true',
                    'message' => 'Statistic By Year',
                    'data'    => $html
                ]);
            }else{
                return response()
                ->json([
                    'result' => 'false',
                    'message' => 'Empty Data',
                    'data'    => null
                ]);
            }
        }else{
            return response()
                ->json([
                    'result' => 'false',
                    'message' => 'Empty Data',
                    'data'    => null
                ]);
        }   
    }

    protected function renderStatisticByYear($data){
        $html ='<table class="table">';
        $html.='    <thead>';
        $html.='    <tr>';
        $html.='        <th>Center Class</th>';
        $html.='        <th>Students(>=5)</th>';
        $html.='        <th>Students(<5)</th>';
        $html.='    </tr>';
        $html.='    </thead>';
        $html.='    <tbody>';
        foreach($data as $value){
            $students_over = StudentsCenterClass::where('center_class_id',$value['id'])
                                ->where('test_score', '>=', '5')->count();
            $students_under = StudentsCenterClass::where('center_class_id',$value['id'])
                                ->where('test_score', '<', '5')->count();
            $html.='    <tr>';
            $html.='        <td>'.$value['class_code'].'</td>';
            $html.='        <td style="color: blue;">'.$students_over.'</td>';
            $html.='        <td style="color: red;">'.$students_under.'</td>';
            $html.='    </tr>';
        }   
        $html.='    </tbody>';
        $html.='</table>';

        return $html;
    }

    public function postStatisticByCenterClass(Request $request){

        $center_class_id = $request->input('center_class_id');
        if($center_class_id){

            $students_of_class = StudentsCenterClass::select('*')->where('center_class_id', $center_class_id)->get();

            if(!$students_of_class->isEmpty()){

                $html = $this->renderStatisticByCenterClass($students_of_class);
                
                return response()
                ->json([
                    'result' => 'true',
                    'message' => 'Statistic By Year',
                    'data'    => $html
                ]);
            }else{
                return response()
                ->json([
                    'result' => 'false',
                    'message' => 'Empty Data',
                    'data'    => null
                ]);
            }
        }else{
            return response()
                ->json([
                    'result' => 'false',
                    'message' => 'Empty Data',
                    'data'    => null
                ]);
        }   
    }

    protected function renderStatisticByCenterClass($data){
        $html ='<table class="table">';
        $html.='    <thead>';
        $html.='    <tr>';
        $html.='        <th>Fullname</th>';
        $html.='        <th>Student Code</th>';
        $html.='        <th>Test Score</th>';
        $html.='    </tr>';
        $html.='    </thead>';
        $html.='    <tbody>';
        $student_pass = 0;
        $student_failed = 0;
        foreach($data as $value){
            $student_current = Student::findOrFail($value['student_id']);
            $html.='    <tr>';
            $html.='        <td>'.$student_current->fullname.'</td>';
            $html.='        <td>'.$student_current->mssv.'</td>';
            if($value['test_score'] >= 5){
                $class_color = 'style="color: blue;"';
                $student_pass++;
            }else{
                $class_color = 'style="color: red;"';
                $student_failed++;
            }
            $html.='        <td '.$class_color.'>'.$value['test_score'].'</td>';
            $html.='    </tr>';
        }   
        $html.='    </tbody>';
        $html.='</table>';
        $html.='<div class="col-md-12" style="margin-top: 10px;">';
        $html.='<p style="color: blue;">The number of students passed: '.$student_pass.'</p>';
        $html.='<p style="color: red;">The number of students failed: '.$student_failed.'</p>';
        $html.='</div>';
        return $html;
    }
}
