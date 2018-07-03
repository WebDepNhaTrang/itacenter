<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CenterClass;
use App\StudentsCenterClass;

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
            $html.='        <td style="color: green;">'.$students_over.'</td>';
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
        $html.='        <th>Student</th>';
        $html.='        <th>Students(>=5)</th>';
        $html.='        <th>Students(<5)</th>';
        $html.='    </tr>';
        $html.='    </thead>';
        $html.='    <tbody>';
        foreach($data as $value){
            $html.='    <tr>';
            $html.='        <td>'.$value['id'].'</td>';
            $html.='        <td style="color: green;">'.$value['id'].'</td>';
            $html.='        <td style="color: red;">'.$value['id'].'</td>';
            $html.='    </tr>';
        }   
        $html.='    </tbody>';
        $html.='</table>';

        return $html;
    }
}
