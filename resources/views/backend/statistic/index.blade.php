@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_title', __('Thống kê - Báo cáo'))

@section('page_header')
    <h1 class="page-title">
        <i class="icon voyager-pie-chart"></i>
        Thống kê - Báo cáo
    </h1>
@stop

@section('content')
    <div class="page-content edit-add container-fluid">
        @include('voyager::alerts')
        <div class="row">
            <div class="col-md-3">
                <div class="panel panel-bordered">
                    <!-- form start -->
                    
                    <form id="form-statistic" action="#" method="post" enctype="multipart/form-data">
                        <!-- CSRF TOKEN -->
                        {{ csrf_field() }}

                        <div class="panel-body">
                            <div class="form-group">
                                <label for="statistic">Thống kê theo:</label>
                                <select class="form-control" name="statistic" id="statistic">
                                    <option value="year" selected>Năm học</option>
                                    <option value="center_class">Lớp trung tâm</option>
                                    <option value="regular_class">Lớp chính quy</option>
                                    <option value="student">Sinh viên</option>
                                </select>
                            </div>
                            <div class="form-group" id="year_input">
                                <label for="year_input">Năm học (YYYY-YYYY):</label>
                                <input class="form-control" type="text" name="year_input">
                            </div>
                            <div class="form-group" id="center_class_input">
                                <label for="center_class_input">Lớp trung tâm:</label>
                                <select id="" class="form-control select2" name="center_class_input">
                                    @foreach($center_classes as $center_class)
                                    <option value="{{ $center_class->id }}">{{ $center_class->class_code }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group" id="regular_class_input">
                                <label for="regular_class_input">Lớp chính quy:</label>
                                <select id="" class="form-control select2" name="regular_class_input">
                                    @foreach($regular_classes as $regular_class)
                                    <option value="{{ $regular_class->id }}">{{ $regular_class->class_code }} - {{ $regular_class->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group" id="student_input">
                                <label for="student_input">MSSV - Họ Tên:</label>
                                <select id="" class="form-control select2" name="student_input">
                                    @foreach($students as $student)
                                    <option value="{{ $student->id }}">{{ $student->mssv }} - {{ $student->fullname }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary" id="statistic-btn">{{ __('Thống kê') }}</button>
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
            $("#center_class_input").hide();
            $("#regular_class_input").hide();
            $("#student_input").hide();

            $('#statistic').on('change', function() {
                if(this.value == 'year'){
                    $("#year_input").show();
                    $("#center_class_input").hide();
                    $("#student_input").hide();
                    $("#regular_class_input").hide();
                }
                if(this.value == 'center_class'){
                    $("#center_class_input").show();
                    $("#year_input").hide();
                    $("#student_input").hide();
                    $("#regular_class_input").hide();
                }
                if(this.value == 'regular_class'){
                    $("#regular_class_input").show();
                    $("#center_class_input").hide();
                    $("#year_input").hide();
                    $("#student_input").hide();
                }
                if(this.value == 'student'){
                    $("#student_input").show();
                    $("#year_input").hide();
                    $("#center_class_input").hide();
                    $("#regular_class_input").hide();
                }
            });

            $('#statistic-btn').click(function(e){

                e.preventDefault();

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                    }
                });
                
                // Thống kê theo năm học
                if( $("#statistic").val() == 'year' ){
                    var year = $("input[name='year_input']").val();
                        $(".show-review").html("<h3>Loading...</h3>");
                    $.ajax({
                        method:'post',
                        url:"{{ route('backend.statistic.by_year') }}",
                        data:{ 'year': year },
                        success:function(data){
                            
                            if(data.result == 'true'){
                                $(".show-review").html(data.data)
                            }else{
                                $(".show-review").html("<h3>"+data.message+"</h3>")
                            }
                        }
                    });
                // Thống kê theo lớp trung tâm
                }else if( $("#statistic").val() == 'center_class' ){
                    var center_class_id = $("#center_class_input option:selected").val();
                    
                    $(".show-review").html("<h3>Loading...</h3>");
                    $.ajax({
                        method:'post',
                        url:"{{ route('backend.statistic.by_center_class') }}",
                        data:{ 'center_class_id': center_class_id },
                        success:function(data){
                            
                            if(data.result == 'true'){
                                $(".show-review").html(data.data)
                            }else{
                                $(".show-review").html("<h3>"+data.message+"</h3>")
                            }
                        }
                    });
                // Thống kê theo lớp chính quy
                }else if( $("#statistic").val() == 'regular_class' ){
                    var regular_class_id = $("#regular_class_input option:selected").val();
                    
                    $(".show-review").html("<h3>Loading...</h3>");
                    $.ajax({
                        method:'post',
                        url:"{{ route('backend.statistic.by_regular_class') }}",
                        data:{ 'regular_class_id': regular_class_id },
                        success:function(data){
                            if(data.result == 'true'){
                                $(".show-review").html(data.data)
                            }else{
                                $(".show-review").html("<h3>"+data.message+"</h3>")
                            }
                        }
                    });
                // Thống kê theo mã/tên sinh viên
                }else if( $("#statistic").val() == 'student' ){
                    var student_id = $("#student_input option:selected").val();

                    $(".show-review").html("<h3>Loading...</h3>");
                    $.ajax({
                        method:'post',
                        url:"{{ route('backend.statistic.by_student') }}",
                        data:{ 'student_id': student_id },
                        success:function(data){
                            
                            if(data.result == 'true'){
                                $(".show-review").html(data.data)
                            }else{
                                $(".show-review").html("<h3>"+data.message+"</h3>")
                            }
                        }
                    });
                }

            });
        });
        
    </script>
@stop