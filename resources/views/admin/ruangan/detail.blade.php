@extends('layouts.app')

@section('title')
{{__('Edit Ruangan')}}
@endsection

@section('breadcrumb')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">
            <i class="nav-icon fas fa-box"></i>
            {{__('Ruangans')}}
          </h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('admin.index')}}">{{__('Home')}}</a></li>
            <li class="breadcrumb-item"><a href="{{route('admin.testdata.index')}}">{{__('Ruangan')}}</a></li>
            <li class="breadcrumb-item active">{{__('Edit Ruangan')}}</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
@endsection

@section('content')
<div class="card card-primary">
    <div class="card-header">
      <h3 class="card-title">{{__('Edit Ruangan')}}</h3>
    </div>
    <!-- /.card-header -->
    <form method="POST" action="{{route('admin.ruangan.update',$model->id)}}" id="package_form">
     

            @csrf
            @method('post')
                        @include('admin.ruangan._form')
        <!-- /.card-body -->

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">{{__('Save')}}</button>
        </div>
    </form>
    <!-- /.card-body -->
  </div>

@endsection
