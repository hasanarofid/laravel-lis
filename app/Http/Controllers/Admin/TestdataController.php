<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\TestData;
class TestdataController extends Controller
{
   /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if($request->ajax())
        {
            $model=TestData::query();

            if($request['filter_status']!='')
            {
                $model->where('done',$request['filter_status']);
            }
            
            if($request['filter_barcode']!='')
            {
                $model->where('barcode',$request['filter_barcode']);
            }

            if($request['filter_created_by']!='')
            {
                $model->whereIn('created_by',$request['filter_created_by']);
            }

            if($request['filter_signed_by']!='')
            {
                $model->whereIn('signed_by',$request['filter_signed_by']);
            }

            if($request['filter_contract']!='')
            {
                $model->whereIn('contract_id',$request['filter_contract']);
            }

            if($request['filter_date']!='')
            {
                //format date
                $date=explode('-',$request['filter_date']);
                $from=date('Y-m-d',strtotime($date[0]));
                $to=date('Y-m-d 23:59:59',strtotime($date[1]));

                //select groups of date between
                ($date[0]==$date[1])?$model->whereDate('created_at',$from):$model->whereBetween('created_at',[$from,$to]);
            }
            
            return DataTables::eloquent($model)
            // ->editColumn('patient.gender',function($group){
            //     return __(ucwords($group['patient']['gender']));
            // })
            // ->editColumn('tests',function($group){
            //     return view('admin.medical_reports._tests',compact('group'));
            // })
            // ->addColumn('signed',function($group){
            //     return view('admin.medical_reports._signed',compact('group'));
            // })
            // ->editColumn('done',function($group){
            //     return view('admin.medical_reports._status',compact('group'));
            // })
            // ->addColumn('action',function($group){
            //     return view('admin.medical_reports._action',compact('group'));
            // })
            // ->addColumn('bulk_checkbox',function($item){
            //     return view('partials._bulk_checkbox',compact('item'));
            // })
            ->editColumn('created_at',function($group){
                return date('Y-m-d H:i',strtotime($group['created_at']));
            })
            ->toJson();
        }
        return view('admin.testdata.index');
    }
}
