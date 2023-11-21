@extends('layouts.app')

@section('title')
  {{__('Dashboard')}}
@endsection

@section('css')
    <link rel="stylesheet" href="{{url('plugins/swtich-netliva/css/netliva_switch.css')}}">
@endsection
@section('breadcrumb')
<style>
  .ui-datepicker-calendar {
      display: none!important;
  }
  .ui-datepicker-current{
    display: none!important;
  }
  .bg-test{
    background-color:  #00539C;
    color: white;
  }

  .bg-cul{
    background-color:  #2F3C7E;
    color: white;
  }

  .bg-3{
    background-color:  #4831D4;
    color: white;
  }
  
  .bg-4{
    background-color:  #00008B;
    color: white;
  }

  .bg-5{
    background-color:  #234E70;
    color: white;
  }

  .bg-6{
    background-color:  #1E2761;
    color: white;
  }

  .bg-7{
    background-color:  #088F8F;
    color: white;
  }

  .bg-8{
    background-color:  #097969;
    color: white;
  }


  .bg-9{
    background-color:  #5F9EA0;
    color: white;
  }

  .bg-10{
    background-color:  #50C878;
    color: white;
  }

  .bg-11{
    background-color:  #4F7942;
    color: white;
  }

  .bg-12{
    background-color:  #355E3B;
    color: white;
  }


  </style>

<style>
  /* Customize the chart container */
  #income_chart_statistics {
    margin: 20px;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }

  /* Adjust the legend style */
  .chart-legend li span {
    display: inline-block;
    width: 12px;
    height: 12px;
    margin-right: 8px;
    border-radius: 50%;
  }

  /* Customize the legend label color */
  .chart-legend li {
    color: #333;
  }
</style>

<style>
  /* Custom style for the doughnut chart container */
  #best_packages_chart_container {
    margin: 20px;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }

  #best_tests_chart_container {
    margin: 20px;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 8px;
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }

  /* Customize the legend style */
  .chart-legend li span {
    display: inline-block;
    width: 12px;
    height: 12px;
    margin-right: 8px;
    border-radius: 50%;
  }

  /* Customize the legend label color */
  .chart-legend li {
    color: #333;
  }
</style>


<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">
            <i class="nav-icon fas fa-th"></i>
            {{__('Dashboard')}}
          </h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item active">{{__('Dashboard')}}</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
@endsection
@section('content')
  @can('admin')
    <div class="row">
      @canAny(['view_general_statistics','view_tests_statistics'])
      <div class="col-lg-12">
        <!-- Admin Reports -->
        <div class="card card-default card-outline">
          <div class="card-header">
            <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text">
                        <label class="m-0" for="filter_statistics">
                          <i class="far fa-calendar-alt mr-2"></i>
                          {{__('Filter')}}
                        </label>
                    </span>
                </div>
                <input type="text" name="datepickerrange" class="form-control float-right datepickerrange" id="filter_statistics">
            </div>
          </div>
          <div class="card-body">
            <div class="row">
              @can('view_general_statistics')
                <!-- General statistics -->
                <!-- Card 1 -->
                

                <div class="col-lg-4 col-sm-12 col-xs-12 mt-6 mb-6 custom-primary-box">
                  <div class="card custom-primary-box bg-3" style="border-radius:1.75rem !important">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-3 col-sm-4 col-xs-4">
                          <span class="text-center icon">
                            <i class="fa fa-user-injured" style="color: white"></i>
                          </span>
                        </div>
                        <div class="col-7 col-sm-8 col-xs-8">
                          <h4 class="m-0" id="tests_count"> </h4>
                        <span >  {{__('Tests')}}</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  

            
                </div>
             
                <div class="col-lg-4 col-sm-12 col-xs-12 mt-6 mb-6 custom-primary-box">
                  <div class="card custom-primary-box bg-4" style="border-radius:1.75rem !important">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-3 col-sm-4 col-xs-4">
                          <span class="text-center icon">
                            <i class="fa fa-user-injured" style="color: white"></i>
                          </span>
                        </div>
                        <div class="col-7 col-sm-8 col-xs-8">
                          <h4 class="m-0" id="patients_count">
                          </h4>
                          <span>
                            {{__('Patients')}}
                          </span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div> 

                <div class="col-lg-4 col-sm-12 col-xs-12 mt-12 mb-12 custom-info-box " >

                  <!-- Card 3 -->
                  <div class="card custom-primary-box bg-7 flex-grow-1" style="border-radius:1.75rem !important;height:190px">
             

                    <div class="card-body">
                      <div class="row">
                        <div class="col-3 col-sm-4 col-xs-4">
                          <span class="text-center icon" style="margin-top:50px">
                            <i class="fa fa-list" style="color: white"></i>
                          </span>
                        </div>
                        <div class="col-7 col-sm-8 col-xs-8" style="margin-top:50px">
                          <h4 class="m-0" id="group_tests_count">
                          </h4>
                          <span>
                            {{__('Tests')}}
                          </span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="col-lg-4 col-sm-12 col-xs-12 mt-6 mb-6 custom-danger-box">
                  <div class="card custom-primary-box bg-8" style="border-radius:1.75rem !important;margin-top:-100px" >
                    <div class="card-body">
                      <div class="row">
                        <div class="col-3 col-sm-4 col-xs-4">
                          <span class="text-center icon ">
                            <i class="fa fa-pause-circle" style="color: white"></i>
                          </span>
                        </div>
                        <div class="col-7 col-sm-8 col-xs-8">
                          <h4 class="m-0" id="pending_tests_count">
                          </h4>
                          <span>
                            {{__('Pending tests')}}
                          </span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="col-lg-4 col-sm-12 col-xs-12 mt-6 mb-6 custom-success-box">
                  <div class="card custom-primary-box bg-9" style="border-radius:1.75rem !important;margin-top:-100px"> 
                    <div class="card-body">
                      <div class="row">
                        <div class="col-3 col-sm-4 col-xs-4">
                          <span class="text-center icon">
                            <i class="fa fa-check-double" style="color: white"></i>
                          </span>
                        </div>
                        <div class="col-7 col-sm-8 col-xs-8">
                          <h4 class="m-0" id="done_tests_count">
                          </h4>
                          <span>
                            {{__('Completed tests')}}
                          </span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

           
                <!-- ./col -->
                <!-- \General statistics -->
              @endcan
             

            </div>
          </div>
        </div>
        <!-- /.row -->
        <!-- /Admin Reports -->
      </div>
      @endcan

      @can('view_income_statistics')
      <!-- Income chart -->
      <div class="col-lg-12">
    

        {{-- lama --}}

        <div class="card card-primary">
          <div class="card-header">
            <h5 class="card-title">
              {{__('Income statistics')}}
            </h5>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div>
          <div class="card-header">
            <div class="row">
              <div class="col-lg-3">
                <input type="text" class="form-control datepicker_month" id="filter_income" value="{{get_system_date('','m-Y')}}">
              </div>
              <div class="col-lg-3">
                <select name="" id="filter_income_branch" class="form-control">
                  <option value="" selected>{{__('All branches')}}</option>
                  @foreach($all_branches as $branch)
                    <option value="{{$branch['id']}}">{{$branch['name']}}</option>
                  @endforeach
                </select>
              </div>
            </div>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-lg-12" id="income_chart">
              </div>
            </div>
          </div>
        </div>
      </div>

      
     <!-- \Income chart -->
     @endcan
    </div>


    @canAny(['view_best_income_packages','view_best_income_tests'])
    <!-- Best income chart -->
    <div class="row">

      @can('view_best_income_packages')
      <!-- Best income packages -->
      <div class="col-lg-6">
        <div class="card card-primary">
          <div class="card-header">
              <h5 class="card-title">
                {{__('Best income packages')}}
              </h5>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-minus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="remove">
                  <i class="fas fa-times"></i>
                </button>
              </div>
          </div>
          <div class="card-header">
            <div class="row">
              <div class="col-lg-7">
                 <input type="text" class="form-control datepickerrange" id="filter_best_package_date">
               </div>
               <div class="col-lg-5">
                   <select id="filter_best_package_branch" class="form-control">
                     <option value="" selected>{{__('All branches')}}</option>
                     @foreach($all_branches as $branch)
                       <option value="{{$branch['id']}}">{{$branch['name']}}</option>
                     @endforeach
                   </select>
               </div>
            </div>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-lg-12" id="best_packages">
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- \Best income packages -->
      @endcan
      
      @can('view_best_income_tests')
      <!-- Best income tests -->
      <div class="col-lg-6">
        <div class="card card-primary">
          <div class="card-header">
              <h5 class="card-title">
                {{__('Best income tests')}}
              </h5>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-minus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="remove">
                  <i class="fas fa-times"></i>
                </button>
              </div>
          </div>
          <div class="card-header">
            <div class="row">
              <div class="col-lg-7">
                  <input type="text" class="form-control datepickerrange" id="filter_best_test_date">
              </div>
              <div class="col-lg-5">
                  <select id="filter_best_test_branch" class="form-control">
                    <option value="" selected>{{__('All branches')}}</option>
                    @foreach($all_branches as $branch)
                      <option value="{{$branch['id']}}">{{$branch['name']}}</option>
                    @endforeach
                  </select>
              </div>
            </div>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-lg-12" id="best_tests">
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Best income tests -->
      @endcan


    </div>
    <!-- \Best income chart -->
    @endcan


    

    <div class="row">
      @can('view_online_admins')
      <!-- Online Users -->
        <div class="col-lg-6">
          <div class="card card-success collapsed-card">
            <div class="card-header">
              <h3 class="card-title"><i class="fas fa-wifi text-success"></i> {{__('Online admins')}} ( <span class="online_admins_count">0</span> )</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-plus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="remove">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body p-0">
              <ul class="products-list product-list-in-card pl-2 pr-2 online_admins_list">
              </ul>
            </div>
            <!-- /.card-body -->
          </div>
        </div>
      <!-- \Online Users -->
      @endcan
      @can('view_online_patients')
      <!-- Online patients -->
        <div class="col-lg-6">
          <div class="card card-success collapsed-card">
            <div class="card-header">
              <h3 class="card-title"><i class="fas fa-wifi text-success"></i> {{__('Online patients')}} ( <span class="online_patients_count">0</span> )</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-plus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="remove">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body p-0">
              <ul class="products-list product-list-in-card pl-2 pr-2 online_patients_list">
              </ul>
            </div>
            <!-- /.card-body -->
          </div>
        </div>
      <!-- \Online Users -->
      @endcan

      @can('view_today_visits')
      <!-- Today scheduled visits -->
      <div class="col-lg-12 table-responsive">
        <div class="card card-danger collapsed-card">
          <div class="card-header">
            <h5 class="card-title">
              <i class="fas fa-bell text-danger"></i> {{__('Today scheduled home visits')}}  ( {{count($today_visits)}} )
            </h5>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-plus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i>
              </button>
            </div>
          </div>
          <div class="card-body table-responsive">
            @if(count($today_visits))
            <div class="row">
              <div class="col-lg-12">
                <table class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>{{__('Branch')}}</th>
                      <th>{{__('Patient Name')}}</th>
                      <th>{{__('Phone')}}</th>
                      <th>{{__('Address')}}</th>
                      <th width="100px" class="text-center">{{__('DOB')}}</th>
                      <th width="100px" class="text-center">{{__('Visit date')}}</th>
                      <th width="100px" class="text-center">{{__('Status')}}</th>
                      <th width="10px">{{__('Viewed')}}</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach($today_visits as $visit)
                    <tr>
                      <td>
                        @if(isset($visit['branch']))
                          {{$visit['branch']['name']}}
                        @endif
                      </td>
                      <td>
                        @if(isset($visit['patient']))
                          {{$visit['patient']['name']}}
                        @endif
                      </td>
                      <td>
                        @if(isset($visit['patient']))
                          {{$visit['patient']['phone']}}
                        @endif
                      </td>
                      <td>
                        @if(isset($visit['patient']))
                          {{$visit['patient']['address']}}
                        @endif
                      </td>
                      <td>
                        @if(isset($visit['patient']))
                          {{$visit['patient']['dob']}}
                        @endif
                      </td>
                      <td>
                        @if(isset($visit['patient']))
                          {{$visit['visit_date']}}
                        @endif
                      </td>
                      <td>
                        @if($visit['status'])
                          <input type="checkbox" id="change_status_{{$visit['id']}}" visit-id="{{$visit['id']}}" checked netliva-switch data-active-text="{{__('Completed')}}" data-passive-text=" {{__('Pending visit')}}"/>
                        @else 
                          <input type="checkbox" id="change_status_{{$visit['id']}}" visit-id="{{$visit['id']}}" netliva-switch data-active-text="{{__('Completed')}}" data-passive-text=" {{__('Pending visit')}}"/>
                        @endif
                      </td>
                      <td>
                        @can('view_visit')
                          <a href="{{route('admin.visits.show',$visit['id'])}}" class="btn btn-primary btn-sm">
                            <i class="fa fa-eye"></i>
                          </a>
                        @endcan
                      </td>
                    </tr>
                    @endforeach
                  </tbody>
                
                </table>
              </div>
            </div>
            @else 
              <p class="text-danger text-center">{{__('No data available')}}</p>
            @endif
          </div>
        </div>
        
      </div>
      <!-- /Today scheduled visits -->
      @endcan
    </div>

  </div>
  @endcan

@endsection

@section('scripts')
<script>
  
</script>
  <!-- Switch -->

  <script src="{{url('dompet/vendor/apexchart/apexchart.js') }}"></script>
	<script src="{{url('dompet/nouislider/nouislider.min.js') }}"></script>
	<script src="{{url('dompet/wnumb/wNumb.js') }}"></script>
	
	<!-- Dashboard 1 -->
	<script src="{{url('dompet/js/dashboard/dashboard-1.js') }}"></script>
  <script src="{{url('plugins/swtich-netliva/js/netliva_switch.js')}}"></script>
  <script src="{{url('js/admin/dashboard.js')}}"></script>
@endsection