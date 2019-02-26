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
        $students = Student::all();

        return view('backend.statistic.index', ['center_classes' => $center_classes, 'students' => $students]);
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
                    'message' => 'Dữ liệu rỗng',
                    'data'    => null
                ]);
            }
        }else{
            return response()
                ->json([
                    'result' => 'false',
                    'message' => 'Dữ liệu rỗng',
                    'data'    => null
                ]);
        }   
    }

    protected function renderStatisticByYear($data){
        $html ='<table class="table">';
        $html.='    <thead>';
        $html.='    <tr>';
        $html.='        <th>Lớp trung tâm</th>';
        $html.='        <th>Sinh viên (điểm >= 5)</th>';
        $html.='        <th>Sinh viên (điểm < 5)</th>';
        $html.='    </tr>';
        $html.='    </thead>';
        $html.='    <tbody>';
        foreach($data as $value){
            $students_over = StudentsCenterClass::where('center_class_id',$value['id'])
                                ->where('final_score', '>=', '5')->count();
            $students_under = StudentsCenterClass::where('center_class_id',$value['id'])
                                ->where('final_score', '<', '5')->count();
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
                    'message' => 'Statistic By Center Class',
                    'data'    => $html
                ]);
            }else{
                return response()
                ->json([
                    'result' => 'false',
                    'message' => 'Dữ liệu rỗng',
                    'data'    => null
                ]);
            }
        }else{
            return response()
                ->json([
                    'result' => 'false',
                    'message' => 'Dữ liệu rỗng',
                    'data'    => null
                ]);
        }   
    }

    protected function renderStatisticByCenterClass($data){
        $html ='<table class="table">';
        $html.='    <thead>';
        $html.='    <tr>';
        $html.='        <th>Họ Tên</th>';
        $html.='        <th>MSSV</th>';
        $html.='        <th>Điểm bộ phận</th>';
        $html.='        <th>Điểm thi</th>';
        $html.='        <th>Điểm tổng kết</th>';
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
            $html.='        <td>'.$value['process_score'].'</td>';
            $html.='        <td>'.$value['test_score'].'</td>';
            if($value['final_score'] >= 5){
                $class_color = 'style="color: blue;"';
                $student_pass++;
            }else{
                $class_color = 'style="color: red;"';
                $student_failed++;
            }
            $html.='        <td '.$class_color.'>'.$value['final_score'].'</td>';
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

    public function postStatisticByStudent(Request $request){
        $student_id = $request->input('student_id');
        if($student_id){
            $student_info = Student::findOrFail($student_id);

            if($student_info){

                $html = $this->renderStatisticByStudent($student_info);
                
                return response()
                ->json([
                    'result' => 'true',
                    'message' => 'Statistic By Student',
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

    protected function renderStatisticByStudent($student_info){

        $html = '<label class="col-md-3">MSSV:</label><label class="col-md-9">'.$student_info->mssv.'</label>';
        $html .= '<label class="col-md-3">Họ và tên:</label><label class="col-md-9">'.$student_info->fullname.'</label>';
        $html .= '<label class="col-md-3">Ngày sinh:</label><label class="col-md-9">'.\Carbon\Carbon::parse($student_info->birthday)->format('d/m/Y').'</label>';
        // Lớp chính quy
        if($student_info->regular_class_id){
            $html .= '<label class="col-md-3">Lớp chính quy:</label><label class="col-md-9">'.$student_info->regular_classes->name.'</label>';
        }else{
            $html .= '<label class="col-md-12">Lớp chính quy:</label>';
        }
        // Chứng chỉ word
        if($student_info->has_certificate_word == 0){
            $html .= '<label class="col-md-3">Chứng chỉ word:</label><label class="col-md-9">Chưa có</label>';
        }
        if($student_info->has_certificate_word == 1){
            $html .= '<label class="col-md-3">Chứng chỉ word:</label><label class="col-md-9">Đã có</label>';
        }
        // Chứng chỉ excel
        if($student_info->has_certificate_excel == 0){
            $html .= '<label class="col-md-3">Chứng chỉ excel:</label><label class="col-md-9">Chưa có</label>';
        }
        if($student_info->has_certificate_excel == 1){
            $html .= '<label class="col-md-3">Chứng chỉ excel:</label><label class="col-md-9">Đã có</label>';
        }
        // Năm học
        if($student_info->school_year){
            $html .= '<label class="col-md-3">Năm học:</label><label class="col-md-9">'.$student_info->school_year.'</label>';
        }else{
            $html .= '<label class="col-md-12">Năm học:</label>';
        }
        // Điện thoại
        if($student_info->phone){
            $html .= '<label class="col-md-3">Điện thoại:</label><label class="col-md-9">'.$student_info->phone.'</label>';
        }else{
            $html .= '<label class="col-md-12">Điện thoại:</label>';
        }
        // Giới tính
        if($student_info->gender == 0){
            $html .= '<label class="col-md-3">Giới tính:</label><label class="col-md-9">Nữ</label>';
        }
        if($student_info->gender == 1){
            $html .= '<label class="col-md-3">Giới tính:</label><label class="col-md-9">Nam</label>';
        }
        $html .= '<label class="col-md-12">Lớp trung tâm:</label>';
        $html .='<table class="table">';
        $html .='    <thead>';
        $html .='    <tr>';
        $html .='        <th>Mã lớp</th>';
        $html .='        <th>Năm học</th>';
        $html .='        <th>Điểm bộ phận</th>';
        $html .='        <th>Điểm thi</th>';
        $html .='        <th>Điểm tổng kết</th>';
        $html .='    </tr>';
        $html .='    </thead>';
        $html .='    <tbody>';
        foreach($student_info->center_classes as $value){
            $html.='    <tr>';
            $html.='        <td>'.$value->class_code.'</td>';
            $html.='        <td>'.$value->school_year.'</td>';
            $student_center_class = StudentsCenterClass::select('process_score','test_score','final_score')->where(['student_id'=>$student_info->id, 'center_class_id'=>$value->id])->first();
            $html.='        <td>'.$student_center_class->process_score.'</td>';
            $html.='        <td>'.$student_center_class->test_score.'</td>';
            if($student_center_class->final_score >= 5){
                $class_color = 'style="color: blue;"';
            }else{
                $class_color = 'style="color: red;"';
            }
            $html.='        <td '.$class_color.'>'.$student_center_class->final_score.'</td>';
            $html.='    </tr>';
        }   
        $html.='    </tbody>';
        $html.='</table>';

        

        return $html;
    }
}
