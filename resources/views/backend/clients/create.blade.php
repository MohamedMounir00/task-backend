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
                <form action="{{ route('clients.store') }}" method="POST" id="frm-insert"
                      class="kt-form kt-form--label-right">

                    {{ csrf_field() }}
                    <div class="kt-portlet__body">


                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.name_admin')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="text" class="form-control" required name="name"/>

                                </div>


                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.email')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="email" class="form-control" name="email" autocomplete="of"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.password')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="password" class="form-control" required name="password" autocomplete="new-password" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.phone')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="number" class="form-control" required name="phone"/>
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
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.city')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">

                                <select class="form-control " data-placeholder="Select a State"
                                        name="city_id" required id="one">
                                    <option value="">-------</option>

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
    function getCities(country) {

        var lang = "{{LaravelLocalization::getCurrentLocale()}}"
        $.ajax({
            url: "{{url('api/get-cites')}}",
            data: {"_token": "{{ csrf_token() }}", 'country_id': country, 'lang': lang},
            type: "POST",
            success: function (result) {
                var $dropdown = $("#one");
                $dropdown.empty()
                $.each(result.data, function () {
                    $dropdown.append($("<option />").val(this.id).text(this.name));
                });
            }
        });
    }

    $('#countries').on('change', function () {
        getCities(this.value)
    });

</script>
////////////////insert data in data base



<script>

    $('#frm-insert').on('submit',function(e){
        e.preventDefault();

            var data = $(this).serialize();
            var url = $(this).attr('action');
            var post = $(this).attr('method');
            // console.log(post)
        Service.ajaxReq(url, data, post, function (status, result) {
            if (status) {
                $('#addModal').modal('hide');
                $('#table1').DataTable().draw(false);

                swal({
                    text: result.success,
                    type: 'success',
                    timer: '1500'
                })
            } else {
                $('#validation-errors').html('');
                $.each(result, function (key, value) {
                    $('#validation-errors').append('<div class="alert alert-danger" > <button type="button" class="close" data-dismiss="alert" aria-hidden="true" >&times;</button> ' + value + '</div>');
                });
            }
        });

            });
//console.log(url);



</script>

<script type="text/javascript">
    $(document).ready(function() {
        $('.select3').select2();
    })
</script>