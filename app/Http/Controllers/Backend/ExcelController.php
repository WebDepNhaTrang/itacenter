<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Excel;
use App\Student;
use Carbon\Carbon;

class ExcelController extends Controller
{
    public function getImportStudents(){
        return view('backend.excels.import-students');
    }

    // Ajax postReviewStudents
    public function postReviewStudents(Request $request){
        if($request->hasFile('students_file')){
            
            $extension = $request->students_file->extension();

            if ($extension == 'xlsx' || $extension == 'xls' || $extension == 'csv') {

                $path = $request->students_file->path();
                $rows = Excel::load($path)->get();

                return response()
                ->json([
                    'result' => 'true',
                    'message' => 'Review Import Students',
                    'data'    => $rows
                ]);

            }else{
                return response()
                ->json([
                    'result' => 'false',
                    'message' => 'Upload file is not formatted correctly!'
                ]);
            }

        }else{
            return response()
            ->json([
                'result' => 'false',
                'message' => 'File import is empty!'
            ]);
        }
    }

    public function postImportStudents(Request $request){
        if($request->hasFile('students_file')){
            
            $extension = $request->students_file->extension();

            if ($extension == 'xlsx' || $extension == 'xls' || $extension == 'csv') {

                $path = $request->students_file->path();
                $rows = Excel::load($path)->get();

                // dd($rows);

                foreach ($rows as $key => $value) {
                    // print_r($value);
                    $student_list[] = ['mssv' => $value->student_code, 'fullname' => $value->fullname, 'birthday' => $value->birthday, 'regular_class_id' => $value->regular_class, 'has_certificate' => $value->has_certificate, 'created_at' => Carbon::now()];
                }

                // dd($dups->get());
                if(!empty($student_list)){
                    Student::insertIgnore($student_list);
                    return response()
                    ->json([
                        'result' => 'true',
                        'message' => 'Import Students Succesfully!!!'
                    ]);
                }else{
                    return response()
                    ->json([
                        'result' => 'false',
                        'message' => 'File upload is empty!'
                    ]);
                }

            }else{
                return response()
                ->json([
                    'result' => 'false',
                    'message' => 'Upload file is not formatted correctly!'
                ]);
            }

        }else{
            return response()
            ->json([
                'result' => 'false',
                'message' => 'File import is empty!'
            ]);
        }
    }

    // foreach ($data as $key => $value) {
    //     //print_r($value);
    //     $product_list[] = ['name' => $value->name, 'description' => $value->description, 'price' => $value->price];
    // }
    // if(!empty($product_list)){
    //     Product::insert($product_list);
    //     \Session::flash('success','File improted successfully.');
    // }
}
