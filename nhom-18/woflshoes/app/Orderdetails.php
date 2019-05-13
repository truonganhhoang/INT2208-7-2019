<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Orderdetails extends Model
{
    protected $table = "orderdetails";
    protected $primaryKey = 'orderID';
    public $timestamps = false;
    public function products()
    {
        return $this->belongsTo('App/Products', 'productID', 'orderID');
    }
    public function orders()
    {
        return $this->belongsTo('App/Orders', 'orderID', 'orderID');
    }
}
