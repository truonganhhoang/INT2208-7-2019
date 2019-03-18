<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class type_products extends Model
{
    //
    protected $table = 'type_products';
    public function products(){
        return $this->belongsTo('app\products','id_type','id');
    }
}
