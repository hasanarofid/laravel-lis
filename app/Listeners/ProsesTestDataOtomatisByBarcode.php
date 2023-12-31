<?php

namespace App\Listeners;

use App\Events\TestDataOtomatisbyBarcode;
use App\Models\GroupTestResult;
use App\Models\Test;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Models\Testdata2;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Carbon\Carbon;
class ProsesTestDataOtomatisByBarcode
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

    public function handle(TestDataOtomatisbyBarcode $event)
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
                $currentDateTime = Carbon::now();

// To format the date and time as a string
$currentDateTimeString = $currentDateTime->toDateTimeString();
// dd($currentDateTimeString);
// dd($data);

        foreach($data as $cek){
             $id = $cek->barcode;
            //  $id = '4150135';
    
            $cek = DB::table('group_test_results as t')
                ->join('group_tests as g', 'g.id', '=', 't.group_test_id')
                ->join('groups as gg', 'gg.id', '=', 'g.group_id')
                ->join('tests as te', 'te.id', '=', 't.test_id')
                ->join('patients as p', 'p.id', '=', 'gg.patient_id')
                ->select('t.id','te.id as id_test','gg.barcode','te.name', 'p.code', 'p.name as patient_name', 't.created_at', 't.test_id')
                ->where('gg.barcode', $id)
                // ->where('t.status', 'pending')
                ->get();
                // dd($cek);
                //     if ($cek->isEmpty()) {
                //     // Skip processing if $cekResult is empty
                //     continue;
                // }

            // dd($cek);
            foreach ($cek as $order) {

                $value = Testdata2::where('barcode', $id)->where('RESULT_TEST_ID',$order->name)->first();
                // dd($value);
                if(!empty($value)){
                    $cekGrouptest = GroupTestResult::find($order->id);
                    $cekGrouptest->result = !empty($value->RESULT_VALUE) ? $value->RESULT_VALUE : $cekGrouptest->result;
                    $cekGrouptest->updated_at = $currentDateTimeString;
                    $cekGrouptest->status = 'menunggu validasi';
                    $cekGrouptest->save();
        
                }
           
            // $cekTest = Test::find($order->id_test);
            // $cekTest->unit =  !empty($value->RESULT_UNIT) ? $value->RESULT_UNIT : $cekTest->unit;
            // $cekTest->save(); 

            //     $value = Testdata2::where('barcode', $id)
            //         ->where('RESULT_TEST_ID', $order->name)->first();
            //         // dd($value);
            //        DB::enableQueryLog();    
            //  $group =    DB::table('group_test_results as t')
            //         ->join('group_tests as g', 'g.id', '=', 't.group_test_id')
            //         ->join('groups as gg', 'gg.id', '=', 'g.group_id')
            //         ->join('tests as te', 'te.id', '=', 't.test_id')
            //         ->join('patients as p', 'p.id', '=', 'gg.patient_id')
            //         ->select('te.name', 'p.code', 'p.name as patient_name', 't  .created_at')
            //         ->where('gg.barcode', $id)
            //         // ->where('t.created_at', $currentDateTimeString)
            //         ->where('t.test_id', $order->test_id)
            //         ->update([
            //             't.created_at' => $currentDateTimeString,
            //             't.updated_at' => $currentDateTimeString,
            //             't.result' => !empty($value) ? $value->RESULT_VALUE : null,
            //             't.status' => 'menunggu validasi'
            //         ]);
                   // Get the last executed query
                // $lastQuery = last(DB::getQueryLog());

                // // Display the SQL query
                // dd($lastQuery);
                Session::flash('success_transfer2', 'transfer otomatis barcode successfully.');
            }
        // Session::flash('success_transfer', 'transfer otomatis successfully.');


        }
       



        return response()->json('transfer successfully');
        // Implementasi senddata
    }

}
