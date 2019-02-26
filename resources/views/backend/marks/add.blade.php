@extends('voyager::master')

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_title', __('Quản lý lớp '.$center_class->class_code))

@section('page_header')
    <h1 class="page-title">
        <i class="icon voyager-list-add"></i>
        Quản lý lớp <a href="{{ route('voyager.center-classes.edit', ['center_class' => $center_class->id]) }}">{{ $center_class->class_code }}</a>
    </h1>
@stop

@section('content')
    <div class="page-content edit-add container-fluid">
        @include('voyager::alerts')
        <div class="row">
            <div class="col-md-12">

                <div class="panel panel-bordered">
                    <!-- form start -->
                    <form action="{{ route('backend.mark.postAdd') }}" method="post">
                        <!-- CSRF TOKEN -->
                        {{ csrf_field() }}

                        <input type="hidden" name="center_class_id" value="{{ $center_class->id }}">
                        <div class="panel-heading" style="margin-top: 20px;">
                            <div class="form-group col-md-12">
                                <div class="col-md-1">
                                    <label for="mssv" style="font-weight: 700;">STT</label>
                                </div>
                                <div class="col-md-2">
                                    <label for="mssv" style="font-weight: 700;">MSSV</label>
                                </div>
                                <div class="col-md-3">
                                    <label for="fullname" style="font-weight: 700;">Họ Tên</label>
                                </div>
                                <div class="col-md-2">
                                    <label for="test-score" style="font-weight: 700;">Điểm bộ phận</label>
                                </div>
                                <div class="col-md-2">
                                    <label for="test-score" style="font-weight: 700;">Điểm thi</label>
                                </div>
                                <div class="col-md-2">
                                    <label for="test-score" style="font-weight: 700;">Điểm tổng kết</label>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body" style="padding-left:0; padding-right:0;">
                            
                            @if(count($center_class->students) > 0 )
                                @php $count = 1; @endphp
                                @foreach($center_class->students as $student)
                                <div class="form-group col-md-12">
                                    <div class="col-md-1">
                                        <label for="mssv">{{ $count }}</label>
                                    </div>
                                    <div class="col-md-2">
                                        <label for="mssv">{{ $student->mssv }}</label>
                                    </div>
                                    <div class="col-md-3">
                                        <label for="fullname">{{ $student->fullname }}</label>
                                    </div>
                                    <div class="col-md-2">
                                        <input type="number" class="form-control" name="process_score[{{ $student->id }}]" value="{{ ($student->pivot->process_score) ? $student->pivot->process_score : 0 }}" step="0.25" max="10" min="0">
                                    </div>
                                    <div class="col-md-2">
                                        <input type="number" class="form-control" name="test_score[{{ $student->id }}]" value="{{ ($student->pivot->test_score) ? $student->pivot->test_score : 0 }}" step="0.25" max="10" min="0">
                                    </div>
                                    <div class="col-md-2">
                                        {{ ($student->pivot->final_score) ? $student->pivot->final_score : 0 }}
                                    </div>
                                </div>
                                    @php $count++; @endphp
                                @endforeach
                            @else
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label for="mssv">There are no students in this class!</label>
                                    </div>
                                </div>
                            @endif
                            
                            
                        </div>

                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary save">{{ __('Save') }}</button>
                        </div>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>

@stop