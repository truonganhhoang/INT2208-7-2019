<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Customers extends Model
{
    protected $table = "customers";
    protected $primaryKey = 'customerID';

    public function payments()
    {
        return $this->hasMany('App/Payments', 'customerID', 'customerID');
    }

    public function orders()
    {
        return $this->hasMany('App/Orders', 'customerID', 'customerID');
    }

}
