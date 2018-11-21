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

Route::group(['middleware' => ['api', 'cors'],'prefix' => 'api/v1'],function(){
    Route::get('users','ApiControllers\UserController@getUserList');
    Route::get('sendemail','ApiControllers\UserController@sendEmailReminder');
    Route::get('notify','ApiControllers\UserController@notifys');
    Route::post('saveusers','ApiControllers\UserController@saveUser');
    Route::post('login','ApiControllers\UserController@loginUser');
    Route::post('getuserinfo','ApiControllers\UserController@getUserInfo');

    //For Post Controller
    Route::post('createpost','ApiControllers\PostController@createNewPost');
    Route::post('getuserpost','ApiControllers\PostController@getPostList');
});
