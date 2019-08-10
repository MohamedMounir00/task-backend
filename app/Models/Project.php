<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    //
    protected $fillable=['name','user_id','desc','image','status','type','cat'];

    public function clients()
    {
        return $this->belongsTo(User::class ,'user_id');
    }
}
