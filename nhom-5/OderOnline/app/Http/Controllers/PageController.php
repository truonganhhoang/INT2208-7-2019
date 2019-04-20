<?php

namespace App\Http\Controllers;

use App\bill_detail;
use App\bills;
use App\Cart;
use App\customer;
use App\products;
use App\slide;
use App\User;
use App\Rates;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Validator;
use Carbon\Carbon;
use DateTime;

class PageController extends Controller
{
    //
    public function upload(Request $req){
       if($req->hasFile('img')){
           //$name=$req->getClientOriginalName();
           $file = $req->file('img');
           $name = $file->getClientOriginalName();
           $file->move('img',$name);
       }
       else{
           dd('error');
       }
       return redirect('/');
    }
    public function index(){
        $slide = slide::all();
        $product = products::where('new',1)->paginate(4);
        $spkm = products::where('promotion_price','<>','0')->paginate(8);
        return view('page.index',compact('slide','product','spkm'));
    }
    public function Search(Request $req){
        $slide = slide::all();
        $key = $req->key;

        if($req->key == null){
            return redirect('/')->with('key','Empty');
        }
        else if(str_word_count($key) >= 20){
            return redirect('/')->with('longText','longText');
        }

        $getS = products::where('name','like','%'.str_replace(' ','%',$req->key).'%')->orWhere('unit_price',$req->key)->get();
        if(count($getS) == 0)
        {
            return redirect('/')->with('searchEmpty','Empty');
        }
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
       // $idUser = Auth::id();
        if(Auth::check() == true)
        {
            $product = products::where('id',$id)->get();
            $findId =  Cart::where('id_type',$id)->value('id_type');

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
    public function profile(){
        $slide = [];
        $id = Auth::id();
        //dd($id);
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
            'phone'=>$request->phone,


        ]);
        return back();
    }

    public  function putPw($id,Request $req){
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
    public function view_don_hang(){
        $sp = Cart::all();
        $total = 0;
        if(Auth::check()) {
            if(Auth::user()->hasVerifiedEmail())
            {
                foreach ($sp as $c)
                {
                    //$total = 0;
                    if($c->sale_price > 0){
                        $total += $c->sale_price * $c->amount;
                    }
                    else{
                        $total += $c->unit_price * $c->amount;
                    }

                }
                return view('page.don-hang',compact('sp','total'));
            }
            else{

                return redirect('/')->with('verify','not verify');
            }
        }
        else{
                return redirect('login')->with('notLogin','Vui lòng đăng nhập trước khi sử dụng chức năng này');
        }

    }
    public function dh_profile($id){
        $sp = Cart::all();
        $total = 0;
        if(Auth::check()) {
            if(Auth::user()->hasVerifiedEmail())
            {
                foreach ($sp as $c)
                {
                    //$total = 0;
                    if($c->sale_price > 0){
                        $total += $c->sale_price * $c->amount;
                    }
                    else{
                        $total += $c->unit_price * $c->amount;
                    }

                }
                return view('page.don-hang',compact('sp','total'));
            }
            else{

                return redirect('/')->with('verify','not verify');
            }
        }
        else{
            return redirect('login')->with('notLogin','Vui lòng đăng nhập trước khi sử dụng chức năng này');
        }
    }
    public function post_don_hang(Request $req){
            $mess =[
                'name.required'=>'Vui lòng không bỏ trống mục này',
                'phone.required'=>'Vui lòng không bỏ trống mục này',
                'address.required'=>'Vui lòng không bỏ trống mục này',
                'thanhtoan.required'=>'Vui lòng chọn phương thức thanh toán',
                'note.required'=>'Vui lòng không bỏ trống mục này',
                'name.max'=>'Dài nhất chỉ có 50 kí tự',
                'phone.numberic'=>'Chỉ chứa kí tự số',
                'phone.max'=>'Dài nhất chỉ chứa 11 kí tự',
                'phone.min'=>'Ít nhất là 10 kí tự',
                'address.max'=>'Dài nhất chỉ chứa 200 kí tự',
                'note'=>'Dài nhất chứa 500 kí tự',


            ];
            $validator = Validator::make($req->all(), [

                'name'=>'required|max:50',
                'phone'=>'required|min:10|numeric|max:11',
                'address'=>'required|max:200',
                'thanhtoan'=>'required',
                'note'=>'max:500',
            ],$mess);
            if($validator->fails()){
                //d('error');
                return redirect('\don-hang')
                    ->withErrors($validator)
                    ->withInput();
            }else{
                $sp = Cart::all();
                $total = 0;
                foreach ($sp as $c)
                {
                    //$total = 0;
                    if($c->sale_price > 0){
                        $total += $c->sale_price * $c->amount;
                    }
                    else{
                        $total += $c->unit_price * $c->amount;
                    }

                }
                $dt = new DateTime();
                //dd(Carbon::now()->toDateTimeString('Y-m-d'));
                $id = Auth::id();
                $email = User::where('id',$id)->value('email');
                customer::create([
                    'id'=>$id,
                    'name'=>$req->name,
                    'email'=>$email,
                    'phone_number'=>$req->phone,
                    'address'=>$req->address,
                    'note'=>$req->note,
                ]);
                bills::create([
                    'id'=>$id,
                    'id_customer'=>$id,
                    'date_order'=>$dt->format('Y-m-d'),
                    'total'=>$total,
                    'payment'=>$req->thanhtoan,
                    'note'=>$req->note,

                ]);

                foreach ($sp as $s){
                    $unit = 0;
                    if($s->sale_price != 0)
                    {
                        $unit = $s->sale_price;
                    }
                    else{
                        $unit = $s->unit_price;
                    }
                    bill_detail::create([
                        'id'=>$id,
                        'id_product'=>$s->id,
                        'quantity'=>$s->amount,
                        'unit_price'=>$unit,


                    ]);

                }
            }

            return redirect('/')->with('order','Đặt hàng thành công');
    }
}
