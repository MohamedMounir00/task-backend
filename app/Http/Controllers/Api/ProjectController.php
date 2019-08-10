<?php

namespace App\Http\Controllers\Api;

use App\Helper\Helper;
use App\Http\Requests\Api\ProjectRequest;
use App\Http\Resources\Api\ProjectResouce;
use App\Http\Resources\Api\StatusCollection;
use App\Models\Project;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    //// get all my project
    public function get_project()
    {
        //
        $project=Project::where('user_id',auth()->user()->id)->get();
        return ProjectResouce::collection($project);
    }


  ///// add project in database
    public function save_project(ProjectRequest $request)
    {
        //
        $lang=$request->lang;
        Project::create([
            'name'=>$request->name,
            'desc'=>$request->desc,
            'type'=>$request->type,
            'status'=>$request->status,
            'cat'=>$request->cat,
            'user_id'=>auth()->user()->id,
            'image'=>Helper::UploadImge($request, 'uploads/project/', 'image'),
        ]);
        return (new StatusCollection(true, trans('api.project_create', [], $lang)))->response()
            ->setStatusCode(200);


    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function get_project_by_id($id)
    {
        //
        $project=Project::where('user_id',auth()->user()->id)->find($id);
        return new ProjectResouce($project);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update_project(Request $request)
    {
        //
        $id=$request->id;
        $lang=$request->lang;
        $project=Project::where('user_id',auth()->user()->id)->find($id);
        $project->update([
            'name'=>$request->name,
            'desc'=>$request->desc,
            'type'=>$request->type,
            'status'=>$request->status,
            'cat'=>$request->cat,
        ]);

        return (new StatusCollection(true, trans('api.project_update', [], $lang)))->response()
            ->setStatusCode(200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $id=$request->id;
        $lang=$request->lang;
        $project=Project::where('user_id',auth()->user()->id)->find($id);
        $project->delete();
        return (new StatusCollection(true, trans('api.project_delete', [], $lang)))->response()
            ->setStatusCode(200);
    }
}
