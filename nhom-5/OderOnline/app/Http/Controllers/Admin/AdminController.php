<?php

namespace App\Http\Controllers\Admin;

use App\products;
use App\type_products;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
class AdminController extends Controller
{
    //
    public  function getAdd()
    {
        return view('Admin.addproduct');
    }
    public function postAdd(Request $request){
     //   $data = DB::table('type_products')->where('id',$request->id_type)->value('id');
      //  dd($data);
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
}
