<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Models\Post;
use App\CoursesFront;
use App\ServicesFront;

class FrontendController extends Controller
{
    public function singlePost($slug){
        $post = Post::where('slug', $slug)->first();
        
        $count_post_news = Post::where(["status" => "PUBLISHED", "category_id" => 1])->count();

        $count_post_noti = Post::where(["status" => "PUBLISHED", "category_id" => 2])->count();

        return view('frontend.single')->with('post', $post)
                                      ->with('count_post_news', $count_post_news)
                                      ->with('count_post_noti', $count_post_noti);
    }

    public function singleCourse($id){
        $course = CoursesFront::findOrFail($id);

        return view('frontend.single-course')->with('course', $course);
    }

    public function singleService($id){
        $service = ServicesFront::findOrFail($id);

        return view('frontend.single-service')->with('service', $service);
    }
}
