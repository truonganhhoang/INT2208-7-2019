<?php

namespace App\Providers;

use App\Cart;
use App\products;
use App\type_products;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

        view()->composer('page.master', function ($view) {
            $product = type_products::all();
            $cart = Cart::all();

            $view->with(['prod'=>$product,'cart'=>$cart]);
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
