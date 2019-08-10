@extends('backend.layouts.app')
@section('page_title' , trans('backend.admins'))
@section('style')

    <link href="{{asset('backend')}}/assets/vendors/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <style>
        .select2-container--default.select2-container--focus .select2-selection--multiple {
            border: 1px solid #DDD;
        }
        .select2-container--default .select2-selection--multiple .select2-selection__rendered {
            margin: 10px 50px;
        }
        .select2-container--default .select2-selection--multiple .select2-selection__rendered {
            width: 330px;
            margin: 10px 5px;
        }
        #preview {
            margin-bottom: 20px;
        }

    </style>
@endsection
@section('breadcrumb')
    {{ Breadcrumbs::render('admins') }}

@endsection
@section('content')


        <div class="kt-portlet kt-portlet--mobile">
            <div class="kt-portlet__head kt-portlet__head--lg">
                <div class="kt-portlet__head-label">
										<span class="kt-portlet__head-icon">
											<i class="kt-font-brand flaticon2-line-chart"></i>
										</span>
                    <h3 class="kt-portlet__head-title">
                       {{trans('backend.projects_controller')}}
                    </h3>
                </div>
                <div class="kt-portlet__head-toolbar">
                    <div class="kt-portlet__head-wrapper">

                    </div>
                </div>
            </div>
            <div class="kt-portlet__body">
                <div class="table-responsive">

                <!--begin: Datatable -->
                <table class="table table-striped- table-bordered table-hover table-checkable" id="table1">
                    <thead>
                    <tr>
                        <th>{{trans('backend.name')}}</th>
                        <th>{{trans('backend.image')}}</th>
                        <th>{{trans('backend.desc')}}</th>
                        <th>{{trans('backend.type')}}</th>
                        <th>{{trans('backend.status')}}</th>
                        <th>{{trans('backend.cat')}}</th>
                        <th>{{trans('backend.client')}}</th>

                        <th>{{trans('backend.date')}}</th>
                        <th>{{trans('backend.action')}}</th>
                    </tr>
                    </thead>
                    <tbody>


                    </tbody>
                </table>
                </div>
                <!--end: Datatable -->
            </div>
        </div>





  @endsection
@section('script')

    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="{{asset('backend')}}/assets/vendors/custom/datatables/datatables.bundle.js" type="text/javascript"></script>
    <script src="{{asset('backend')}}/assets/app/custom/general/crud/datatables/advanced/row-grouping.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.7/js/select2.min.js"></script>

    <script>

        $(function() {



            $('#table1').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{!! route('project.get_project') !!}',
                columns: [
                    { data: 'name', name: 'name' },
                    { data: 'image', name: 'image' } ,
                    { data: 'desc', name: 'desc' },
                    { data: 'type', name: 'type' },
                    { data: 'status', name: 'status' },
                    { data: 'cat', name: 'cat' },

                    { data: 'client', name: 'client' },

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


@endsection
