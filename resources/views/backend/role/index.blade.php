@extends('backend.layouts.app')
@section('page_title' , trans('backend.roles'))
@section('style')

    <link href="{{asset('backend')}}/assets/vendors/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">

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
                    {{trans('backend.roles')}}
                </h3>
            </div>
            <div class="kt-portlet__head-toolbar">
                <div class="kt-portlet__head-wrapper">
                    <div class="kt-portlet__head-actions">
                        @can('role-create')

                        <a href="{{route('roles.create')}}" class="btn btn-brand btn-elevate btn-icon-sm" >
                            <i class="la la-plus"></i>
                            {{trans('backend.roles_create')}}
                        </a>
                            @endcan
                    </div>
                </div>
            </div>
        </div>
        <div class="kt-portlet__body">
            <div class="table-responsive">

                <!--begin: Datatable -->
                <table class="table table-striped- table-bordered table-hover table-checkable" id="myTable">
                    <thead>
                    <tr>
                        <th >{{ trans('backend.name') }}</th>

                        <th style="width:280px">{{trans('backend.action')}}</th>
                    </tr>
                    </thead>
                    <tbody>
                     @foreach ($roles as $key => $role)
                         <tr>

                        <td>{{ $role->name }}</td>

                        <td>
                            {{--@if($role->name !='admin')--}}

                              <a class="btn btn-info" href="{{ route('roles.show',$role->id) }}">{{ trans('backend.show') }}</a>
                            @can('role-edit')

                            <a class="btn btn-primary" href="{{ route('roles.edit',$role->id) }}">{{ trans('backend.update') }}</a>
                                  @endcan
                            @can('role-delete')

                            {!! Form::open(['method' => 'DELETE','route' => ['roles.destroy', $role->id],'style'=>'display:inline']) !!}

                                    {!! Form::submit(trans('backend.delete'), ['class' => 'btn btn-danger']) !!}
                                    {!! Form::close() !!}
                            @endcan

                            {{--   @endif--}}

                        </td>
                         </tr>

                     @endforeach

                    </tbody>
                </table>
            </div>
            <!--end: Datatable -->
        </div>
    </div>





@endsection
@section('scripts')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>



    <script>

        function ConfirmDelete()
        {
            var x = confirm("'هل انت متاكد من حذف هذه الصلاحيه؟'");
            if (x)
                return true;
            else
                return false;
        }

    </script>
    <script>
        $(document).ready(function () {
            $('#myTable').DataTable({
                "language": {
                    "decimal": "",
                    "emptyTable": "{{trans('backend.No_data_available_in_table')}}",
                    "infoEmpty": "{{trans('backend.Showing_0_to_0_of_0_entries')}}",
                    "info":           "{{trans('backend.showing')}}_START_ {{trans('backend.to')}} _END_ {{trans('backend.of')}} _TOTAL_{{trans('backend.entries')}} ",

                    "infoPostFix": "",
                    "thousands": ",",
                    "lengthMenu": "{{trans('backend.show_t')}}_MENU_ {{trans('backend.entries')}}",
                    "search": "{{trans('backend.search')}}",
                    "zeroRecords": "{{trans('backend.No_matching_records_found')}}",
                    "paginate": {
                        "first": "{{trans('backend.First')}}",
                        "last": "{{trans('backend.Last')}}",
                        "next": "{{trans('backend.Next')}}",
                        "previous": "{{trans('backend.Previous')}}"
                    }
                }
            });

        });
    </script>


@endsection

