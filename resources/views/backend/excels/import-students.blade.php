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
            <div class="col-md-12">

                <div class="panel panel-bordered">
                    <!-- form start -->
                    <p>form import</p>
                    
                </div>
            </div>
        </div>
    </div>

@stop