<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class bill_detail extends Model
{
    //
    protected $table = 'bill_detail';
    protected $fillable = ['id','id_product','unit_price','quantity','created_at','updated_at',];
}
