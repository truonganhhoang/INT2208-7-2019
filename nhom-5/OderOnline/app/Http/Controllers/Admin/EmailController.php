<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;


class EmailController extends Controller
{
    public function getmail(Request $request){
        $input = $request->all();
        Mail::send('Email.mailfb', array('name'=>$input["name"],'email'=>$input["email"], 'content'=>$input['comment']), function($message){
            $message->to('checkpassnch@gmail.com', 'Demo')->subject('Feedback!');
        });
        Session::flash('flash_message', 'Send message successfully!');

        return back()->with('success','Thành công');
    }
}
