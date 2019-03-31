<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class type_products extends Model
{
    //
    protected $table = 'type_products';
    protected $fillable = [
        'id','name','description','image',
    ];
    public function products(){
        return $this->belongsTo('app\products','id_type','id');
    }
}
