<?php

namespace App\Http\Controllers\Backend;

use App\Helper\Helper;
use App\Http\Resources\Api\StatusCollection;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DataController extends Controller
{
    //



    public  function  upload_image_profile(Request $request)
    {
            $lang = $request->lang;

           $id =$request->admin_id;
            $user = User::findOrFail($id);
            $user->image = Helper::UpdateImage($request, 'uploads/avatars/', 'image', $user->image);
            $user->save();
            $url = url($user->image);
            return (new StatusCollection(true, trans('api.update_done', [], $lang), $url))->response()
                ->setStatusCode(201);

    }

}
