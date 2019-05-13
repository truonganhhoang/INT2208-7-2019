<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
    protected $table = "orders";
    protected $primaryKey = 'orderID';
    public $timestamps = false;

    public function customers()
    {
        return $this->belongsTo('App/Customers', 'customerID', 'orderID');
    }
    public function orderDetails()
    {
        return $this->hasMany('App/Orderdetails', 'orderID', 'orderID');
    }
}
