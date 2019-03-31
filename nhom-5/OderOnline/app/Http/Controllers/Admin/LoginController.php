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
        $slide = [];
        return view('login.loginv3',compact('slide'));
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
            if(Auth::id() == 1)
            {
                return redirect('/admin');
            }
            else{
                //dd("thang cong");
                $email = Auth::user();
                return redirect('/')->with(['data'=>$email]);
                //$cookie = cookie($request->email,$request->password,3600);
            }

        }
        else{
            return back()->withInput()->with('error',"Tài khoản hoặc mật khẩu không chính xác");
        }



    }
    public function logOut(){

        Auth::logout();

        DB::table('cart')->where('drops', '=', 1)->delete();

        return redirect('/');
    }
}
