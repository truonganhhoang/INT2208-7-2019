<?php

namespace App\Http\Controllers;

use App\Cart;
use App\products;
use App\slide;
use App\User;
use App\Rates;
use App\customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Validator;

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
        $getS = products::where('name','like','%'.str_replace(' ','%',$req->key).'%')->orWhere('unit_price',$req->key)->get();
        return view('page.search',compact('getS','slide'));
    }
    public function Product($id){
        $slide = slide::all();
        $type_product = products::where('id_type',$id)->get();
        if(count($type_product) == 0)
        {
            $empty = 0;
            return \Redirect::route('home')->with('empty','Mặt hàng này hiện chưa có , vui lòng quay lại sau');
        }
        return view('page.typeProduct',compact('type_product','slide'));
    }
    public function Cart($id)
    {
        $idUser = Auth::id();
        if(Auth::check() == true)
        {
            $product = products::where('id',$id)->get();
            $findId =  Cart::where('id_type',$id)->value('id_type');
            //$demo = Cart::find($id);
            //dd($demo);
            if($findId == null)
            {
                Cart::create([

                    'id_type'=>$id,
                    'drops'=>1,
                    'name'=>$product[0]['name'],
                    'unit_price'=>$product[0]['unit_price'],
                    'sale_price'=>$product[0]['promotion_price'],
                    'img'=>$product[0]['image'],
                    'amount'=>1,


                ]);

                return redirect()->back();
            }
            else{
                $amount =  Cart::where('id_type',$id)->value('amount');
                DB::table('cart')
                    ->where('id_type', $findId)
                    ->update(['amount' => $amount+1]);


                return redirect()->back();
            }
        }
        else{
            return redirect('/login')->with('login','Vui lòng đăng nhập trước khi thêm sản phẩm');
        }


    }
    public function dropItem($id)
    {
        $amount = Cart::where('id_type',$id)->value('amount');
        if($amount > 1)
        {
            DB::table('cart')->where('id_type','=',$id)->update(['amount'=>$amount-1]);
        }
        else
        {
            DB::table('cart')->where('id_type', '=', $id)->limit(1)->delete();
        }

        return redirect('/');
    }
    public function detailProduct($id_type,$id){
        $slide = slide::all();
        $product = products::where('id',$id)->get();
        $type_product = products::where('id_type',$id_type)->paginate(5);
        $rates = Rates::where('product_id',$id)->get();
        $auth_rate = null;
        $rated_customer = array();
        $star = round(DB::table('rates')->where('product_id',$id)->avg('rate'),3);
        foreach ($rates as $rate) {
            $rated_customer[$rate['customer_id']] = (customer::where('id', $rate['customer_id']))->get()[0]['name'];
            if (Auth::id() == $rate['customer_id'])
                $auth_rate = $rate;
        }
        if ($auth_rate == null) {
            $auth_rate['product_id'] = $id;
            $auth_rate['customer_id'] = Auth::id();
            $auth_rate['rate'] = 0;
            $auth_rate['content'] = '';
        }
        return view('page.details',compact('slide','product','type_product','star','rates','auth_rate','rated_customer'));
    }
    public function profile($id){
        $slide = [];
        $user = User::find($id);
        //dd(print_r($user));
        return view('page.profile',compact('slide','user'));
    }
    public function profilePW($id){
        $slide = [];
        $user = User::find($id);
        //dd(print_r($user));
        return view('page.profilePW',compact('slide','user'));
    }
    public function putInfo($id,Request $request){
        $user = User::find($id);
        $user->update([

            'name'=>$request->name,


        ]);
        return back();
    }
    public function putPw($id,Request $req){
        $user = User::where('id',$id)->value('password');


        //dd(bcrypt("123456"));
        $mess =[
            'old_pw.required'=>'Không được để trống',
            'new_pw.required'=>'Không được để trống',
            'new_pw_again.required'=>'Không được để trống',
            'old_pw.min'=>'Mật khẩu ít nhất phải 6 kí tự',
            'new_pw.min'=>'Mật khẩu ít nhất phải 6 kí tự',
            'new_pw_again.min'=>'Mật khẩu ít nhất phải 6 kí tự',


        ];
        $validator = Validator::make($req->all(), [

            'old_pw'=>'required|min:6',
            'new_pw'=>'required|min:6',
            'new_pw_again'=>'required|min:6'
        ],$mess);
        if(Hash::check($req->old_pw, $user) && $validator->fails() == false)
        {
            $putPW = User::find($id);
            $putPW->update([

                'password'=>bcrypt($req->new_pw),


            ]);
            return \Redirect::route('profile_user_pw', $id)->with('success','Thay đổi mật khẩu thành công');

        }else if(Hash::check($req->old_pw, $user) == false){

            return \Redirect::route('profile_user_pw', $id)->with('pw','Mật khẩu không chính xác');

        }
        else if($validator->fails()){

            return \Redirect::route('profile_user_pw', $id)
                ->withErrors($validator)
                ->withInput();
        }
        return redirect('/');


    }

}
