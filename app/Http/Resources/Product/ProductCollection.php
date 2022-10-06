<?php

namespace App\Http\Resources\Product;

use Illuminate\Http\Resources\Json\ResourceCollection;

class ProductCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $products = [];

        foreach($this->collection as $product) {
            array_push($products, [
                'name' => $product->name,
                'totalPrice' => round(((1 - $product->discount / 100) * $product->price), 2),
                'rating' => $product->reviews->count() > 0 ? round($product->reviews->sum('star')/$product->reviews->count(), 2) : "No rating yet",
                'discount' => $product->discount,
                'href' => [
                    'link' => route('products.show', $product->id),
                ]
            ]);
        }

        return $products;
        // return [
        //     'name' => $this->name,
        //     'totalPrice' => round(((1 - $this->discount / 100) * $this->price), 2),
        //     'rating' => $this->reviews->count() > 0 ? round($this->reviews->sum('star')/$this->reviews->count(), 2) : "No rating yet",
        //     'href' => [
        //         'link' => route('products.show', $this->id),
        //     ]
            
        // ];
    }
}
