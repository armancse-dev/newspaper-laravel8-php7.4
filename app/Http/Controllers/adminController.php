<?php

namespace App\Http\Controllers;

// use Illuminate\Http\Request;
use DB;
use Session;
use Request;
if(version_compare(PHP_VERSION, '7.4.29', '>=')){
    error_reporting(E_ALL ^ E_NOTICE ^ E_WARNING);
}
class adminController extends Controller
{
    public function index(){
        return view ('backend.index');
    }
    public function viewcategory(){
        $data = DB::table('categories')->get();
        return view ('backend.categories.category', ['data' => $data]);
    }

    public function editCategory($id){
        $singledata = DB::table('categories')->where('cid', $id)->first();
        if($singledata == NULL){
            return redirect('viewcategory');
        }
        $data = DB::table('categories')->get();
        return view ('backend.categories.editcategory',['data' => $data,'singledata'=>$singledata]);
    }

    public function multipleDelete(){
        $data = Request::except('_token');
        if($data['bulk-action'] == 0){
            session::flash('message','Please select action you want to perform');
            return redirect()->back();

        }
        $tbl = decrypt($data['tbl']);
        $tblid = decrypt($data['tblid']);
        if(empty($data['select-data'])){
            session::flash('message','Please select the data you want to delete');
            return redirect()->back();
        }
        $ids = $data['select-data'];
        foreach($ids as $id){
            DB::table($tbl)->where($tblid,$id)->delete();
        }
        session::flash('message','Data Delete Successfully');
            return redirect()->back();
    }
    public function settings(){
        $data = DB::table('settings')->first();
        if($data){
            $data->social = explode('.',$data->social);

        }
        return view ('backend.settings',['data'=>$data]);
    }

    public function addPost(){
        $categories = DB::table('categories')->get();
        return view ('backend.posts.add-post',['categories'=>$categories]);
    }

    public function allPost(){
        $posts = DB::table('posts')->paginate(20);
        foreach($posts as $post){
            $categories = explode(',',$post->category_id);
            foreach($categories as $cat){
                $postcat = DB::table('categories')->where('cid',$cat)->value('title');
                $postcategories[] = $postcat;
                $postcat = implode(', ', $postcategories);
            }
            $post->category_id = $postcat;
            $postcategories = [];
        }

        return view('backend.posts.all-posts',['posts'=>$posts]);
    }

    public function editPost($id){
        $data = DB::table('posts')->where('pid', $id)->first();
        $postcat = explode(',',$data->category_id);
        $categories = DB::table('categories')->get();
        return view('backend.posts.edit', ['data'=>$data, 'categories'=> $categories, 'postcat'=>$postcat]);

    }
}
