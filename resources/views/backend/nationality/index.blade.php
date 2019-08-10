@extends('backend.layouts.app')
@section('page_title' , trans('backend.nationality'))
@section('style')
    <link href="{{asset('backend')}}/assets/vendors/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">

@endsection
@section('breadcrumb')
    {{ Breadcrumbs::render('nationality') }}

@endsection
@section('content')


        <div class="kt-portlet kt-portlet--mobile">
            <div class="kt-portlet__head kt-portlet__head--lg">
                <div class="kt-portlet__head-label">
										<span class="kt-portlet__head-icon">
											<i class="kt-font-brand flaticon2-line-chart"></i>
										</span>
                    <h3 class="kt-portlet__head-title">
                       {{trans('backend.nationality_controller')}}
                    </h3>
                </div>
                <div class="kt-portlet__head-toolbar">
                    <div class="kt-portlet__head-wrapper">
                        <div class="kt-portlet__head-actions">
                            @can('country-create')

                            <a href="#" class="btn btn-brand btn-elevate btn-icon-sm" data-toggle="modal" data-target="#addModal">
                                <i class="la la-plus"></i>
                                {{trans('backend.nationality_create')}}
                            </a>
                                @endcan
                        </div>
                    </div>
                </div>
            </div>



            <div class="kt-portlet__body">
                <div id="kt_table_1_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <div class="row">
                            <div class="col-sm-12">
  <table class="table table-striped- table-bordered table-hover table-checkable" id="table1">
                    <thead>
                    <tr>
                        <th>{{trans('backend.name_ar')}}</th>
                        <th>{{trans('backend.name_en')}}</th>
                        <th>{{trans('backend.date')}}</th>

                        <th>{{trans('backend.action')}}</th>
                    </tr>
                    </thead>
                    <tbody>


                    </tbody>
                </table>
                            </div>
                        </div>
                    </div>
            </div>
        </div>





  @endsection
@section('script')

    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>





    <script>
        $(function() {

            $('#table1').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{!! route('nationality.get_nationality') !!}',
                columns: [
                    { data: 'name_ar', name: 'name_ar' },
                    { data: 'name_en', name: 'name_en' },

                    { data: 'created_at', name: 'created_at' },

                    {data: 'action', name: 'action', orderable: false, searchable: false},

                ],
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
                    "processing":     "{{trans('backend.processing')}}",

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
    <script>

            $('#table1').on('click', '.btn-delete[data-remote]', function (e) {
            e.preventDefault();
          ;
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            var url = $(this).data('remote');



            swal({
                title: "{{trans('backend.ask_delete')}}",
                type: "warning",
                buttons: true,
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Yes, delete it!",
                buttons: ['{{trans('backend.no')}}', '{{trans('backend.yes')}}'],

                closeOnConfirm: false
            }).then(function(yes) {
                if (yes) {
                    $.ajax({
                        url: url,
                        type: 'DELETE',
                        dataType: 'json',
                        data: {method: '_DELETE', submit: true}
                    }).always(function (data) {
                        $('#table1').DataTable().draw(false);
                    });
                }
                else {
                    return false;
                }
            })

        })
    </script>

    @include('backend.nationality.create')
    @include('backend.nationality.edit')

@endsection
