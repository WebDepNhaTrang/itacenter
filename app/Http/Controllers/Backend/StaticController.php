<?php

namespace App\Http\Controllers\Backend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\CenterClass;

class StaticController extends Controller
{
    public function index(){
        $center_classes = CenterClass::all();

        return view('backend.statics.index', ['center_classes' => $center_classes]);
    }
}
