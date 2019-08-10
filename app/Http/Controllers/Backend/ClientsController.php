<?php

namespace App\Http\Controllers\Backend;

use App\Helper\Helper;
use App\Http\Requests\Backend\ClientRequest;
use App\Models\Client;
use App\Models\Country;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use Yajra\Datatables\Datatables;
use Alert;
use DB;
class ClientsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $nationality=Country::orderBy('ordering','asc')->get();

        return view('backend.clients.index',compact('nationality'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //



    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ClientRequest $request)
    {

        $user = User::create([
            'name'        => $request->name,
            'email'       => $request->email,
            'phone'       => $request->phone,
            'country_id'  => $request->country_id,
            'city_id'  => $request->city_id,
            'image'       => Helper::UploadImge($request,'uploads/avatars/','image'),
            'password'    => bcrypt($request->password),
        ]);
        Client::create([
            'user_id'          => $user->id,
        ]);
        if ($user)
            Alert::success(trans('backend.created'))->persistent(trans('backend.close2'));

        return response()->json([
            'success' => trans('backend.created')
        ]);    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data =User::with('city','country','roles')->findOrFail($id);
        return $data;
        //response()->json(['data'=>$data]);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //



    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //

        $data=User::findOrFail($id);
        $request->validate([

            'name'=>'required',
            'email' => 'required|email|unique:users,email,'. $data->id,
            'password' => 'nullable|min:6',
            'phone'=>'required|min:9',
            'country_id'=>'required',
            'city_id'=>'required',


        ]);


        // $data->update([
        $data->name     = $request->name;
        $data->email      = $request->email;
        $data->phone       = $request->phone;
        $data->image       = Helper::UpdateImage($request,'uploads/avatars/','image',$data->image);
        $data->country_id  = $request->country_id;
        $data->city_id  = $request->city_id;
        if (isset($request->password))
            $data->password = bcrypt($request->password);      //  ]);
        $data->save();



        if ($data)
            Alert::success(trans('backend.updateFash'))->persistent(trans('backend.close2'));

        return response()->json([
            'success' => trans('backend.updateFash')
        ]);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = User::findOrFail($id);
        $data2 = Client::where('user_id',$id)->first();

        $data->delete();
        $data2->delete();
        Alert::success(trans('backend.deleteFlash'))->persistent(trans('backend.close2'));

        return response()->json([
            'success' => 'Record has been deleted successfully!'
        ]);
    }



    /// get admins to index
    public function getAnyDate()
    {
        $data =  User::whereHas('clients', function ($q) {})->get();

        return Datatables::of($data)
            ->addColumn('action', function ($data) {
                $action="";





                        $action.= ' <a href="#" class="btn btn-round  show btn-success" data-toggle="modal" data-target="#showModal" id="show-item" data-id="' . $data->id . '">' . trans('backend.show') . '</a>';

                        $action.= ' <a href="#" class="btn btn-round  edit btn-primary" data-toggle="modal" data-target="#editModal" id="update-item" data-id="' . $data->id . '">' . trans('backend.update') . '</a>';

                        $action.= ' <button class="btn btn-delete btn btn-round  btn-danger" data-remote="admins/' . $data->id . '">' . trans('backend.delete') . '</button>';
                    return $action;


            })
            ->addColumn('image', function ($data) { $url=asset($data->image);
                if ($data->image=='')
                    return '<a data-toggle="modal" data-target="#uploadModal"  id="update-avatar"data-id="'.$data->id.'"><img src="https://www.mycustomer.com/sites/all/modules/custom/sm_pp_user_profile/img/default-user.png" border="0" width="40" class="img-rounded" align="center"   /><a>';

                else
                    return ' <a data-toggle="modal" data-target="#uploadModal"  id="update-avatar" data-id="'.$data->id.'"><img src='.$url.' border="0" width="40" class="img-rounded" align="center"   /><a>';

            })

            ->addColumn('country', function ($data) {
                if (LaravelLocalization::getCurrentLocale()=='ar')
                    return $data->country->name_ar;
                else
                    return $data->country->name_en;


            })
            ->addColumn('city', function ($data) {
                if (LaravelLocalization::getCurrentLocale()=='ar')
                    return $data->city->name_ar;
                else
                    return $data->city->name_en;


            })





            ->rawColumns(['action', 'name','image','category', 'country'])
            ->make(true);
    }
}
