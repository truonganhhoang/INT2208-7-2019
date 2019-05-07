<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class bills extends Model
{
    //
    protected $table = 'bills';
    protected $fillable = ['id','id_customer','payment','date_order','total','note','created_at','updated_at',];

    public function bill_detail(){
        return $this->hasMany('app\bill_detail','id_bill','id');
    }
    public function customer(){
        return $this->belongsTo('App\customer','id_customer','id');
    }
}
