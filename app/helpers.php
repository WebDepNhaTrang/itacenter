<?php

if(! function_exists('getAllCoursesFront')){
    function getAllCoursesFront(){
        $item = App\CoursesFront::all();
        return $item;
    }
}

if(! function_exists('getAllServicesFront')){
    function getAllServicesFront(){
        $item = App\ServicesFront::all();
        return $item;
    }
}

if(! function_exists('getAllTestimonialsFront')){
    function getAllTestimonialsFront(){
        $item = App\TestimonialsFront::all();
        return $item;
    }
}

/*
 * @select: string
 * @cat_id: number
 * @order_col: string
 * @order_by: asc/desc
 * @paginate: number
 */
if(! function_exists('getAllPosts')){
    function getAllPosts($select='*', $cat_id, $order_col, $order_by='asc', $paginate = 3){
        $item = TCG\Voyager\Models\Post::select($select)
                    ->where(["status" => "PUBLISHED", "category_id" => $cat_id])
                    ->orderBy($order_col, $order_by)
                    ->paginate($paginate);
        return $item;
    }
}

/*
 * @select: string
 * @cat_id: number
 * @order_col: string
 * @order_by: asc/desc
 * @limit: number
 */
if(! function_exists('getLatestPosts')){
    function getLatestPosts($select='*', $cat_id, $order_col, $order_by='asc', $limit = 4){
        $item = TCG\Voyager\Models\Post::select($select)
                    ->where(["status" => "PUBLISHED", "category_id" => $cat_id])
                    ->orderBy($order_col, $order_by)
                    ->limit($limit)
                    ->get();
        return $item;
    }
}

/*
 * @select: string
 * @cat_id: number
 * @order_col: string
 * @order_by: asc/desc
 * @limit: number
 */
if(! function_exists('getLatestCourses')){
    function getLatestCourses($select='*', $order_col, $order_by='asc', $limit = 4){
        $item = App\CoursesFront::select($select)
                    ->orderBy($order_col, $order_by)
                    ->limit($limit)
                    ->get();
        return $item;
    }
}

/*
 * @select: string
 * @cat_id: number
 * @order_col: string
 * @order_by: asc/desc
 * @limit: number
 */
if(! function_exists('getLatestServices')){
    function getLatestServices($select='*', $order_col, $order_by='asc', $limit = 4){
        $item = App\ServicesFront::select($select)
                    ->orderBy($order_col, $order_by)
                    ->limit($limit)
                    ->get();
        return $item;
    }
}

/*
 * @select: string
 * @order_col: string
 * @order_by: asc/desc
 * @slug: string
 */
if(! function_exists('getGalleriesBySlug')){
    function getGalleriesBySlug($select='*', $order_col, $order_by='asc', $slug){
        $item = App\Gallery::select($select)
                    ->where('slug', $slug)
                    ->orderBy($order_col, $order_by)
                    ->first();
        return $item;
    }
}

if(! function_exists('shorten_text')){
    function shorten_text($text, $max_length = 140, $cut_off = '...', $keep_word = false)
    {
        if(strlen($text) <= $max_length) {
            return $text;
        }

        if(strlen($text) > $max_length) {
            if($keep_word) {
                $text = substr($text, 0, $max_length + 1);

                if($last_space = strrpos($text, ' ')) {
                    $text = substr($text, 0, $last_space);
                    $text = rtrim($text);
                    $text .=  $cut_off;
                }
            } else {
                $text = substr($text, 0, $max_length);
                $text = rtrim($text);
                $text .=  $cut_off;
            }
        }

        return $text;
    }
}