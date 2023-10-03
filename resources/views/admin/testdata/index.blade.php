@extends('layouts.app')

@section('title')
{{ __('Test data') }}
@endsection

@section('breadcrumb')
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">
                    <i class="fa fa-flag"></i>
                    {{__('Test data')}}
                </h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="{{route('admin.index')}}">{{__('Home')}}</a></li>
                    <li class="breadcrumb-item active">{{ __('Test data') }}</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
@endsection

@section('content')
<div class="card card-primary card-outline">
    <div class="card-header">
        <h3 class="card-title">{{ __('Test data table') }}</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
      
        <div class="row">
            <div class="col-lg-12 table-responsive">
                <table id="test_data_table" class="table table-striped table-bordered"  width="100%">
                    <thead>
                        <tr>
                       
                            <th width="10px">DEVICE ID</th>
                            <th width="10px">PATIENT ID</th>
                            <th width="10px">PATIENT NAME</th>
                            <th width="100px">JUMLAH RESULT TEST ID</th>
                            <th width="50px">{{ __('Action') }}</th>
                        </tr>
                    </thead>
                    <tbody>
    
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- /.card-body -->
</div>

@endsection
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11">
   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@section('scripts')
    <script>
        var can_delete=@can('delete_medical_report')true @else false @endcan ;
        var can_view=@can('view_medical_report')true @else false @endcan ;
    </script>
    <script src="{{url('js/admin/test_data.js')}}"></script>
@endsection