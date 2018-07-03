@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_title', __('Statics'))

@section('page_header')
    <h1 class="page-title">
        <i class="icon voyager-pie-chart"></i>
        Statics
    </h1>
@stop

@section('content')
    <div class="page-content edit-add container-fluid">
        @include('voyager::alerts')
        <div class="row">
            <div class="col-md-3">
                <div class="panel panel-bordered">
                    <!-- form start -->
                    
                    <form id="form-statics" action="#" method="post" enctype="multipart/form-data">
                        <!-- CSRF TOKEN -->
                        {{ csrf_field() }}

                        <div class="panel-body">
                            <div class="form-group">
                                <label for="static_by">Static By:</label>
                                <select class="form-control" name="static_by" id="static_by">
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
                                <select class="form-control select2" name="center_class_input">
                                    @foreach($center_classes as $center_class)
                                    <option value="{{ $center_class->id }}">{{ $center_class->class_code }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary" id="import-btn">{{ __('Submit') }}</button>
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

            $('#static_by').on('change', function() {
                if(this.value == 'year'){
                    $("#year_input").show();
                    $("#center_class_input").hide();
                }
                if(this.value == 'center_class'){
                    $("#year_input").hide();
                    $("#center_class_input").show();
                }
            })
        });
        
    </script>
@stop