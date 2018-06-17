<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Excel;
use Illuminate\Support\Facades\Validator;

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

    // foreach ($data as $key => $value) {
    //     //print_r($value);
    //     $product_list[] = ['name' => $value->name, 'description' => $value->description, 'price' => $value->price];
    // }
    // if(!empty($product_list)){
    //     Product::insert($product_list);
    //     \Session::flash('success','File improted successfully.');
    // }
}
