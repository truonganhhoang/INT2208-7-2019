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
        if ($request->rate_input < 1 || $request->rate_input > 5) {
            return back()->with('rateError', 'Bạn chưa đánh giá cho sản phẩm');
        } else {
            $content = $request->content_input;
            if (strlen($content) > 900)
                $content = substr($content, 0, 897)."...";

            $data = Rates::where(['product_id' => $request->product_id, 'customer_id' => $request->customer_id]);
            if (count($data->get()) == 0) {
                Rates::create([
                    'product_id' => $request->product_id,
                    'customer_id' => $request->customer_id,
                    'rate' => $request->rate_input,
                    'content' => $content,
                ]);
            } else {
                $data->update(['rate' => $request->rate_input, 'content' => $content]);
            }
            return back();
        }
    }
}
