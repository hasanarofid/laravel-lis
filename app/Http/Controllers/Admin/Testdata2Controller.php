<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\TestData2;
use Illuminate\Support\Facades\DB;
use DataTables;

class Testdata2Controller extends Controller
{
    /**
     * assign roles
     */
    // public function __construct()
    // {
    //     $this->middleware('can:view_testdata',     ['only' => ['index', 'show']]);
    //     $this->middleware('can:create_testdata',   ['only' => ['create', 'store']]);
    //     $this->middleware('can:edit_testdata',     ['only' => ['edit', 'update']]);
    //     $this->middleware('can:sign_testdata',   ['only' => ['sign']]);
    // }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $device = $request->device;

    if ($request->ajax()) {
          $model = TestData2::select('barcode', DB::raw('count(RESULT_TEST_ID) as RESULT_TEST_ID'))
            ->groupBy('barcode');

  

        return DataTables::eloquent($model)
            ->addColumn('action', function ($patient) {
                return view('admin.testdata2._action', compact('patient'));
            })
            ->toJson();
    }
    //     
        return view('admin.testdata2.index',compact('device'));
    }


    //cekpasien
    public function cekpasien(Request $request)
    {
        // dd($request);
        $cekGroup =
            DB::table('group_test_results as t')
            ->join('group_tests as g', 'g.id', '=', 't.group_test_id')
            ->join('groups as gg', 'gg.id', '=', 'g.group_id')
            ->join('tests as te', 'te.id', '=', 't.test_id')
            ->join('patients as p', 'p.id', '=', 'gg.patient_id')
            ->select('te.name', 'p.code', 'p.name', 't.result')
            ->where('gg.barcode', $request->barcode)
            ->where('t.status', 'Pending')
            ->get();
        // dd($cekGroup);
        // $order = OrderData::where('PATIENT_ID_OPT', $request->pasien_id)->first();
        $data = [];
        if ($cekGroup->isEmpty()) {
            $data['status'] = 'tidak ada';
            $data['pesan'] = 'Data Order Tidak ada, tidak bisa dilakukan transfer';
            $data['tabel'] = 'kosong';

            // dd($tableData);
            // Return the HTML for the table view
            // return view('testdata.table-view', compact('tableData'));
        } else {

            $data['status'] = 'ada';
            $data['pesan'] = 'Apakah anda akan melakukan transfer data ?';

            $tableData =
                DB::table('group_test_results as t')
                ->join('group_tests as g', 'g.id', '=', 't.group_test_id')
                ->join('groups as gg', 'gg.id', '=', 'g.group_id')
                ->join('tests as te', 'te.id', '=', 't.test_id')
                ->join('patients as p', 'p.id', '=', 'gg.patient_id')
                ->select('te.name', 'p.code', 'p.name', 't.result')
                ->where('gg.barcode', $request->barcode)
                ->where('t.status', 'Pending')
                ->get();
            $data['tabel'] = $tableData;
        }
        // dd($data);
        return response()->json($data);
    }

    public function edit($id){
        $model = TestData2::where('PATIENT_ID_OPT', $id)->first();
        $data = TestData2::where('PATIENT_ID_OPT', $id)->get();
     
        return view('admin.testdata2.edit', compact('model','data'));
    }

    public function detail($id){
        $model = TestData2::where('PATIENT_ID_OPT', $id)->first();
        $data = TestData2::where('PATIENT_ID_OPT', $id)->get();
     
        return view('admin.testdata2.detail', compact('model','data'));
    }

    //loadtabledata
    public function loadtabledata(Request $request)
    {

        $tableData = DB::table('group_test_results as t')
            ->join('group_tests as g', 'g.id', '=', 't.group_test_id')
            ->join('groups as gg', 'gg.id', '=', 'g.group_id')
            ->join('tests as te', 'te.id', '=', 't.test_id')
            ->join('patients as p', 'p.id', '=', 'gg.patient_id')
            ->select('p.code', 'p.name as patient_name', 't.created_at', DB::raw('COUNT(t.result) as result_count'))
            ->where('gg.barcode', $request->barcode)
            ->where('t.status', 'Pending')

            ->groupBy('p.code', 'patient_name', 't.created_at')
            ->get();

        // dd($tableData);
        return view('admin.testdata2.table-view', compact('tableData'));
    }

    public function update($id,Request $request){
       
          $data = TestData2::where('PATIENT_ID_OPT', $id)->get();
$timestamp = now();
    foreach($request['id'] as $key=>$value){
        TestData2::where('ID', $value)
                    ->update([
                        'TIMESTAMP' => $timestamp,
                        'DATE_TIME_STAMP' => $timestamp,
                        'RESULT_VALUE' => !empty($request['result'][$key]) ? $request['result'][$key] : null,
                        'RESULT_DATE' => $timestamp,
                    ]);
    }

        session()->flash('success',__('Test update successfully'));

        return redirect()->route('admin.testdata2.index');

    }

    //bulk_delete
    public function bulk_delete($id){
        // dd($id);
                $model = TestData2::where('PATIENT_ID_OPT', $id)->delete();
                session()->flash('success',__('Test delete successfully'));

        return redirect()->route('admin.testdata2.index');


    }


    // senddata
    public function senddata(Request $request)
    {
        $timestamp = now();
        foreach ($request->selectedData as $time) {
            $cek = DB::table('group_test_results as t')
                ->join('group_tests as g', 'g.id', '=', 't.group_test_id')
                ->join('groups as gg', 'gg.id', '=', 'g.group_id')
                ->join('tests as te', 'te.id', '=', 't.test_id')
                ->join('patients as p', 'p.id', '=', 'gg.patient_id')
                ->select('te.name', 'p.code', 'p.name as patient_name', 't.created_at', 't.test_id')
                ->where('gg.barcode', $request->barcode)
                ->where('t.created_at', $time)
                ->get();
            // dd($cek);
            foreach ($cek as $order) {
                $value = TestData2::where('barcode', $request->barcode)
                    ->where('RESULT_TEST_ID', $order->name)->first();
                    // dd($value);
            $save =     DB::table('group_test_results as t')
                    ->join('group_tests as g', 'g.id', '=', 't.group_test_id')
                    ->join('groups as gg', 'gg.id', '=', 'g.group_id')
                    ->join('tests as te', 'te.id', '=', 't.test_id')
                    ->join('patients as p', 'p.id', '=', 'gg.patient_id')
                    ->select('te.name', 'p.code', 'p.name as patient_name', 't.created_at')
                    ->where('gg.barcode', $request->barcode)
                    ->where('t.created_at', $time)
                    ->where('t.test_id', $order->test_id)
                    ->update([
                        't.created_at' => $timestamp,
                        't.updated_at' => $timestamp,
                        't.result' => !empty($value) ? $value->RESULT_VALUE : null,
                        't.status' => 'menunggu validasi'
                    ]);
                // dd($save);
            }
        }



        return response()->json('transfer successfully');
    }
}
