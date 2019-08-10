<!-- Modal form to add a post -->
<div id="editModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <div id="validation-errors2"></div>

                <!--begin::Form-->
                <form id="mmm"
                      class="kt-form kt-form--label-right">

                    <div class="kt-portlet__body">


                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.name_admin')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="hidden" class="form-control" name="user_id" id="user_id" value=""/>

                                    <input type="text" class="form-control" required name="name" id="name" value=""/>

                                </div>


                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.email')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="email" class="form-control" name="email" id="email" value=""/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.password')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="password" class="form-control" name="password"
                                           autocomplete="new-password"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.phone')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="number" class="form-control" required name="phone" id="phone"
                                           value=""/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.country')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">

                                <select class="form-control " data-placeholder="Select a State"
                                        name="country_id" style="width: 100%;" required data-region-id="city-input"
                                        id="country">

                                    @foreach($nationality as $c)
                                        @if(app()->getLocale()=='ar')
                                            <option value="{{$c->id}}">{{$c->name_ar}}</option>
                                        @else
                                            <option value="{{$c->id}}">{{$c->name_en}}</option>
                                        @endif >
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.city')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">

                                <select class="form-control " data-placeholder="Select a State"
                                        name="city_id" required id="city-input">

                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.roles')}}</label>
                        <div class="col-lg-9 col-md-9 col-sm-12">

                            <select class="form-control select4" multiple="multiple"data-placeholder="Select a State"
                                    name="roles[]" required id="roles" >
                                @foreach($roles as $role)
                                    <option value="{{$role->id}}">{{$role->name}} </option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <!--end::Form-->
                    <div class="modal-footer text-center" style="display:block">
                        <button type="submit" class="btn btn-success pull-left"
                                value=""> {{trans('backend.update')}}</button>

                        <button type="button" class="btn btn-primary" data-dismiss="modal" id="close-btn">
                            <span class='glyphicon glyphicon-remove'></span> {{trans('backend.close')}}
                        </button>

                    </div>
                </form>


            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    $(document).ready(function() {
        $('.select4').select2({});
    })


</script>

<script>

    // for cleaning form inputs when close modal
    $('#editModal').on('hidden.bs.modal', function () {
        $(this).find("input,select").val('').end();
        $('#shareLocationModal').on('hidden.bs.modal', function(){
            $(this).find('form')[0].reset(); // To reset form fields
        })
    });

    // this function for update item model
    $('#table1').on('click', '#update-item[data-id]', function (e) {

        console.log($(this).data("id"))
        $('#editModal').find('.edit').attr('data-id', $(this).data("id"))
        // get data from server by ajax
        $('#city-input').find('option').not(':first').remove();

        getItemDetails($(this).data("id"));
    });
</script>

<script type="application/javascript">


    //// edit data
    $('#mmm').on('submit', function (e) {
        e.preventDefault();        //   var data = $(this).serialize();
        var user_id = $("input[id=user_id]").val()

        var data = $(this).serialize();
        $.ajax({
            url: "{{url('admin/admins')}}/" + user_id,
            data: data,
            type: "PUT",
            dataType: 'json',
            success: function (data) {
                $('#editModal').modal('hide');
                $('#table1').DataTable().draw(false);

                swal({
                    text: data.success,
                    type: 'success',
                    timer: '1500'
                })
            },
            error: function (xhr) {
                $('#validation-errors2').html('');
                $.each(xhr.responseJSON.errors, function (key, value) {
                    $('#validation-errors2').append('<div class="alert alert-danger" > <button type="button" class="close" data-dismiss="alert" aria-hidden="true" >&times;</button> ' + value + '</div>');
                });
            },
        });
        return false;

    });


    /// get data
    function getItemDetails(id) {

        Service.ajaxReqWithLang("{{url('admin/admins' )}}/" + id,
                        {},
                        "GET", function (status, result) {
                if (status) {
                    // set city selected

                    HelperFuncs.getAllCitiesBuCountryId(result.country_id, function (data) {
                        var $dropdown = $("#city-input");
                        $dropdown.empty()
                        $.each(data.data, function () {
                            $dropdown.append($("<option />").val(this.id).text(this.name));
                        });
                        $("#city-input").val(result.city_id+"").prop('selected', true);
                    });

                    // set country input
                    $("#country").val(result.country_id+"").prop('selected', true);

                    // set roles input
                    var selectedArr = [];
                    $.each(result.roles, function () {
                        selectedArr.push(this.id)
                    })

                    $('#roles').val(selectedArr);
                    $('#roles').trigger('change'); // Notify any JS components that the value changed


                    // set values for another inputs
                    $("#name").val(result.name);
                    $("#email").val(result.email);
                    $("#phone").val(result.phone);
                    $("#user_id").val(result.id);
                }
            });

    }
</script>

<script>


    $('#country').on('change', function () {
        HelperFuncs.getAllCitiesBuCountryId(this.value, function (result) {
            var $dropdown = $("#city-input");
            $dropdown.empty()
            $.each(result.data, function () {
                $dropdown.append($("<option />").val(this.id).text(this.name));
            });
        })
    });

</script>
