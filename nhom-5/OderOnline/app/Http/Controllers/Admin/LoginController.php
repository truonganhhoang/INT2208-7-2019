<?php

namespace App\Http\Controllers\Admin;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class LoginController extends Controller
{
    //
    public function getLogin(){
        return view('login.loginV2');
    }

    public function postLogin(Request $request){

        $remember = $request->input('Remember');
        if($remember == 'Remmberme'){

            $rm = true;
        }
        else{
            $rm = false;
        }
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password],$rm)) {

            //dd("thang cong");
            $email = Auth::user();
            return redirect('/')->with(['data'=>$email]);
            //$cookie = cookie($request->email,$request->password,3600);
        }
        else{
            return back()->withInput()->with('error',"Tài khoản hoặc mật khẩu không chính xác");
        }



    }
    public function logOut(){
        Auth::logout();
        DB::table('cart')->where('id_type', '=', 1)->delete();
        return redirect('/');
    }
}
