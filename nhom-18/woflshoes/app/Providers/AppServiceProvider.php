<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Products;
use App\Productlines;

use Mail;
use App\User;
use Hash;
use Auth;
use Session;
use App\Cart;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('header', function($view){
            $productline=productlines::all();

            $view->with('productline',$productline);
        });
        view()->composer('header', function($view){
            if(Session('Cart'))
            {
                $oldcart=Session::get('Cart');
                $cart=new Cart($oldcart);
                $view->with(['cart'=>Session::get('Cart'),'product_cart'=>$cart->items, 'totalPrice'=>$cart->totalPrice, 'totalQuantity'=>$cart->totalQuantity]);
            }
        });

        view()->composer('pages.cart', function($view){
            $productline=Productlines::all();

            $view->with('productline',$productline);
        });
        view()->composer('pages.cart', function($view){
            if(Session('Cart'))
            {
                $oldcart=Session::get('Cart');
                $cart=new Cart($oldcart);
                $view->with(['pages.cart'=>Session::get('Cart'),'product_cart'=>$cart->items, 'totalPrice'=>$cart->totalPrice, 'totalQuantity'=>$cart->totalQuantity]);
            }
        });
        view()->composer('pages.chekout', function($view){
            $productline=Productlines::all();

            $view->with('productline',$productline);
        });
        view()->composer('pages.checkout', function($view){
            if(Session('Cart'))
            {
                $oldcart=Session::get('Cart');
                $cart=new Cart($oldcart);
                $view->with(['pages.cart'=>Session::get('Cart'),'product_cart'=>$cart->items, 'totalPrice'=>$cart->totalPrice, 'totalQuantity'=>$cart->totalQuantity]);
            }
        });
        $a=Productlines::all();
        view()->share('sp', $a);
    }
}