<?php
/**
 * Created by PhpStorm.
 * User: Genius
 * Date: 31/03/2019
 * Time: 10:03 CH
 */
namespace App;

use Illuminate\Database\Eloquent\Model;

class Rates extends Model
{
    protected $table = "rates";
    protected $fillable = [
        'product_id','customer_id','rate','content'
    ];
}
