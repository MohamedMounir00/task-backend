<?php

namespace App\Http\Controllers\Backend;

use App\Helper\Helper;
use App\Http\Requests\Backend\AdminsRequest;
use App\Http\Requests\Backend\CityRequest;
use App\Models\Admins;
use App\Models\City;
use App\Models\Country;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use Yajra\DataTables\DataTables;

class CountriesController extends Controller
{
    public function index()
    {
        //

        return view('backend.nationality.index');

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
    public function store(CityRequest $request)
    {

        $nationality=new Country();
        $nationality->name_ar= $request->name_ar ;
        $nationality->name_en= $request->name_en ;
        $nationality->ordering= $request->ordering ;

        $nationality->save();

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
        $data =Country::findOrFail($id);
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
    public function update(CityRequest $request, $id)
    {
        //

        $data=Country::findOrFail($id);

        $data->name_ar= $request->name_ar ;
        $data->name_en= $request->name_en ;
        $data->ordering= $request->ordering ;

        $data->save();

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
        $data = Country::findOrFail($id);

        $data->delete();
        Alert::success(trans('backend.deleteFlash'))->persistent(trans('backend.close2'));

        return response()->json([
            'success' => 'Record has been deleted successfully!'
        ]);
    }



    /// get admins to index
    public function getAnyDate()
    {
        $data =  Country::orderBy('ordering','asc');

        return Datatables::of($data)
            ->addColumn('action', function ($data) {
                if (auth()->user()->can('country-action')) {

                    return '
                
                <a href="#" class="btn btn-round  edit btn-primary" data-toggle="modal" data-target="#editModal" id="update-item" data-id="' . $data->id . '">' . trans('backend.update') . '</a>
               <button class="btn btn-delete btn btn-round  btn-danger" data-remote="nationality/' . $data->id . '">' . trans('backend.delete') . '</button>';
                }
            })






            ->rawColumns(['action'])
            ->make(true);
    }
}
