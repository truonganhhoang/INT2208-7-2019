<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Validator;
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Query\Builder;
class RegController extends Controller
{
    //
    public function getReg(){
        return view('login\reg');
    }
    public function postReg(Request $request){

        $mess =[
            'name.required'=>'Không được bỏ trống mục này',
            'name.regex'=>'Không nhận kí tự đặc biệt',
            'email.required'=>'Không được bỏ trống mục này',
            'email.email'=>'Hãy nhập đúng định dạng của Email',
            'password.required'=>'Không được bỏ trống mục này',
            'password.min'=>'Mật khẩu ít nhất phải có 6 kí tự',
            'againpassword.required'=>'Không được bỏ trống mục này',
            'againpassword.min'=>'Mật khẩu ít nhất phải có 6 kí tự',

        ];
        $validator = Validator::make($request->all(), [
            'name'=>'required|max:10',
            'email' => 'required|email|max:255',
            'password'=>'required|min:6',
            'againpassword'=>'required|min:6',

        ],$mess);
        $email = $request->email;
        $pw = $request->password;
        $apw = $request->againpassword;
        $data = DB::table('users')->where('email',$email)->value('email');

        //dd($data);


        if ($validator->fails()) {


            return redirect('reg\user')
                ->withErrors($validator)
                ->withInput();
        }else{
            if($data == null)
            {
                User::create([
                    'name'=>$request->name,
                    'email'=>$email,
                    'password'=>bcrypt($pw)

                ]);
            }
            else{

                return redirect('reg\user')->with('error', 'Email đã tồn tại');


            }

        }
        if($pw != $apw){
            return back()->withInput()->with('diff','Mật khẩu không giống nhau');
        }

    }
}
