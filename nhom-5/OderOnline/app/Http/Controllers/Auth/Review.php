<?php
/**
 * Created by PhpStorm.
 * User: Genius
 * Date: 27/03/2019
 * Time: 10:03 SA
 */

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Validator;
use App\Rates;

class Review extends Controller
{
    //
    public function getReviewForm()
    {
        return view('page\details');
    }

    public function postReviewForm(Request $request){
        $data = Rates::where(['product_id' => $request->product_id, 'customer_id' => $request->customer_id]);

        if (count($data->get()) == 0){
            Rates::create([
                'product_id' => $request->product_id,
                'customer_id' => $request->customer_id,
                'rate' => $request->rate_input,
                'content' => trim($request->content_input),
            ]);
        }else {
            $data->update(['rate'=>$request->rate_input, 'content'=>trim($request->content_input)]);
        }
        return back();
    }
}
