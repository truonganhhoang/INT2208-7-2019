<?php

namespace App\Http\Controllers\Admin;

use App\products;
use App\type_products;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
class AdminController extends Controller
{
    //
    public function admin(){

        if(Auth::check()){
            if(Auth::id() == 1 )
            {
                return view('Admin.admin');
            }
            else{
                return redirect('/login');
            }

        }
        else{
            return redirect('/login');
        }

    }
    public  function getAdd()
    {

        return view('Admin.addproduct');
    }
    public function postAdd(Request $request){
     //   $data = DB::table('type_products')->where('id',$request->id_type)->value('id');
      //  dd($data);
        $product = DB::table('products')->where('name',$request->name)->value('name');
        //dd($product);
        if($product == null)
        {
            products::create([

                'name'=>$request->name,
                'id_type'=>$request->id_type,
                'description'=>$request->description,
                'unit_price'=>$request->unit_price,
                'promotion_price'=>$request->promotion_price,
                'unit'=>$request->unit,
                'image'=>$request->image,
                'new'=>'1'
    
    
            ]);
    
            return redirect('/');
            

        }
        else
        {
            return redirect('/admin/them-sp')->with('error','Mặt hàng đã tồn tại trong kho');
        }
        
    }
    public  function getLoaisp(){
        return view('Admin.typeproduct');
    }
    public function addLoaisp(Request $req){

        type_products::create([
            'id'=>$req->id,
            'name'=>$req->name,
            'description'=>$req->des,
            'image'=>$req->image
        ]);

        return redirect('/');

    }
    public  function deleteSP($id){
        DB::table('products')->where('id',$id)->delete();
        return redirect('/');
    }
    public function getUpdate($id){

        $product = products::where('id',$id)->get();
       // dd($product[0]['name']);
        return view('Admin.updateproduct',compact('id','product'));

    }
    public function putUpdate($id,Request $request){

       $targetProduct = products::find($id);
       $targetProduct->update([

           'name'=>$request->name,
           'id_type'=>$request->id_type,
           'description'=>$request->description,
           'unit_price'=>$request->unit_price,
           'promotion_price'=>$request->promotion_price,
           'unit'=>$request->unit,
           'image'=>$request->image,

       ]);
       return redirect('/');
    }
}
