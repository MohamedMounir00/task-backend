<!-- Modal form to add a post -->
<div id="addModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h4 class="modal-title"></h4>
            </div>

            <div class="modal-body">
                <div id="validation-errors"></div>

                <!--begin::Form-->
                <form action="{{ route('cities.store') }}" method="POST" id="frm-insert"
                      class="kt-form kt-form--label-right">

                    {{ csrf_field() }}
                    <div class="kt-portlet__body">


                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.name_ar')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="text" class="form-control" required name="name_ar"/>

                                </div>


                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.name_en')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="text" class="form-control" name="name_en" autocomplete="of"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.country')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">

                                <select class="form-control " data-placeholder="Select a State"
                                        name="country_id" style="width: 100%;" required data-region-id="one"
                                        id="countries">
                                    <option value="">-------</option>

                                    @foreach($nationality as $c)
                                        @if(app()->getLocale()=='ar')
                                            <option value="{{$c->id}}">{{$c->name_ar}}</option>
                                        @else
                                            <option value="{{$c->id}}">{{$c->name_en}}</option>
                                        @endif>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                    </div>
                    <!--end::Form-->
                    <div class="modal-footer text-center" style="display:block">
                        <input type="submit" class="btn btn-success pull-left" value=" {{trans('backend.save')}}">

                        <button type="button" class="btn btn-primary" data-dismiss="modal" id="close-btn">
                            <span class='glyphicon glyphicon-remove'></span> {{trans('backend.close')}}
                        </button>

                    </div>
                </form>

            </div>
        </div>
    </div>
</div>

//////  get city
<script>
    document.getElementById("close-btn").addEventListener("click", function(){
        document.getElementById("frm-insert").reset();
    });
    </script>

<script>

    $('#frm-insert').on('submit',function(e){
        e.preventDefault();

            var data = $(this).serialize();
            var url = $(this).attr('action');
            var post = $(this).attr('method');
            // console.log(post)
            $.ajax(
                {
                    type: post,
                    url: url,
                    data: data,
                    dataType: 'json',
                    success: function (data) {
                        $('#addModal').modal('hide');
                        $('#table1').DataTable().draw(false);

                   //     this.table.ajax.reload();
                        swal({
                            text: data.success,
                            type: 'success',
                            timer: '1500'
                        })
                    },
                    error: function (xhr) {
                        $('#validation-errors').html('');
                        $.each(xhr.responseJSON.errors, function (key, value) {
                            $('#validation-errors').append('<div class="alert alert-danger" > <button type="button" class="close" data-dismiss="alert" aria-hidden="true" >&times;</button> ' + value + '</div>');
                        });
                    },
                });
            return false;

            });
//console.log(url);


</script>

