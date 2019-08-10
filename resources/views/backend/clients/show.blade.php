<!-- Modal form to add a post -->
<div id="showModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <div id="validation-errors2"></div>

                <!--begin::Form-->
                <form id="show"
                      class="kt-form kt-form--label-right">

                    <div class="kt-portlet__body">


                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.name_admin')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="hidden" class="form-control" name="user_id" id="user_id" value=""/>

                                    <input type="text" class="form-control" required name="name" id="name_show" value="" disabled />

                                </div>


                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.name_admin')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="email" class="form-control" name="email" id="email_show" value="" disabled/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.phone')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">
                                <div class="input-group date">
                                    <input type="number" class="form-control" required name="phone" id="phone_show" value="" disabled/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.country')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12">

                                <select class="form-control " data-placeholder="Select a State"
                                        name="country_id" style="width: 100%;" required data-region-id="tow_show"
                                        id="country_show" disabled>


                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-form-label col-lg-3 col-sm-12">{{trans('backend.city')}}</label>
                            <div class="col-lg-9 col-md-9 col-sm-12" >

                                <select class="form-control " data-placeholder="Select a State"
                                        name="city_id" required id="tow_show" disabled>

                                </select>
                            </div>
                        </div>
                    </div>

                    <!--end::Form-->
                    <div class="modal-footer text-center" style="display:block">

                        <button type="button" class="btn btn-primary" data-dismiss="modal" id="close-btn">
                            <span class='glyphicon glyphicon-remove'></span> {{trans('backend.close')}}
                        </button>

                    </div>
                </form>


            </div>
        </div>
    </div>
</div>





<script>
    document.getElementById("close-btn").addEventListener("click", function(){
        document.getElementById("show").reset();
    });
    // this function for update item model
    $('#table1').on('click', '#show-item[data-id]', function (e) {

        console.log($(this).data("id"))
        // get data from server by ajax
        // $('#c').find('option').not(':first').remove();

        show($(this).data("id"));
    });
</script>

<script type="application/javascript">






    function show(id) {
        console.log(id)
        $.ajax({
            url: "{{url('admin/clients' )}}/"+id,
            data: {"_token": "{{ csrf_token() }}"},
            type:"GET",
            success: function(result){

                // var $dropdown = $("#one");
                // $dropdown.empty()
                var lang = "{{LaravelLocalization::getCurrentLocale()}}"

                if (lang=='ar')
                    var namecity=result.city.name_ar
                else
                    var namecity=result.city.name_en
                $('#tow_show').prepend($("<option/>",{
                    value : result.city_id,
                    text  :  namecity,
                    selected: true

                }));
                if (lang=='ar')
                    var name=result.country.name_ar
                else
                    var name=result.country.name_en

                $('#country_show').prepend($("<option/>",{
                    value : result.country_id,
                    text  : name ,
                    selected: true
                }));
                // $("#one").va("<option />").val(result.city.city_id).text(result.city.name_ar));
                $("#name_show").val(result.name);
                $("#email_show").val(result.email);
                $("#phone_show").val(result.phone);
                $("#bb").val(result.id);
                // $('#name').val($(this).data('name'));

                // });
            }});
    }
</script>






