<?php

namespace App\Http\Controllers\ApiControllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class UserController extends Controller
{
    /*
     * Get the User List
     */
    function getUserList(Request $request){
        header("Access-Control-Allow-Origin: http://127.0.0.1");
        $users = \App\Model\User::all();
        $res=array('status'=>'success','data'=>$users);
        return response($res); die;
    }


    /*
     * Save the User 
     */
    function saveUser(Request $request){
        dd(56656);
        return response($request);
        
    }



}
