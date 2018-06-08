<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ExcelController extends Controller
{
    public function getImportStudents(){
        return view('backend.excels.import-students');
    }
}
