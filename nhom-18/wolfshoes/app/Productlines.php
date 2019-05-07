<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Productlines extends Model
{
    protected $table = "productlines";

    public function products()
    {
        return $this->hasMany('App/products', 'productLineID', 'productLineID');
    }
}
