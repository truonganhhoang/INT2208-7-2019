<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class customer extends Model
{
    //
    protected $table = 'customer';
    protected $fillable = ['id','name','email','address','created_at','update_at','phone_number'];
    public function bills(){
        return $this->hasMany('App\bills','id_customer','id');
    }
}
