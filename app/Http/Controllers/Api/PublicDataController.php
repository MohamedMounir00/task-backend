<?php

namespace App\Http\Controllers\Api;


use App\Http\Resources\Api\CityCollection;
use App\Http\Resources\Api\CountryCollection;
use App\Models\City;
use App\Models\Country;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PublicDataController extends Controller
{
    //

    public function country(Request $request)
    {
        $country= Country::orderBy('ordering','asc')->get();
        return CountryCollection::collection($country);

    }

    public function city(Request $request)
    {
        $id=$request->country_id;
        $city= City::where('country_id',$id)->get();
        return CityCollection::collection($city);
    }
}
