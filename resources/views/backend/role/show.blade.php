@extends('backend.layouts.app')

@section('page_title' , trans('backend.showrole'))

@section('breadcrumb')


    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
        <h4 class="page-title">{{ trans('backend.showrole') }}</h4>
    </div>


@endsection


@section('content')


<div class="row">
    <div class="col-md-12">

            <div class="kt-portlet kt-portlet--mobile">
                    <div class="kt-portlet__head kt-portlet__head--lg">
                        <div class="kt-portlet__head-label">
                            <span class="kt-portlet__head-icon">
                                <i class="kt-font-brand flaticon2-line-chart"></i>
                            </span>
                            <h3 class="kt-portlet__head-title">
                                Column Rendering
                            </h3>
                        </div>
                        
                        <div class="kt-portlet__head-toolbar">
                            <div class="kt-portlet__head-wrapper">
                                <div class="kt-portlet__head-actions">
                                  
                                    <a href="{{ route('roles.index') }}" class="btn btn-brand btn-elevate btn-icon-sm">
                                        <i class="la la-plus"></i>
                                        {{ trans('backend.back') }}
                                    </a>
                                </div>
                            </div>
                        </div>
                
                
                
                
                        
                        
                    </div>
                    <div class="kt-portlet__body">
                
                                
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                        <strong class="roletitle">{{ trans('backend.name') }} : </strong>
                                        <span class="rolename">{{ $role->name }}</span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    {{-- <div class="form-group">
                                        <strong class="roletitle">{{trans('backend.showrole')}} : </strong>
                                        @if(!empty($rolePermissions))
                                            @foreach($rolePermissions as $v)
                                                <label class="label label-success">  {{ trans('backend.'.$v->name )}} ,  </label>
                                            @endforeach
                                        @endif

                                    </div> --}}
                                    

                                    <strong class="roletitle">{{trans('backend.showrole')}} : </strong>
                                    <br>
                                    <br>
                                <div class="form-group row">
                                       
                                        @if(!empty($rolePermissions))
                                        @foreach($rolePermissions as $v)
                                        <div class="col-6">
                                            <span class="kt-switch">
                                                <label>
                                                    {{ Form::checkbox('permission[]', $v->id, true, array('class' => 'kt-checkbox','disabled')) }}
    
                                                    {{ trans('backend.'.$v->name )}}
                
                                                    <span></span>
                                                </label>
                                            </span>
                                        </div>
                                        @endforeach
                                        @endif 
                                    </div>
                                </div>







                            </div>

                        </div>
                </div>
    </div>
</div>
































{{-- 

    <div class="col-sm-12">
        <div class="white-box">
            
                <div class="row">
                    <div class="col-lg-12 margin-tb">
                        <div class="pull-left">
                            <h2> {{trans('backend.showrole')}}</h2>
                        </div>
                        <div class="pull-right">
                            <a class="btn btn-primary" href="{{ route('roles.index') }}"> {{ trans('backend.reset') }}</a>
                        </div>
                    </div>
                </div> --}}

{{-- 
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>{{ trans('backend.name') }}:</strong>
                            {{ $role->name }}
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <div class="form-group">
                            <strong>{{trans('backend.showrole')}}:</strong>
                            @if(!empty($rolePermissions))
                                @foreach($rolePermissions as $v)
                                    <label class="label label-success">  {{ trans('backend.'.$v->name )}}  </label>
                                @endforeach
                            @endif
                        </div>
                    </div>
                </div>


            </div>
        </div> --}}


@endsection


