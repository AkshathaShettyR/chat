<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
//
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('register', 'API\RegisterController@register');
Route::post('login', 'API\RegisterController@login');
Route::post('logout', 'API\ProductController@logout');

Route::middleware('auth:api')->group( function () {

//    Route::resource('products', 'API\ProductController');//both will work
    Route::post('products-store', 'API\ProductController@store');
    Route::post('groupdetails', 'API\ProductController@groupdetails');
    Route::post('chatdetails', 'API\ProductController@chatdetails');
    Route::post('update-groupname', 'API\ProductController@update_groupname');
    Route::post('delete-groupname', 'API\ProductController@delete_groupname');
    Route::get('group-list', 'API\ProductController@group_list');
    Route::post('delete-group-user', 'API\ProductController@delete_group_user');
    Route::post('add-user', 'API\ProductController@add_user_to_group');
    Route::get('user-list', 'API\ProductController@user_list');
    Route::get('student-list', 'API\ProductController@student_list');
 Route::get('teacher-list', 'API\ProductController@teacher_list');

});
