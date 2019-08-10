<?php

namespace App\Http\Controllers\Api;

use App\Helper\Helper;
use App\Http\Requests\Api\FirstRegisterStep;
use App\Http\Requests\Api\UserRegisterRequest;
use App\Http\Resources\Api\LoginCollection;
use App\Http\Resources\Api\StatusCollection;
use App\Models\Client;
use App\Realtor;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    //
    //// login
    public function login(Request $request)
    {
        $lang = $request->lang;

        $request->validate([
            'email' => 'required',
            'password' => 'required'
        ]);
        $user = User::where('email', $request->email)->first();
        if (!$user) {
            return (new StatusCollection(false, trans('api.login_false', [], $lang)))->response()
                ->setStatusCode(401);
        }
        if (!$user->clients)
            (new StatusCollection(false, trans('api.not_permission', [], $lang)))->response()
                ->setStatusCode(401);
        if (Hash::check($request->password, $user->password)) {
           // if ($user->verification!=true)
               // return new StatusCollection(false, trans('api.login_false_activation', [], $lang),$user->id);
            $client = \Laravel\Passport\Client::where('password_client', 1)->first();

            $request->request->add([
                'grant_type' => 'password',
                'client_id' => $client->id,
                'client_secret' => $client->secret,
                'username' => $user['email'],
                'password' => $user['password'],
                'scope' => null,
            ]);



            $user['token'] = $user->createToken('MyApp')->accessToken;

            return new LoginCollection($user);
        } else
            return (new StatusCollection(false, trans('api.login_false', [], $lang)))->response()
                ->setStatusCode(401);
    }
    ///// register
    public function register(UserRegisterRequest $request)
    {

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'verification' => 1,
            'image' => Helper::UploadImge($request, 'uploads/avatars/', 'image'),
            'city_id' => $request->city_id,
            'country_id' => $request->country_id,
        ]);
          Client::create([
            'user_id' => $user->id

        ]);
        $client = \Laravel\Passport\Client::where('password_client', 1)->first();

        $request->request->add([
            'grant_type' => 'password',
            'client_id' => $client->id,
            'client_secret' => $client->secret,
            'username' => $user['email'],
            'password' => $user['password'],
            'scope' => null,
        ]);

        // Fire off the internal request.
        $proxy = Request::create(
            'oauth/token',
            'POST'
        );

        //return \Route::dispatch($proxy);
        $user['token'] = $user->createToken('MyApp')->accessToken;
        return new LoginCollection($user);
    }
    /// upload image profile
    public  function  upload_image_profile(Request $request)
    {
        $lang = $request->lang;

        $id = auth()->user()->id;
        $user = User::findOrFail($id);
        $user->image = Helper::UpdateImage($request, 'uploads/avatars/', 'image', $user->image);
        $user->save();
        $url= url($user->image);
        return (new StatusCollection(true, trans('api.update_done', [], $lang),$url))->response()
            ->setStatusCode(201);
    }
}
