<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class frontController extends Controller
{
    public function __construct(){
        $categories = DB::table('categories')->where('status', 'on')->get();
        $setting = DB::table('settings')->first();
        if($setting){
            $setting->social = explode(',',$setting->social);
            foreach($setting->social as $social){
                $icon= explode('.',$social);
                $icon = $icon[1];
                $icons[] =$icon;
            }
        }else{
            $icons = [];
        }
        view()->share([
            'categories' => $categories,
            'setting' => $setting,
            'icons' => $icons,
        ]);
    }
    public function index(){
        $featured = DB::table('posts')->where('category_id', 'LIKE', '%9%')->orderby('pid', 'DESC')->get();

        $general = DB::table('posts')->where('category_id', 'LIKE', '%10%')->orderby('pid', 'DESC')->get();

        $business = DB::table('posts')->where('category_id', 'LIKE', '%2%')->orderby('pid', 'DESC')->get();

        $sports = DB::table('posts')->where('category_id', 'LIKE', '%5%')->orderby('pid', 'DESC')->get();
        $technology = DB::table('posts')->where('category_id', 'LIKE', '%4%')->orderby('pid', 'DESC')->get();
        $health = DB::table('posts')->where('category_id', 'LIKE', '%8%')->orderby('pid', 'DESC')->get();
        $travel = DB::table('posts')->where('category_id', 'LIKE', '%6%')->orderby('pid', 'DESC')->get();

        $entertainment = DB::table('posts')->where('category_id', 'LIKE', '%3%')->orderby('pid', 'DESC')->get();
        $politics = DB::table('posts')->where('category_id', 'LIKE', '%1%')->orderby('pid', 'DESC')->get();
        $style = DB::table('posts')->where('category_id', 'LIKE', '%7%')->orderby('pid', 'DESC')->get();

        return view ('frontend.index', ['featured'=>$featured,'general'=>$general,'business'=>$business,'sports'=>$sports,'technology'=>$technology,'health'=>$health,'travel'=>$travel,'entertainment'=>$entertainment,'politics'=>$politics,'style'=>$style]);
    }
    public function category($slug){
        $cat = DB::table('categories')->where('slug',$slug)->first();
        $posts = DB::table('posts')->where('category_id','LIKE','%'.$cat->cid.'%')->get();
        return view ('frontend.category',['posts'=>$posts,'cat'=>$cat]);
    }
    public function article($slug){
        $data = DB::table('posts')->where('slug',$slug)->first();
        $category = explode(',',$data->category_id);
        $category = $category[0];
        $related = DB::table('posts')->where('category_id','LIKE', '%'.$category.'%')->get();
        $letest = DB:: table('posts')->where('status','publish')->orderby('pid','DESC')->get();
        return view ('frontend.article',['data'=>$data, 'related'=>$related,'letest'=>$letest]);
    }
}
