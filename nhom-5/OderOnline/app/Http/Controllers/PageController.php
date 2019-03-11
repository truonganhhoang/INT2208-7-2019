<?php

namespace App\Http\Controllers;

use App\Cart;
use App\products;
use App\slide;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PageController extends Controller
{
    //
    public function index(){
        $slide = slide::all();
        $product = products::where('new',1)->paginate(4);
        $spkm = products::where('promotion_price','<>','0')->paginate(8);
        return view('page.index',compact('slide','product','spkm'));
    }
    public function Search(Request $req){
        $slide = slide::all();
        $getS = products::where('name','like','%'.$req->key.'%')->orWhere('unit_price',$req->key)->get();
        return view('page.search',compact('getS','slide'));
    }
    public function Product($id){
        $slide = slide::all();
        $type_product = products::where('id_type',$id)->get();
        return view('page.typeProduct',compact('type_product','slide'));
    }
    public function Cart($id)
    {
        $idUser = Auth::id();
        $product = products::where('id',$id)->get();

        Cart::create([

            'id_type'=>1,
            'name'=>$product[0]['name'],
            'unit_price'=>$product[0]['unit_price'],
            'sale_price'=>$product[0]['promotion_price'],
            'img'=>$product[0]['image'],


        ]);

        return redirect()->back();
    }
}
