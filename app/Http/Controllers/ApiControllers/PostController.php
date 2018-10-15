<?php

namespace App\Http\Controllers\ApiControllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Post;

class PostController extends Controller
{
    //
    public function createNewPost(Request $request){
        if ($request->isMethod('post')) {
            $date = date('Y-m-d H:i:s');
            $post = new Post();
            $post->title = $request->get('title');
            $post->description = $request->get('description');
            $post->user_id = $request->get('user_id');
            $post->created_at = $date;
            $post->save();
            if($post->id){
                $res= array('status'=>'success','msg'=>'!! Success !!','last_id'=>$post->id,'code'=>200); 
            }else{
                $res= array('status'=>'error','msg'=>'!! Post Not Submiited !!','code'=>402); 
            }
        }
        return response($res);
    }


    /*
     *@Get All the Post List
     */
     public function getPostList(Request $request){
        $post = Post::orderBy('id', 'DESC')->get();
        if($post){
            $res= array('status'=>'success','msg'=>'!! Success !!','post'=>$post,'code'=>200); 
        }else{
            $res= array('status'=>'error','msg'=>'!! Somthing went wrong !!','code'=>402); 
        }
        return response($res);
     }





}
