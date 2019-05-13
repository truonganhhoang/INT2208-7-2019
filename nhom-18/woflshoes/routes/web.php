<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [
    'as'=>'index',
    'uses'=>'MyController@getIndex'
]);

Route::match(['get', 'post'], '/admin', 'AdminController@login');

Auth::routes();

//Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware' => ['auth']], function ()
{
    Route::get('/admin/dashboard', 'AdminController@dashboard');
    Route::get('/admin/settings', 'AdminController@settings');
    Route::get('/admin/check-pwd', 'AdminController@checkPassword');
    Route::match(['get', 'post'], '/admin/update-pwd', 'AdminController@updatePassword');
    Route::get('/admin/upload', 'AdminController@upload');
    Route::post('/admin/uploadProduct', 'AdminController@uploadProduct');
    Route::match(['get', 'post'], '/admin/list', 'AdminController@list');
    Route::post('/admin/listProducts', 'AdminController@listProducts');
    Route::get('/admin/edit/{id}', 'AdminController@edit');
    Route::post('/admin/editProduct/{id}', 'AdminController@editProduct');
    Route::get('/admin/delete/{id}', 'AdminController@deleteProduct');
    Route::match(['get', 'post'], '/admin/customer', 'AdminController@customer');
    Route::post('/admin/listCustomer', 'AdminController@listCustomer');
    Route::get('/admin/ordersShipped', 'AdminController@ordersShipped');
    Route::match(['get', 'post'], '/admin/ordersPending', 'AdminController@ordersPending');
    Route::get('admin/actionShip/{id}', 'AdminController@actionShip');
});

Route::get('/logout', 'AdminController@logout');
Route::match(['get', 'post'],'/shop', ['as'=>'shop', 'uses'=>'MyController@shop']);
Route::get('/detail/{id}', ['as'=>'detail', 'uses'=>'MyController@getDetail']);
Route::get('/contact', ['as'=>'getContact', 'uses'=>'MyController@getContact']);
Route::post('/contact', ['as'=>'postContact', 'uses'=>'MyController@contact']);
Route::get('/register', ['as'=>'register', 'uses'=>'MyController@register']);
Route::post('/register', ['as'=>'register', 'uses'=>'MyController@postregister']);
Route::get('/login', ['as'=>'login', 'uses'=>'MyController@login']);
Route::post('/login', ['as'=>'login', 'uses'=>'MyController@postlogin']);
Route::get('/addcart/{id}', ['as'=>'addcart', 'uses'=>'MyController@addcart']);
Route::get('/cart', ['as'=>'cart', 'uses'=>'MyController@cart']);
Route::get('/categories/{id}', ['as'=>'categories','uses'=>'MyController@categories']);
Route::get('/logout',['as'=>'logout', 'uses'=>'MyController@logout']);
Route::post('/process', 'MyController@process');
Route::get('/pSearch', 'MyController@pSearch');
Route::get('/checkout',['as'=>'checkout', 'uses'=>'MyController@checkout']);
Route::get('/addCart2/{id}', 'MyController@addCart2');

