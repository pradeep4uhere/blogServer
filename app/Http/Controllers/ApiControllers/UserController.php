<?php

namespace App\Http\Controllers\ApiControllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\User;
use Auth;

class UserController extends Controller
{
    
    /*
     * Get the User List
     */
    function getUserList(Request $request){
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');
        $users = \App\Model\User::all();
        $res=array('status'=>'success','results'=>$users);
        return response($res);
    }


    /*
     * Save the User 
     */
    function saveUser(Request $request){
        $res= array('status'=>'error','last_id'=>0,'code'=>402); 
        $user = new User();
        $user->first_name = $request->get('first_name');
        $user->last_name = $request->get('last_name');
        $user->email_address = $request->get('email_address');
        $user->password = bcrypt($request->get('password'));
        $user->created_at = date('Y-m-d H:i:s');
        $user->save();
        if($user->id){
            $res= array('status'=>'success','last_id'=>$user->id,'code'=>200); 
        }else{
            $res= array('status'=>'error','last_id'=>0,'code'=>402); 
        }
        return response($res);
        
    }



    /*
     * Login User 
     */
    function loginUser(Request $request){
        $res= array('status'=>'error','login'=>false,'code'=>402); 
        $password = $request->get('password');
        $email_address = $request->get('email_address');
        $remember=true;
        $credentials = $request->only('email_address', 'password');
        if (Auth::attempt($credentials)) {
            $res= array('status'=>'success','msg'=>'!! Success !!','user'=>Auth::user(),'code'=>200); 
        }else{
            $res= array('status'=>'error','msg'=>'Invalid Login Credentials!!','code'=>402);         
        }
        return response($res);
    }
    
    



}
