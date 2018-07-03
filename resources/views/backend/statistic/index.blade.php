@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_title', __('Statistic'))

@section('page_header')
    <h1 class="page-title">
        <i class="icon voyager-pie-chart"></i>
        Statistic
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
                                <label for="statistic">Static By:</label>
                                <select class="form-control" name="statistic" id="statistic">
                                    <option value="year" selected>Year</option>
                                    <option value="center_class">Center Class</option>
                                </select>
                            </div>
                            <div class="form-group" id="year_input">
                                <label for="year_input">Year (YYYY-YYYY):</label>
                                <input class="form-control" type="text" name="year_input">
                            </div>
                            <div class="form-group" id="center_class_input">
                                <label for="center_class_input">Center Class:</label>
                                <select id="center_class_input" class="form-control select2" name="center_class_input">
                                    @foreach($center_classes as $center_class)
                                    <option value="{{ $center_class->id }}">{{ $center_class->class_code }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary" id="statistic-btn">{{ __('Submit') }}</button>
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

            $('#statistic').on('change', function() {
                if(this.value == 'year'){
                    $("#year_input").show();
                    $("#center_class_input").hide();
                }
                if(this.value == 'center_class'){
                    $("#year_input").hide();
                    $("#center_class_input").show();
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
                    console.log(center_class_id);
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
                }

            });
        });
        
    </script>
@stop