<?php

namespace App\Http\Resources\Api;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Http\Resources\Json\ResourceCollection;

class LoginCollection extends JsonResource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'user_id'=>$this->id,
            'name'=>$this->name,
            'email'=>$this->email,
            'verification'=>$this->verification,
            'image'=>($this->image!='')?url($this->image):'',
            'token'=>$this->token
        ];
    }
}
