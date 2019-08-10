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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
/// get  all countries
Route::get('get-countries','Api\PublicDataController@country');
//get all cites by country id
Route::post('get-cites','Api\PublicDataController@city');
//login
Route::post('login','Api\UserController@login');
Route::post('upload','Api\UploadController@upload_api');
//register
Route::post('register','Api\UserController@register');
Route::middleware(['auth:api'])->group(function (){
    Route::post('/upload_image_profile', 'Api\UserController@upload_image_profile')->name('upload_image_profile');

    //// save project
    Route::post('/save-project','Api\ProjectController@save_project');
    //// get all  project
    Route::get('/get-projects','Api\ProjectController@get_project');
    ////delete project

    Route::post('/destroy','Api\ProjectController@destroy');
    //// update  project

    Route::post('/update-project','Api\ProjectController@update_project');

});