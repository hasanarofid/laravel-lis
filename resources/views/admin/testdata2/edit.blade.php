@extends('layouts.app')

@section('title')
{{__('Edit Test Data')}}
@endsection

@section('breadcrumb')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">
            <i class="nav-icon fas fa-box"></i>
            {{__('Test Datas')}}
          </h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('admin.index')}}">{{__('Home')}}</a></li>
            <li class="breadcrumb-item"><a href="{{route('admin.testdata.index')}}">{{__('Test Data')}}</a></li>
            <li class="breadcrumb-item active">{{__('Edit Test Data')}}</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
@endsection

@section('content')
<div class="card card-primary">
    <div class="card-header">
      <h3 class="card-title">{{__('Edit Test Data')}}</h3>
    </div>
    <!-- /.card-header -->
    <form method="POST" action="{{route('admin.testdata.update',$model->ID)}}" id="package_form">
        <!-- /.card-header -->
        <div class="card-body">
        <div class="row">
         <div class="col-md-6">
               <label for="detailId" class="form-label"> <h6> ID: {{ $model->PATIENT_ID_OPT  }} </h6> </label>
         
         </div>
                  <div class="col-md-6">
                        <label for="detailName" class="form-label"><h6> Name: {{ $model->PATIENT_NAME  }} </h6></label>
         
         </div>
        </div>

            @csrf
            @method('post')
                        @include('admin.testdata._form')
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">{{__('Save')}}</button>
        </div>
    </form>
    <!-- /.card-body -->
  </div>

@endsection
@section('scripts')
  <script src="{{url('js/admin/packages.js')}}"></script>
@endsection