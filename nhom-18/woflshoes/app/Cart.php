<?php

namespace App;

class Cart
{
    public $items=array();
    public $totalQuantity=0;
    public $totalPrice=0;

    public function __construct($oldCart)
    {
        if($oldCart)
        {
            $this->items=$oldCart->items;
            $this->totalQuantity=$oldCart->totalQuantity;
            $this->totalPrice=$oldCart->totalPrice;
        }
    }

    public function add($item, $id)
    {

        $giohang=['quantity'=>0, 'price'=>$item->productPrice, 'item'=>$item];
        if($this->items)
        {
            if(array_key_exists($id, $this->items))
            {

                $giohang=$this->items[$id];
            }
        }
        $giohang['quantity'] ++;
        $giohang['price']=$item->productPrice * $giohang['quantity'];
        $this->items[$id]=$giohang;
        $this->totalQuantity++;
        $this->totalPrice += $item->productPrice;
    }

    public function add2($item, $id, $total)
    {

        $giohang=['quantity'=>0, 'price'=>$item->productPrice, 'item'=>$item];
        if($this->items)
        {
            if(array_key_exists($id, $this->items))
            {

                $giohang=$this->items[$id];
            }
        }
        $giohang['quantity'] += $total;
        $giohang['price']=$item->productPrice * $giohang['quantity'];
        $this->items[$id]=$giohang;
        $this->totalQuantity += $total;
        $this->totalPrice += $item->productPrice * $total;
    }

    public function reduceByOne($id)
    {
        $this->items[$id]['quantity']--;
        $this->items[$id]['price'] -=$this->items[$id]['item']['price'];
        $this->totalQuantity--;
        $this->totalPrice -= $this->items[$id]['item']['price'];
        if($this->items[$id]['quantity']<=0)
        {
            unset($this->items[$id]);
        }
    }
    public function removeItem($id)
    {
        $this->totalQuantity -= $this->items[$id]['quantity'];
        $this->totalPrice -= $this->items[$id]['price'];
        unset($this->items[$id]);
    }
}