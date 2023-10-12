<?php

namespace App\Listeners;

use App\Events\TestDataOtomatis;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Models\TestData;
use Illuminate\Support\Facades\DB;

class ProsesTestDataOtomatis
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function handle(TestDataOtomatis $event)
    {
        $testdata = $event->testdata;
        // Proses data baru di sini
        $this->senddata($testdata);
    }

    // Fungsi senddata Anda
    public function senddata($data)
    {
        // dd($data);
                $timestamp = now();
        foreach($data as $cek){
             $id = $cek->PATIENT_ID_OPT;
             $time = Testdata::select('TIMESTAMP')->where('PATIENT_ID_OPT',$id)->first();


            $cek = DB::table('group_test_results as t')
                ->join('group_tests as g', 'g.id', '=', 't.group_test_id')
                ->join('groups as gg', 'gg.id', '=', 'g.group_id')
                ->join('tests as te', 'te.id', '=', 't.test_id')
                ->join('patients as p', 'p.id', '=', 'gg.patient_id')
                ->select('te.name', 'p.code', 'p.name as patient_name', 't.created_at', 't.test_id')
                ->where('p.code', (int)$cek->PATIENT_ID_OPT)
                ->where('t.created_at', $time)
                ->get();
                    if ($cek->isEmpty()) {
                    // Skip processing if $cekResult is empty
                    continue;
                }

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
        // Implementasi senddata
    }

}
