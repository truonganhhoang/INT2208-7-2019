<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class products extends Model
{
    //
    protected $table = 'products';
    protected $fillable = [
       'id','name','id_type','description','unit_price','promotion_price','image','unit','new'
    ];
    public function type_products(){
        return $this->hasMany('App\type_products','id_type','id');
    }
    public function bill_detail(){
        return $this->hasMany('app\bill_detail','id_product','id');
    }
}
