<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    public function showLoginForm(){
        return view('login.loginv3');
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
