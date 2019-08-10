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

use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

Route::group(['prefix' => LaravelLocalization::setLocale()], function () {

    Route::get('/', function () {

        if (Auth::check()) {
            //The user is logged in...
            return redirect('/admin');
        } else {
            return view('auth.login');
        }
    });
    Auth::routes();
});


Route::group([
    'prefix' => LaravelLocalization::setLocale(),
    'middleware' => ['auth','localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
], function () {
    Route::group(['middleware' => ['admin'],'prefix'=>'admin'], function () {
        Route::get('/', 'HomeController@index')->name('home');
        /////////////////////////////////////////////////////////////admins
        Route::get('admins/get_admins','Backend\AdminsController@getAnyDate')->name('admins.get_admins');
        Route::resource('admins','Backend\AdminsController');
        Route::post('/upload_avatar_profile', 'Backend\DataController@upload_image_profile')->name('upload_avatar_profile');
        //////////////////////////////////////country
        Route::get('nationality/get_nationality','Backend\CountriesController@getAnyDate')->name('nationality.get_nationality');
        Route::resource('nationality','Backend\CountriesController');
        ///////////// cities
        Route::get('cities/get_cities','Backend\CitiesController@getAnyDate')->name('cities.get_cities');
        Route::resource('cities','Backend\CitiesController');
        ///////// role
        Route::resource('roles', 'Backend\RoleController');
        /////////// client
        Route::get('clients/get_clients','Backend\ClientsController@getAnyDate')->name('clients.get_clients');
        Route::resource('clients','Backend\ClientsController');
        /////////// project
        Route::get('project/get_project','Backend\ProjectController@getAnyDate')->name('project.get_project');
        Route::resource('project','Backend\ProjectController');

    });
});
