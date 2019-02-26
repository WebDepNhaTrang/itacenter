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

/*
|--------------------------------------------------------------------------
| Backend
|--------------------------------------------------------------------------
*/
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();

    // Mark For Center Class
    Route::get('/mark/add/{center_class_id}', [
        'uses'  => 'Backend\MarkController@getAdd',
        'as'    => 'backend.mark.getAdd'
    ]);
    Route::post('/mark/add', [
        'uses'  => 'Backend\MarkController@postAdd',
        'as'    => 'backend.mark.postAdd'
    ]);

    // Excel For Import Students
    Route::get('/excel/import-students', [
        'uses'  => 'Backend\ExcelController@getImportStudents',
        'as'    => 'backend.excel.getImportStudents'
    ]);
    Route::post('/excel/review-students', [
        'uses'  => 'Backend\ExcelController@postReviewStudents',
        'as'    => 'backend.excel.postReviewStudents'
    ]);
    Route::post('/excel/import-students', [
        'uses'  => 'Backend\ExcelController@postImportStudents',
        'as'    => 'backend.excel.postImportStudents'
    ]);

    // Statistic
    Route::get('/statistic', [
        'uses'  => 'Backend\StatisticController@index',
        'as'    => 'backend.statistic.index'
    ]);
    // Statistic By Year
    Route::post('/statistic-by-year', [
        'uses'  => 'Backend\StatisticController@postStatisticByYear',
        'as'    => 'backend.statistic.by_year'
    ]);
    // Statistic By Center Class
    Route::post('/statistic-by-center-class', [
        'uses'  => 'Backend\StatisticController@postStatisticByCenterClass',
        'as'    => 'backend.statistic.by_center_class'
    ]);
    // Statistic By Student
    Route::post('/statistic-by-student', [
        'uses'  => 'Backend\StatisticController@postStatisticByStudent',
        'as'    => 'backend.statistic.by_student'
    ]);
});

/*
|--------------------------------------------------------------------------
| Frontend
|--------------------------------------------------------------------------
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

// Courses Detail
Route::get('/khoa-hoc/{id}', [
    'uses'  => 'FrontendController@singleCourse',
    'as'    => 'course.single'
]);

Route::get('/dich-vu', function (){
    return view('frontend.pages.services');
})->name('frontend.pages.services');

// Services Detail
Route::get('/dich-vu/{id}', [
    'uses'  => 'FrontendController@singleService',
    'as'    => 'service.single'
]);

Route::get('/tin-tuc', function (){
    return view('frontend.pages.news');
})->name('frontend.pages.news');

Route::get('/thong-bao', function (){
    return view('frontend.pages.notification');
})->name('frontend.pages.notification');

// Liên hệ
Route::get('/lien-he', function (){
    return view('frontend.pages.contact');
})->name('frontend.pages.contact');
Route::post('contact', 'ContactController@store')->name('contact.store');



// Post Detail
Route::get('/{slug}', [
    'uses'  => 'FrontendController@singlePost',
    'as'    => 'post.single'
]);
