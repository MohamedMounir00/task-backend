<?php

namespace App\Http\Controllers\Backend;

use App\Helper\Helper;
use App\Http\Requests\Backend\AdminsRequest;
use App\Models\Admins;
use App\Models\City;
use App\Models\Country;
use App\Models\Project;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use Spatie\Permission\Models\Role;
use Yajra\DataTables\DataTables;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //

        return view('backend.projects.index');

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
    public function store(AdminsRequest $request)
    {

        }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

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
        $data =User::findOrFail($id);
        $nationality=Country::where('id',178)->orderBy('ordering','asc')->get();
        $cities = City::where('country_id',178)->get();

        return view('admins.edit',compact('data','nationality','cities'));

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




    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = Project::findOrFail($id);

        $data->delete();
        Alert::success(trans('backend.deleteFlash'))->persistent(trans('backend.close2'));

        return response()->json([
            'success' => 'Record has been deleted successfully!'
        ]);
    }



    /// get all projects
    public function getAnyDate()
    {
        $data =  Project::all();

        return Datatables::of($data)
            ->addColumn('action', function ($data) {



                return  ' <button class="btn btn-delete btn btn-round  btn-danger" data-remote="project/' . $data->id . '">' . trans('backend.delete') . '</button>';



            })
            ->addColumn('image', function ($data) { $url=asset($data->image);
                if ($data->image=='')
                    return '<a ><img src="https://www.mycustomer.com/sites/all/modules/custom/sm_pp_user_profile/img/default-user.png" border="0" width="40" class="img-rounded" align="center"   /><a>';

                else
                    return ' <a ><img src='.$url.' border="0" width="40" class="img-rounded" align="center"   /><a>';

            })

            ->addColumn('client', function ($data) {
                    return $data->clients->name;



            })



            ->rawColumns(['action', 'name','image','client'])
            ->make(true);
    }
}
