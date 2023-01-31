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

        return view ('frontend.index', ['featured'=>$featured,'general'=>$general,'business'=>$business]);
    }
    public function category(){
        return view ('frontend.category');
    }
    public function post(){
        return view ('frontend.article');
    }
}
