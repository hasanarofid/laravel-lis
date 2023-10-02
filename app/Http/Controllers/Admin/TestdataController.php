<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\TestData;
use Illuminate\Support\Facades\DB;
use DataTables;

class TestdataController extends Controller
{
    /**
     * assign roles
     */
    // public function __construct()
    // {
    //     $this->middleware('can:view_testdata',     ['only' => ['index', 'show']]);
    //     $this->middleware('can:create_testdata',   ['only' => ['create', 'store']]);
    //     $this->middleware('can:edit_testdata',     ['only' => ['edit', 'update']]);
    //     $this->middleware('can:delete_testdata',   ['only' => ['destroy', 'bulk_delete']]);
    //     $this->middleware('can:sign_testdata',   ['only' => ['sign']]);
    // }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $model = Testdata::select('PATIENT_ID_OPT', 'DEVICE_ID1', 'PATIENT_NAME', DB::raw('count(RESULT_TEST_ID) as RESULT_TEST_ID'))
                ->groupBy('PATIENT_ID_OPT', 'DEVICE_ID1', 'PATIENT_NAME');
            // ->get();






            return DataTables::eloquent($model)
                // ->addColumn('action', function ($row) {

                //     //  dd($row->ID);  
                //     $btn = '<a href="' . route('testdata.detail', array('id' => $row->PATIENT_ID_OPT)) . '" data-toggle="tooltip"  class="edit btn btn-primary btn-sm ">Detail</a>';
                //     // $btn = $btn . ' <a href="' . route('test_data.edit', $row->PATIENT_ID_OPT) . '" data-toggle="tooltip" data-toggle="modal" data-target="#confirmDeleteModal"    data-original-title="Delete" class="btn btn-warning btn-sm deletePost">Edit</a>';
                //     // $btn = $btn . ' <a href="' . route('test_data.hapus', $row->PATIENT_ID_OPT) . '" data-toggle="tooltip" data-toggle="modal" data-target="#confirmDeleteModal"    data-original-title="Delete" class="btn btn-danger btn-sm deletePost">Delete</a>';
                //     $btn = $btn . '<a href="#"  onclick="transferData(\'' . $row->PATIENT_ID_OPT . '\')"   class="btn btn-sm bg-info text-white" ><i class="fa fa-send-o" aria-hidden="true"></i>&nbsp;&nbsp;Transfer Order</a>';

                //     return $btn;
                // })
                // ->rawColumns(['action'])
                ->addColumn('action', function ($patient) {
                    return view('admin.testdata._action', compact('patient'));
                })
                ->toJson();
        }
        return view('admin.testdata.index');
    }


    //cekpasien
    public function cekpasien(Request $request)
    {
        $cekGroup =
            DB::table('group_test_results as t')
            ->join('group_tests as g', 'g.id', '=', 't.group_test_id')
            ->join('groups as gg', 'gg.id', '=', 'g.group_id')
            ->join('tests as te', 'te.id', '=', 't.test_id')
            ->join('patients as p', 'p.id', '=', 'gg.patient_id')
            ->select('te.name', 'p.code', 'p.name', 't.result')
            ->where('p.code', (int)$request->pasien_id)
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
                ->where('p.code', (int)$request->pasien_id)
                ->where('t.status', 'Pending')
                ->get();
            $data['tabel'] = $tableData;
        }
        // dd($data);
        return response()->json($data);
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
            ->where('p.code', (int)$request->pasien_id)
            ->where('t.status', 'Pending')

            ->groupBy('p.code', 'patient_name', 't.created_at')
            ->get();

        // dd($tableData);
        return view('admin.testdata.table-view', compact('tableData'));
    }


    // senddata
    public function senddata(Request $request)
    {
        $id = $request->pasien_id;
        $timestamp = now();
        foreach ($request->selectedData as $time) {
            $cek = DB::table('group_test_results as t')
                ->join('group_tests as g', 'g.id', '=', 't.group_test_id')
                ->join('groups as gg', 'gg.id', '=', 'g.group_id')
                ->join('tests as te', 'te.id', '=', 't.test_id')
                ->join('patients as p', 'p.id', '=', 'gg.patient_id')
                ->select('te.name', 'p.code', 'p.name as patient_name', 't.created_at', 't.test_id')
                ->where('p.code', (int)$request->pasien_id)
                ->where('t.created_at', $time)
                ->get();
            // dd($cek);
            foreach ($cek as $order) {
                $value = Testdata::where('PATIENT_ID_OPT', (int)$request->pasien_id)
                    ->where('RESULT_TEST_ID', $order->name)->first();
                DB::table('group_test_results as t')
                    ->join('group_tests as g', 'g.id', '=', 't.group_test_id')
                    ->join('groups as gg', 'gg.id', '=', 'g.group_id')
                    ->join('tests as te', 'te.id', '=', 't.test_id')
                    ->join('patients as p', 'p.id', '=', 'gg.patient_id')
                    ->select('te.name', 'p.code', 'p.name as patient_name', 't.created_at')
                    ->where('p.code', (int)$request->pasien_id)
                    ->where('t.created_at', $time)
                    ->where('t.test_id', $order->test_id)
                    ->update([
                        't.created_at' => $timestamp,
                        't.updated_at' => $timestamp,
                        't.result' => !empty($value) ? $value->RESULT_VALUE : null,
                        't.status' => 'menunggu validasi'
                    ]);
                // dd($data);
            }
        }



        return response()->json('transfer successfully');
    }
}
