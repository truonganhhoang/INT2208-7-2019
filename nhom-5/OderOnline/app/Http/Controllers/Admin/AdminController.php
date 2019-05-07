<?php

namespace App\Http\Controllers\Admin;

use App\products;
use App\type_products;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Validator;
class AdminController extends Controller
{
    //
    public function admin(){

        if(Auth::check()){
            if(Auth::id() == 1 )
            {
                return view('Admin.admin');
            }
            else if(Auth::id() != 1){
                return redirect('/')->with('notAdmin','hmmm');
            }
            else{
                return redirect('/login');
            }

        }
        else{
            return redirect('/login');
        }

       // return redirect('/');

    }
    public  function getAdd()
    {

        return view('Admin.addproduct');
    }
    public function postAdd(Request $request){
     //   $data = DB::table('type_products')->where('id',$request->id_type)->value('id');
      //  dd($data);
        $mess =[
            'name.required'=>'Không được bỏ trống mục này',
            'name.max'=>'Dài nhất chỉ chứa 255 kí tự',
            'id_type.required'=>'Không được bỏ trống mục này',
            'id_type.numeric'=>'Chỉ chứa số tự nhiên',
            'description.required'=>'Không được bỏ trống mục này',
            'description.max'=>'Dài nhất chỉ chứa 255 kí tự',
            'unit_price.required'=>'Không được bỏ trống mục này',
            'unit_price.max'=>'Dài nhất chỉ chứa 255 kí tự',
            'promotion_price.required'=>'Không được bỏ trống mục này',
            'promotion_price.max'=>'Dài nhất chỉ chứa 255 kí tự',
            'img.required'=>'Vui lòng chọn ảnh',

        ];
        $validator = Validator::make($request->all(), [
            'name'=>'required|max:255',
            'id_type'=>'required|numeric',
            'description' => 'required|max:255',
            'unit_price'=>'required|max:255',
            'promotion_price'=>'required|max:255',
            'unit'=>'required|max:255',
            'img'=>'required',


        ],$mess);
        if ($validator->fails()) {


            return redirect('/admin/them-sp')
                ->withErrors($validator)
                ->withInput();
        }
        $product = DB::table('products')->where('name',$request->name)->value('name');
        //dd($product);
        if($product == null)
        {
           // $name ='';
            if($request->hasFile('img')){
                //$name=$req->getClientOriginalName();
                $file = $request->file('img');
                $name = $file->getClientOriginalName();
                $file->move('img\product',$name);

                products::create([

                    'name'=>$request->name,
                    'id_type'=>$request->id_type,
                    'description'=>$request->description,
                    'unit_price'=>$request->unit_price,
                    'promotion_price'=>$request->promotion_price,
                    'unit'=>$request->unit,
                    'image'=>$name,
                    'new'=>'1'


                ]);
            }
            else{
                dd('error');
            }


            return redirect('/');
            

        }
        else
        {
            return redirect('/admin/them-sp')->with('error','Mặt hàng đã tồn tại trong kho');
        }
        
    }
    public  function getLoaisp(){
        return view('Admin.typeproduct');
    }
    public function addLoaisp(Request $req){

        type_products::create([
            'id'=>$req->id,
            'name'=>$req->name,
            'description'=>$req->des,
            'image'=>$req->image
        ]);

        return redirect('/');

    }
    public  function deleteSP($id){
        DB::table('products')->where('id',$id)->delete();
        return redirect('/');
    }
    public function getUpdate($id){

        $product = products::where('id',$id)->get();
       // dd($product[0]['name']);
        return view('Admin.updateproduct',compact('id','product'));

    }
    public function putUpdate($id,Request $request){

        if($request->hasFile('image')) {
            //$name=$req->getClientOriginalName();
            $file = $request->file('image');
            $name = $file->getClientOriginalName();
            $file->move('img\product', $name);

            $targetProduct = products::find($id);
            $targetProduct->update([

                'name' => $request->name,
                'id_type' => $request->id_type,
                'description' => $request->description,
                'unit_price' => $request->unit_price,
                'promotion_price' => $request->promotion_price,
                'unit' => $request->unit,
                'image' => $name,

            ]);
        }

            return redirect('/');

        }
}
