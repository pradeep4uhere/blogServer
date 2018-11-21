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
    return view('welcome');
});

Route::get('/user', function () {
    
});

Route::get('/user/home', function () {
    return view('user/home');
});





Route::group(['prefix'=>'user'], function () {
	Route::get('test','ApiControllers\UserController@testAction')->name('test');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/viewnotify', 'HomeController@readNotification')->name('viewNotification');
