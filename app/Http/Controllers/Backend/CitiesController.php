<?php

namespace App\Http\Controllers\Backend;

use App\Http\Requests\Backend\CityRequest;
use App\Models\City;
use App\Models\Country;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Alert;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use Yajra\DataTables\DataTables;

class CitiesController extends Controller
{


    public function index()
    {
        //
        $nationality=Country::orderBy('ordering','asc')->get();

        return view('backend.cities.index',compact('nationality'));

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

        $nationality=new City();
        $nationality->name_ar= $request->name_ar ;
        $nationality->name_en= $request->name_en ;
        $nationality->country_id= $request->country_id ;

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
        $data =City::with('country')->findOrFail($id);
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

        $data=City::findOrFail($id);

        $data->name_ar= $request->name_ar ;
        $data->name_en= $request->name_en ;
        $data->country_id= $request->country_id ;

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
        $data = City::findOrFail($id);

        $data->delete();
        Alert::success(trans('backend.deleteFlash'))->persistent(trans('backend.close2'));

        return response()->json([
            'success' => 'Record has been deleted successfully!'
        ]);
    }



    /// get admins to index
    public function getAnyDate()
    {
        $data =  City::orderBy('id','asc');

        return Datatables::of($data)
            ->addColumn('action', function ($data) {
                if (auth()->user()->can('city-action')){

                    return '
                
                <a href="#" class="btn btn-round  edit btn-primary" data-toggle="modal" data-target="#editModal" id="update-item" data-id="' . $data->id . '">' . trans('backend.update') . '</a>
               <button class="btn btn-delete btn btn-round  btn-danger" data-remote="cities/' . $data->id . '">' . trans('backend.delete') . '</button>';
            }
            })

            ->addColumn('country', function ($data) {
                if (LaravelLocalization::getCurrentLocale()=='ar')
                    return $data->country->name_ar;
                else
                    return $data->country->name_en;


            })




            ->rawColumns(['action','country'])
            ->make(true);
    }

}
