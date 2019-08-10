@extends('backend.layouts.app')
@section('page_title' , trans('backend.roles_create'))
@section('style')


@endsection
@section('breadcrumb')
    {{ Breadcrumbs::render('roles') }}

@endsection

@section('content')

    <div class="kt-portlet kt-portlet--mobile">
        <div class="kt-portlet__head kt-portlet__head--lg">
            <div class="kt-portlet__head-label">
										<span class="kt-portlet__head-icon">
											<i class="kt-font-brand flaticon2-line-chart"></i>
										</span>
                <h3 class="kt-portlet__head-title">
                </h3>
            </div>

        <div class="kt-portlet__body">

            @if (count($errors) > 0)
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

                {!! Form::open(array('route' => 'roles.store','method'=>'POST')) !!}
                <div class="kt-portlet__body">
                    <div class="kt-section kt-section--first">
                        <h3 class="kt-section__title">{{trans('backend.roles_create')}}</h3>
                        <div class="kt-section__body">


                            <div class="form-group row">
                                <label class="col-lg-3 col-form-label">{{trans('backend.name')}}</label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <div class="input-group-prepend"><span class="input-group-text"><i class="la la-chain"></i></span></div>
                                        {!! Form::text('name', null, array('placeholder' => trans('backend.name'),'class' => 'form-control','required')) !!}
                                    </div>
                                </div>
                            </div>




                            <div class="row">

                            	<div class="col-md-3">
                            		<label class="col-form-label ">{{trans('backend.permission')}}</label>
                            	</div>

                            	<div class="col-lg-6">
                                    <div class="kt-checkbox-lis">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="row">
                                                	@foreach($permission as $value)

                                                    {{-- <label class="col-md-6 kt-checkbox d-block">
                                                        {{ Form::checkbox('permission[]', $value->id, false, array('class' => 'form-control ')) }}{{ trans('backend.'.$value->name )}}
                                                        <span></span>
                                                    </label> --}}



                                                  




                                                        <label class="col-md-3 kt-checkbox d-block">{{ trans('backend.'.$value->name )}}</label>
                                                        <div class="col-3">
                                                            <span class="kt-switch">
                                                                <label>
                                                                    {{ Form::checkbox('permission[]', $value->id, false, array('class' => 'form-control ')) }}
                                                                    <span></span>
                                                                </label>
                                                            </span>
                                                        </div>






                                                    @endforeach
                                                    





                                                 




                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>










                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <button type="submit" class="btn btn-primary">{{trans('backend.create')}}</button>
                        <a  href="{{route('roles.index')}}" type="reset" class="btn btn-warning">{{trans('backend.back')}}</a>
                    </div>
                </div>
             
            {!! Form::close() !!}
        <!--end: Datatable -->
        </div>
    </div>




@endsection




@section('scripts')


    <!-- For Switch  -->


@endsection