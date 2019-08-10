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
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.name_ar')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="text" class="form-control" required name="name_ar" id="name_ar" value=""/>
                                    <input type="hidden" class="form-control" name="user_id" id="id" value=""/>

                                </div>


                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.name_en')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="text" class="form-control" name="name_en" id="name_en" value="" autocomplete="of"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.ordering')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="number" class="form-control" name="ordering" required id="ordering"  value="" autocomplete="of"/>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!--end::Form-->
                    <div class="modal-footer text-center" style="display:block">
                        <button type="submit" class="btn btn-success pull-left" value="" > {{trans('backend.update')}}</button>

                        <button type="button" class="btn btn-primary" data-dismiss="modal" id="close-btn">
                            {{trans('backend.close')}}
                        </button>

                    </div>
                </form>


            </div>
        </div>
    </div>
</div>





<script>
    // this function for update item model
    $('#table1').on('click', '#update-item[data-id]', function (e) {

        console.log($(this).data("id"))
        $('#editModal').find('.edit').attr('data-id', $(this).data("id"))
        // get data from server by ajax
        // $('#c').find('option').not(':first').remove();

        getItemDetails($(this).data("id"));
    });
</script>

<script type="application/javascript">




    $('#mmm').on('submit',function(e){
        e.preventDefault();        //   var data = $(this).serialize();
        var id=  $("input[id=id]").val()

        var data = $(this).serialize();
        $.ajax({
            url: "{{url('admin/nationality')}}/"+id,
            data:data ,
            type:"PUT",
            dataType: 'json',
            success: function (data) {
                $('#editModal').modal('hide');
                $('#table1').DataTable().draw(false);

                //     this.table.ajax.reload();
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

    function getItemDetails(id) {
        console.log(id)
        $.ajax({
            url: "{{url('admin/nationality' )}}/"+id,
            data: {"_token": "{{ csrf_token() }}"},
            type:"GET",
            success: function(result){

                // var $dropdown = $("#one");
                // $dropdown.empty()

                // $("#one").va("<option />").val(result.city.city_id).text(result.city.name_ar));
                $("#name_ar").val(result.name_ar);
                $("#name_en").val(result.name_en);
                $("#ordering").val(result.ordering);

                $("#id").val(result.id);
                // console.log(result.name)
                // $('#name').val($(this).data('name'));

                // });
            }});
    }
</script>

<script>
    document.getElementById("close-btn").addEventListener("click", function(){
        document.getElementById("frm-insert").reset();
    });
    function getCitiesforuodate(country) {

        var lang = "{{LaravelLocalization::getCurrentLocale()}}"
        $.ajax({
            url: "{{url('api/get-cites')}}",
            data: {"_token": "{{ csrf_token() }}", 'country_id': country, 'lang': lang},
            type: "POST",
            success: function (result) {
                var $dropdown = $("#tow");
                $dropdown.empty()
                $.each(result.data, function () {
                    $dropdown.append($("<option />").val(this.id).text(this.name));
                });
            }
        });
    }

    $('#country').on('change', function () {
        getCitiesforuodate(this.value)
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
