<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\UploadRequest;
use App\Image as imageModel;
use App\Models\File;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;

class UploadController extends Controller
{
    //
    //upload image for webservices
    public function upload_api(UploadRequest $request){
        $image=$this->image($request);
        $url=$image->url;
        return response()->json(['status'=>true,'id'=>$image->id,'url'=>$url]);
    }
    // function upload for all
    public  function image($request)
    {
        $image = $request->file('file');
        $slug= "bgh-dsd";
        $key=time() . rand(99999, 999999999);
        $fileName = "img-".$slug."-".$key. "." . strtolower($image->getClientOriginalExtension());
        $destinationPath = 'uploads/files/';

        //Upload Images One After the Order into folder
        $img = Image::make($image->getRealPath());
    //    $watermark = Image::make(public_path('/frontend/images/watermark-logo.png'));
        //  $watermark = Image::make(public_path('/frontend/images/logo.png'));
        // resize watermark width keep height auto
        $resizePercentage = 25;//70% less then an actual image (play with this value)
     //   $watermarkSize = $img->height() / 3; //half of the image size
      //  $watermark->resize(null, $watermarkSize, function ($constraint) {
           // $constraint->aspectRatio();
       // });
      //  $img->insert($watermark, 'bottom-right');
        $img->save(public_path($destinationPath).$fileName);
        //$move = $image->move($destinationPath, $fileName);
        $path=$destinationPath.$fileName;
        $image=File::create([
            'url'=>$path
        ]);
        return $image;
    }

}
