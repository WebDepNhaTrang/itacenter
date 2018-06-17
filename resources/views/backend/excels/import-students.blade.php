@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_title', __('Import Students'))

@section('page_header')
    <h1 class="page-title">
        <i class="icon voyager-list-add"></i>
        Import Students
    </h1>
@stop

@section('content')
    <div class="page-content edit-add container-fluid">
        @include('voyager::alerts')
        <div class="row">
            <div class="col-md-3">
                <div class="panel panel-bordered">
                    <!-- form start -->
                    
                    <form id="form-import" action="#" method="post" enctype="multipart/form-data">
                        <!-- CSRF TOKEN -->
                        {{ csrf_field() }}

                        <div class="panel-body">
                            <div class="form-group">
                                <label for="file">File Input</label>
                                <input type="file" name="students_file" id="file-import">
                            </div>
                        </div>
                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary save" id="import-btn">{{ __('Import') }}</button>
                            <button type="submit" class="btn btn-success save" id="review-btn">{{ __('Review') }}</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-9">
            
                <div class="panel panel-bordered show-review">
                    
                </div>
            </div>
        </div>
    </div>
@stop

@section('javascript')
    <script>
        
        $('document').ready(function () {
            
            // Ajax Review Import Students
            $('#review-btn').click(function(e){
                e.preventDefault();
                
                var uf = $('#form-import');
                var fd = new FormData(uf[0]);

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                });

                jQuery.ajax({
                    url: "{{ route('backend.excel.postReviewStudents') }}",
                    method: 'post',
                    data: fd,
                    contentType: false,
                    processData:false,
                    success: function(data){
                        // console.log(data);
                        var html = "";
                        $(".show-review").html("");
                        if(data.result == 'false'){
                            html = "<h6>"+data.message+"</h6>";
                            $(".show-review").append(html);
                        }else if(data.result == 'true'){
                            html = "<h6>"+data.message+"</h6>";
                            
                            html += '<table class="table">';
                            html +=     '<thead>';
                            html +=     '<tr>';
                            html +=         '<th>No.</th>';
                            html +=         '<th>Fullname</th>';
                            html +=         '<th>Student Code</th>';
                            html +=         '<th>Birthday</th>';
                            html +=         '<th>Regular Class</th>';
                            html +=         '<th>Has Certificate</th>';
                            html +=     '</tr>';
                            html +=     '</thead>';
                            html +=     '<tbody>';
                            $.each(data.data, function( index, value ) {
                                html +=     '<tr>';
                                html +=        '<td>'+ value.stt +'</td>';
                                html +=        '<td>'+ value.fullname +'</td>';
                                html +=        '<td>'+ value.student_code +'</td>';
                                
                                html +=        '<td>'+ value.birthday.date.substring(0,10) +'</td>';
                                html +=        '<td>'+ value.regular_class +'</td>';
                                html +=        '<td>'+ value.has_certificate +'</td>';
                                html +=    '</tr>';
                            });
                            html +=    '</tbody>';
                            html +='</table>';

                            $(".show-review").append(html);
            
                        }
                    }});
            });

            // Ajax Import Students
            $('#import-btn').click(function(e){
                e.preventDefault();
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                });
                console.log('import');
            });
        });

    </script>
@stop