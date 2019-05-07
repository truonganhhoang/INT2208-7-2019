<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use App\User;
use App\Products;
use App\Customers;
use App\Orders;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function login(Request $request)
    {
        if ($request->isMethod('post')) {
            $data = $request->input();
            if (Auth::attempt(['email' => $data['email'], 'password' => $data['password'], 'admin' => '1'])) {
                // Protect route use Session
//                Session::put('adminSession', $data['email']);
                return redirect('/admin/dashboard');
            } else {
                return redirect('/admin')->with('flash_message_error', 'Invalid Username or Password');
            }
        }
        return view('admin.admin_login');
    }

    public function dashboard()
    {
        $customers = User::where('admin', '=', '0')
            ->count();
        $products = Products::count();
        $orders = Orders::count();
        $oShipped = Orders::where('status', '=', 'shipped')
            ->count();
        $oPending = Orders::where('status', '=', 'pending')
            ->count();

        $total = ['customers' => $customers,
                'products' => $products,
                'orders' => $orders,
                'oShipped' => $oShipped,
                'oPending' => $oPending
                ];
        return view('admin.dashboard', compact('total'));
    }

    public function logout()
    {
        Session::flush();
        return redirect('/admin')->with('flash_message_success', 'Logged out Successfully');
    }

    public function settings()
    {
        return view('admin.settings');
    }

    public function checkPassword(Request $request)
    {
        $data = $request->all();
        $current_password = $data['current_pwd'];
        $check_password = User::where(['admin' => '1'])->first();
        if (Hash::check($current_password, $check_password->password)) {
            echo "true";
            die;
        } else {
            echo "false";
            die;
        }
    }

    public function updatePassword(Request $request)
    {
        if ($request->isMethod('post')) {
            $data = $request->all();
            $check_password = User::where(['email' => Auth::user()->email])->first();
            $current_password = $data['current_pwd'];
            if (Hash::check($current_password, $check_password->password)) {
                $password = bcrypt($data['new_pwd']);
                User::where('id', '1')->update(['password' => $password]);
                return redirect('/admin/settings')->with('flash_message_success', 'Password update Successfully!');
            } else {
                return redirect('/admin/settings')->with('flash_message_error', 'Incorrect Current Password!');
            }
        }
    }

    public function upload()
    {
        return view('admin.upload');
    }

    public function uploadProduct(Request $request)
    {
        if ($request->isMethod('POST')) {
            $data = $request->all();

            $product = new Products;
            $product->productName = $data['pName'];
            $product->productDescription = $data['pDesc'];
            $product->productLineID = $data['pLine'];
            $product->productImg1 = $request->file('pIMG1')->getClientOriginalName();
            $product->productImg2 = $request->file('pIMG2')->getClientOriginalName();
            $product->productImg3 = $request->file('pIMG3')->getClientOriginalName();
            $product->productPrice = $data['pPrice'];
            $product->save();

            $request->file('pIMG1')->move(public_path('images/frontend_image/products'), $request->file('pIMG1')->getClientOriginalName());
            $request->file('pIMG2')->move(public_path('images/frontend_image/products'), $request->file('pIMG2')->getClientOriginalName());
            $request->file('pIMG3')->move(public_path('images/frontend_image/products'), $request->file('pIMG3')->getClientOriginalName());
            return redirect('/admin/upload')->with('flash_message_success', 'Product Upload Successfully!');

        }

    }

    public function list()
    {
        $products = Products::paginate(50);
        $total = Products::count();
        return view('admin.list', compact('products', 'total'));
    }

    public function listProducts(Request $request)
    {
        if ($request->isMethod('POST')) {
            $data = $request->all();
            $name = $data['pName'];
            $products = Products::where('productName', 'LIKE', '%' . $name . '%')->paginate(50);
            $total = Products::where('productName', 'LIKE', '%' . $name . '%')->count();
            return view('admin.list', compact('products', 'total'));
        }
    }

    public function edit($id)
    {
        $p = Products::find($id);
        return view('admin.editProduct', compact('p', 'id'));
    }

    public function editProduct(Request $request, $id)
    {
        $product = Products::find($id);
        $data = $request->all();
        if ($request->isMethod('POST')) {
            $product->productName = $data['pName'];
            $product->productDescription = $data['pDesc'];
            $product->productLineID = $data['pLine'];

            if ($request->hasFile('pIMG1')) {
                $product->productImg1 = $request->file('pIMG1')->getClientOriginalName();
                $request->file('pIMG1')->move(public_path('images/frontend_image/products'), $request->file('pIMG1')->getClientOriginalName());
            }

            if ($request->hasFile('pIMG2')) {
                $product->productImg2 = $request->file('pIMG2')->getClientOriginalName();
                $request->file('pIMG2')->move(public_path('images/frontend_image/products'), $request->file('pIMG2')->getClientOriginalName());
            }

            if ($request->hasFile('pIMG3')) {
                $product->productImg3 = $request->file('pIMG3')->getClientOriginalName();
                $request->file('pIMG3')->move(public_path('images/frontend_image/products'), $request->file('pIMG3')->getClientOriginalName());
            }

            $product->productPrice = $data['pPrice'];
            $product->save();
            return redirect('/admin/list')->with('flash_message_success', 'Product Update Successfully!');

        } else {
            return redirect('/admin/list')->with('flash_message_error', 'Product Update Losing!');
        }
    }

    public function deleteProduct($id)
    {
        $product = Products::find($id);
        $product->delete();
        return redirect('/admin/list')->with('flash_message_success', 'Delete Product Successfully!');
    }


    public function customer()
    {
        $customers = User::where('admin', '=', '0')
            ->paginate(50);
        $total = User::where('admin', '=', '0')
            ->count();
        return view('admin.listCustomer', compact('customers', 'total'));
    }

    public function listCustomer(Request $request)
    {
        $data = $request->all();
        $name = $data['cName'];

        $customers = User::where('admin', '=', '0')
            ->where('name', 'LIKE', '%' . $name . '%')
            ->paginate(50);
        $total = User::where('admin', '=', '0')
            ->where('name', 'LIKE', '%' . $name . '%')
            ->count();
        return view('admin.listCustomer', compact('customers', 'total'));
    }

    public function ordersShipped()
    {
        $orders = DB::table('orders as o')
            ->join('orderdetails as od', 'o.orderID', '=', 'od.orderID')
            ->join('products as p', 'od.productID', '=', 'p.productCode')
            ->join('users as c', 'o.customerID', 'c.id')
            ->select('o.*', 'od.*', 'p.productCode', 'p.productName', 'p.productPrice', DB::raw('p.productPrice * od.quantityOrderred as TotalPrice'), 'c.id' , 'c.name')
            ->where('o.status', '=', 'shipped')
            ->paginate(50);
        $total = Orders::where('status', '=', 'shipped')->count();
        return view('admin.ordersShipped', compact('orders', 'total'));
    }

    public function ordersPending()
    {
        $orders = DB::table('orders as o')
            ->join('orderdetails as od', 'o.orderID', '=', 'od.orderID')
            ->join('products as p', 'od.productID', '=', 'p.productCode')
            ->join('users as c', 'o.customerID', 'c.id')
            ->select('o.*', 'od.*', 'p.productCode', 'p.productName', 'p.productPrice', DB::raw('p.productPrice * od.quantityOrderred as TotalPrice'), 'c.id' ,'c.name')
            ->where('o.status', '=', 'pending')
            ->paginate(50);
        $total = Orders::where('status', '=', 'pending')->count();
        return view('admin.ordersPending', compact('orders', 'total'));
    }
    public function actionShip($id)
    {
        $orders = Orders::find($id);
        $orders->status = 'shipped';
        $orders->shippedDate = date("Y/m/d");
        $orders->save();
        return redirect('/admin/ordersPending')->with('flash_message_success', 'Process Orders Successfully!');
    }

}
