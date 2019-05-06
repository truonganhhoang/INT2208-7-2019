<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    protected $table = 'cart';
    protected $fillable = [
        'id','id_user','name','unit_price','img','id_type','sale_price','drops','amount',
    ];
}
