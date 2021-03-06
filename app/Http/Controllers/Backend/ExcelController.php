<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Excel;
use App\Student;
use App\RegularClass;
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
                    
                    $regular_class = RegularClass::where('class_code', $value->regular_class_code)->first();
                    // print($regular_class->id);
                    // die();
                    if($regular_class){
                        $student_list[] = [
                            'mssv' => $value->student_code,
                            'fullname' => $value->fullname,
                            'birthday' => $value->birthday,
                            'regular_class_id' => $regular_class->id,
                            'has_certificate_word' => $value->has_certificate_word,
                            'has_certificate_excel' => $value->has_certificate_excel,
                            'school_year' => $value->school_year,
                            'phone' => $value->phone,
                            'gender' => $value->gender,
                            'created_at' => Carbon::now()
                        ];
                    }
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
