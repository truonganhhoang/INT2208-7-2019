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
// master dung de ke thua
Route::get('/master',function(){
    $slide = [];
   return view('page.master',compact('slide'));
});
// dang nhap tai khoan
Route::get('/testlogin',function(){
    $slide = [];
    return view('login.loginv3',compact('slide'));
});
//profile
Route::get('/profile','PageController@profile')->name('profile_user')->middleware('verified');
Route::get('/profile/{id}/changePW','PageController@profilePW')->name('profile_user_pw');
// change account
Route::put('/changeInfo/{id}','PageController@putInfo')->name('change_info');
Route::put('/changePw/{id}','PageController@putPw')->name('change_pw');
// ve trang chu
Route::get('/', 'PageController@index')->name('home');
// dang nhap
//Route::get('/login','Admin\LoginController@getLogin')->name('userlogin');


// dang ki tai khoan
Route::get('/registration',function (){
    $slide = [];
    return view('login.registration',compact('slide'));
});
Route::prefix('reg')->group(function () {

    Route::post('puser','Admin\RegController@postReg')->name('postreg');
});
Route::get('/registration','Admin\RegController@getReg')->name('reguser');
// tim kiem sp
Route::get('/search','PageController@Search')->name('searchall');
// logout
Route::get('/logout','Admin\LoginController@logOut')->name('out');
// dang ki
Route::get('/sanpham/{id}','PageController@Product')->name('sp');
Route::get('/dangki',function (){
    return view('login.dangki');
});
// gioi ban hang
Route::get('/addCart/{id}','PageController@Cart')->name('cart');

// them san pham
Route::get('/admin/them-sp','Admin\AdminController@getAdd')->name('tsp');
Route::get('/DropItemToCart/{id}','PageController@dropItem')->name('dropItem');


Route::post('/add','Admin\AdminController@postAdd')->name('addProduct');
Route::get('/admin','Admin\AdminController@admin');
// them loai sp
Route::get('/admin/them-loai-sp','Admin\AdminController@getLoaisp')->name('get_type_product');
Route::post('/admin/add-loai-sp','Admin\AdminController@addLoaisp')->name('add_type_product');
// delete sp
Route::get('/delete/{id}','Admin\AdminController@deleteSP')->name('dropsp');
Route::get('/details/{id_type}/{id}','PageController@detailProduct')->name('details');
// update sp
Route::get('/update/{id}','Admin\AdminController@getUpdate')->name('update_product');
Route::put('/putUpdate/{id}','Admin\AdminController@putUpdate')->name('put_update_product');
// login with fb
Route::get('/redirect/{social}', 'SocialAuthController@redirect')->name('loginApp');
Route::get('/callback/{social}', 'SocialAuthController@callback');
// gui mail
Route::get('/sendmail',function (){
    return view('Email.form');

});
// post mail
Route::post('/getmail','Admin\EmailController@getmail')->name('test_email');

// verify mail

Auth::routes(['verify' => true]);
//Route::get('/home', 'HomeController@index')->name('home');
// dang nhap
Route::post('pusers','Auth\LoginController@postLogin')->name('postlogin');
// Authentication Routes...
Route::get('login', [
    'as' => 'login',
    'uses' => 'Auth\LoginController@showLoginForm'
]);
Route::post('login', [
    'as' => '',
    'uses' => 'Auth\LoginController@login'
]);
Route::post('logout', [
    'as' => 'logout',
    'uses' => 'Auth\LoginController@logout'
]);
Route::get('/upload',function(){

    return view('page.demo');
});
Route::post('/post_img','PageController@upload')->name('post_img');
// Password Reset Routes...
Route::post('password/email', [
    'as' => 'password.email',
    'uses' => 'Auth\ForgotPasswordController@sendResetLinkEmail'
]);
Route::get('password/reset', [
    'as' => 'password.request',
    'uses' => 'Auth\ForgotPasswordController@showLinkRequestForm'
]);
Route::post('password/reset', [
    'as' => 'password.update',
    'uses' => 'Auth\ResetPasswordController@reset'
]);
Route::get('password/reset/{token}', [
    'as' => 'password.reset',
    'uses' => 'Auth\ResetPasswordController@showResetForm'
]);

// Registration Routes...
Route::get('register', [
    'as' => 'register',
    'uses' => 'Auth\RegisterController@showRegistrationForm'
]);
Route::post('register', [
    'as' => '',
    'uses' => 'Auth\RegisterController@register'
]);
Route::get('/reset',function (){
   return view('login.password.forgotpw');
})->name('reset');
Route::get('/forgot-password',function (){
   return view('auth.passwords.email');
})->name('forgot_pw');
// google
// don hang
Route::get('/don-hang','PageController@view_don_hang')->name('don_hang');
Route::get('/don-hang/{id}','PageController@dh_profile')->name('dh');
Route::get('/demo',function(){
   return view('page.index');
})->name('just_demo');
Route::post('/post-don-hang','PageController@post_don_hang')->name('post_don_hang');
Route::get('thanh-toan/{id}','PageController@thanhtoan')->name('thanh_toan');