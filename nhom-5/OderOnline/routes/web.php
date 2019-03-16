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

Route::get('/', 'PageController@index')->name('home');
Route::get('/login','Admin\LoginController@getLogin')->name('userlogin');
Route::post('pusers','Admin\LoginController@postLogin')->name('postlogin');
Route::prefix('login')->group(function () {


});
Route::prefix('reg')->group(function () {
    Route::get('user','Admin\RegController@getReg')->name('reguser');
    Route::post('puser','Admin\RegController@postReg')->name('postreg');
});
Route::get('/search','PageController@Search')->name('searchall');
Route::get('/logout','Admin\LoginController@logOut')->name('out');
Route::get('/sanpham/{id}','PageController@Product')->name('sp');
Route::get('/dangki',function (){
    return view('login.dangki');
});
Route::get('/addCart/{id}','PageController@Cart')->name('cart');
Route::get('/admin','Admin\AdminController@getAdd');
Route::post('/add','Admin\AdminController@postAdd')->name('addproduct');
Route::get('/redirect/{social}', 'SocialAuthController@redirect')->name('loginwithfb');
Route::get('/callback/{social}', 'SocialAuthController@callback');

