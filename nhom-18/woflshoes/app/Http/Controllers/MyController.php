<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Products;
use App\Productlines;
use Illuminate\Support\Facades\DB;
use Mail;
use App\User;
use Hash;
use Auth;
use Session;
use App\Cart;
use App\Orders;
use App\Orderdetails;

class MyController extends Controller
{
    public function getIndex()
    {
        $product = Products::paginate(4);
        // dd($product);
        return view('pages.index', compact('product'));
    }
    public function shop()
    {
        $products= Products::where('approved', '1')->paginate(9);
        return view('pages.shop', compact('products'));
    }
    public function pSearch(Request $request)
    {
        if ($request->isMethod('get')) {
            $data = $request->all();
            $name = $data['pSearch'];
            $products = Products::where('productName', 'LIKE', '%' . $name . '%')->paginate(9);
            return view('pages.shop', compact('products'));
        }

    }
    public function getDetail($id)
    {
        $productDetail=Products::where('productCode', $id)->first();
        $productLine= DB::table('products as p')
            ->join('productlines as pl', 'p.productLineID', '=', 'pl.productLineID')
            ->select('p.*', 'pl.*')
            ->where('p.productCode', '=', $id)
            ->first();
        return view('pages.detail', compact('productDetail', 'productLine'));
    }
    public function getContact()
    {
        return view('pages.contact');
    }
    public function contact(Request $request)
    {
        $data= ['name'=> $request->name, 'email'=>$request->email, 'subject'=>$request->subject];
        Mail::send('email.formMail', $data, function($sms){
            $sms->from('nguyenkhacngoc089@gmail.com', 'WolfShop');
            $sms->to('nguyenkhacngoc089@gmail.com', 'Ngoc Nguyen')->subject('Phản hồi từ WolfShop');
        });
        echo "<script>
    	alert('Cám ơn bạn đã góp ý!');
    	windown.location= '";
        echo route('index');
        echo "'
    	</script>";
        return redirect()->route('index');
    }
    public function register()
    {
        return view('pages.register');
    }
    public function postregister(Request $req)
    {
        $this->validate($req,
            [
                'email'=>'required|email|unique:users,email',
                'password'=>'required|min:6|max:20',
                'fullname'=>'required',
                'repassword'=>'required|same:password',
                'contact'=>'required',
                'address'=>'required'
            ],
            [
                'email.required'=>'Nhap email.',
                'email.email'=>'Dinh dang email khong dung.',
                'email.unique'=>'Email da co nguoi su dung.',
                'password.required'=>'Nhap password.',
                'password.min'=>'Mat khau min la 6.',
                'password.max'=>'Mat khau max la 20.',
                'repassword.same'=>'Mat khau khong giong nhau.',
                'contact.required'=>'Nhap so dien thoai.',
                'address.required'=>'Nhap dia chi.'
            ]);
        $user=new User();
        $user->name=$req->fullname;
        $user->email=$req->email;
        $user->password=Hash::make($req->password);
        $user->phone=$req->contact;
        $user->address=$req->address;
        $user->save();
        return redirect()->back()->with('success', 'Account successfully created.');
    }
    public function login()
    {
        return view('pages.login');
    }
    public function postlogin(Request $req)
    {
        $this->validate($req,
            [
                'email'=>'required|email',
                'password'=>'required|min:6|max:20'
            ],
            [
                'email.required'=>'Nhap email.',
                'email.email'=>'Dinh dang email khong dung.',
                'password.required'=>'Nhap password.',
                'password.max'=>'Mat khau max la 20.',
                'password.min'=>'Mat khau min la 6.'
            ]);
        $levelUser=User::where('email', $req->email)->first();
        $credentials=array('email' => $req->email, 'password' => $req->password);
        if(Auth::attempt($credentials))
        {
            if($levelUser->admin==1)
            {
                Auth::logout();
                return redirect()->back()->with(['flag'=>'success', 'message'=>'Vào trang đăng nhập của admin vì tài khoản này của admin.']);
            }
            else
            {
                return redirect()->route('index')->with(['flag'=>'success', 'message'=>'Dang nhap thanh cong ']);
            }

        }
        else
        {
            return redirect()->back()->with(['flag'=>'danger', 'message'=>'Dang nhap khong thanh cong.']);
        }
    }
    public function addcart(Request $req, $id)
    {
        $product= Products::find($id);
        $oldcart=Session('Cart')?Session::get('Cart'):null;
        $cart=new Cart($oldcart);
        $cart->add($product, $id);
        $req->Session()->put('Cart',$cart);
        return redirect()->back();
    }
    public function cart()
    {
        return view('pages.cart');
    }
    public function categories($id)
    {
        $pc=Products::where('productLineID',$id)->get();
        $count=Products::where('productLineID',$id)->count();
        return view('pages.categories', compact('pc','count'));
    }
    public function logout()
    {
        Auth::logout();
        Session::flush();
        return redirect()->route('index');
    }
    public function checkout(Request $req)
    {
        $cart=Session::get('Cart');
        $order=new Orders();
        if(Auth::check()){
            $order->customerID=Auth::user()->id;
        }
        else
        {
            return redirect('/login');
        }
        $order->orderDate=date('Y-m-d');
        $order->save();
        foreach($cart->items as $key=>$value){
            $orderdetail=new Orderdetails();
            $orderdetail->orderID=$order->orderID;
            $orderdetail->productID=$key;
            $orderdetail->quantityOrderred=$value['quantity'];
            $orderdetail->save();
        }
        Session::forget('Cart');
        return redirect()->back();
    }
    public function addCart2(Request $req, $id)
    {
        $data = $req->all();
        $total = $data['product_qty'];
        $product= Products::find($id);
        $oldcart=Session('Cart')?Session::get('Cart'):null;
        $cart=new Cart($oldcart);
        $cart->add2($product, $id, $total);
        $req->Session()->put('Cart',$cart);
        return redirect()->back();
    }
}
