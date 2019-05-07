<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payments extends Model
{
    protected $table = "payments";

    public function customers()
    {
        return $this->belongsTo('App/Customers', 'customerID', 'checkNumber');
    }
}
