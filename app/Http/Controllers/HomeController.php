<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Notifications\Seller;
use Illuminate\Support\Facades\Redis;
use App\User;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

	

	
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
  
    	Redis::set('name', 'Taylor');
    	echo Redis::get('name'); die;


        $product = array('id'=>'100','name'=>'This is new Product');
        $userId =Auth::User()->id;
        $userObj = User::find($userId);
        $request->user()->notify(new Seller($userObj));
       
        //return response()->json('Notification sent.', 201);
        $id= Auth::user()->id;    
        $user = User::find($id);
        $total = $user->unreadNotifications->count();
        return view('home',array(
                   'count'=>$total
                )
        );
    }



    public function readNotification(){
        $id= Auth::user()->id;    
        $user = User::find($id);
        $query = $user->unreadNotifications();
        $notifications = $query->get()->each(function ($n) {
            $n->created = $n->created_at->toIso8601String();
        });
        $allNotification = array();
        foreach ($user->unreadNotifications as $notification) {
        	$note = $notification->data;
        	$allNotification[] = $note;
        	$notification->markAsRead();
        }

        return view('notification.notification',array(
                   'notificationArr'=>$allNotification
                )
        ); 

    }


    public function getNotification(){
        $id= Auth::user()->id;    
        $user = User::find($id);
         // Limit the number of returned notifications, or return all
        $query = $user->unreadNotifications();
        $limit = (int) $request->input('limit', 0);
        if ($limit) {
            $query = $query->limit($limit);
        }
        $notifications = $query->get()->each(function ($n) {
            $n->created = $n->created_at->toIso8601String();
        });
        $total = $user->unreadNotifications->count();
        return compact('notifications', 'total');
    }
}
