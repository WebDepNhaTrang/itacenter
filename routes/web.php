<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('frontend.pages.home');
})->name('frontend.pages.home');

Route::get('/gioi-thieu', function (){
    return view('frontend.pages.about');
})->name('frontend.pages.about');

Route::get('/khoa-hoc', function (){
    return view('frontend.pages.courses');
})->name('frontend.pages.courses');

Route::get('/tin-tuc', function (){
    return view('frontend.pages.news');
})->name('frontend.pages.news');

Route::get('/thong-bao', function (){
    return view('frontend.pages.notification');
})->name('frontend.pages.notification');

Route::get('/lien-he', function (){
    return view('frontend.pages.contact');
})->name('frontend.pages.contact');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
