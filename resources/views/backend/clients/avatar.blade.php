<div id="uploadModal" class="modal fade " role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">{{trans('backend.upload_avatar')}}</h4>
            </div>
            <div class="modal-body">
                <!-- Preview-->
                <div id='preview'></div>
                <!-- Form -->
                <form method="post" id="upload_form" enctype="multipart/form-data">
                    <input type="hidden" name="user_id" value="" id="admin_id">
                    {{trans('backend.select_image')}}: <input type='file' name='image' id='file' class='form-control' ><br>
                    <input type='submit' class='btn btn-info' value='{{trans('backend.update')}}' id='upload'>
                </form>


            </div>

        </div>

    </div>
</div>


<script>
    // this function for update item model
    $('#table1').on('click', '#update-avatar[data-id]', function (e) {
        $("#admin_id").val($(this).data("id"));
        var imgURL = $(this).find('img').attr('src');
        $('#preview').html("<img src='"+imgURL+"' width='100' height='100' style='display: inline-block;'>");
    });
</script>

<script>
        $('#upload_form').on('submit', function(event){
            event.preventDefault();
            var admin_id = $("input[id=admin_id]").val()
            var fd = new FormData();
            var files = $('#file')[0].files[0];
            fd.append('image',files);
            fd.append('_token', '{{csrf_token()}}');
            fd.append('admin_id', admin_id);

            // AJAX request
            $.ajax({
                type: 'POST', // Type of response and matches what we said in the route
                url: "{{route('upload_avatar_profile')}}",
                data: fd, // <-- this is your POST data
                contentType: false,
                processData: false,
                success: function(response){
                    $('#uploadModal').modal('hide');

                    $('#table1').DataTable().draw(false);
                }
            });
        });
</script>