<?php

namespace App\Http\Controllers;

// use Illuminate\Http\Request;
// use Illuminate\Support\Facades\Input;
use DB;
use Session;
use Request;

class crudController extends Controller
{
    public function insertData(){
        $data = Request::except('_token');
        $tbl = decrypt($data['tbl']);
        unset($data['tbl']);
        $data['created_at'] = date('Y-m-d H:i:s');

        if(Request::has('social')){
            $data['social'] = implode(',',$data['social']);
        }

        if(Request::hasFile('image')){
            $data['image'] = $this->uploadimage($tbl,$data['image']);
        }

        if(Request::has('category_id')){
            $data['category_id'] = implode(',',$data['category_id']);
        }

        DB::table($tbl)->insert($data);
        if($tbl == 'messages'){
            session::flash('message', 'Thank you so much for messing us. We will get back to you shortly. Please keep patience');
        }else{
            session::flash('message', 'Data Insert Successfully');
        }

        return redirect()->back();
    }
    public function updateData(){
        $data = Request::except('_token');
        $tbl = decrypt($data['tbl']);
        unset($data['tbl']);
        $data['updated_at'] = date('Y-m-d H:i:s');

        if(Request::has('social')){
            $data['social'] = implode(',',$data['social']);
        }

        if(Request::hasFile('image')){
            $data['image'] = $this->uploadimage($tbl,$data['image']);
        }
        if(Request::has('category_id')){
            $data['category_id'] = implode(',',$data['category_id']);
        }
        DB::table($tbl)->where(key($data),reset($data))->update($data) ;
        session::flash('message', 'Data Update Successfully');
        return redirect()->back();
    }

    //img upload

    public function uploadimage($location,$imagename){
        $name = $imagename->getClientOriginalName();
        $imagename->move(public_path().'/'.$location,date('ymdgis').$name);
        return date('ymdgis').$name;
    }


}
