<?php

namespace App\Listeners;

use App\Events\TestDataOtomatis1;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Models\TestData1;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Carbon\Carbon;
class ProsesTestDataOtomatis1
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

    public function handle(TestDataOtomatis1 $event)
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
        foreach($data as $cek){
             $id = $cek->PATIENT_ID_OPT;
            //  $barcode = Testdata::where('PATIENT_ID_OPT',$id)->first();
            // dd($barcode);
    
            $cek = DB::table('group_test_results as t')
                ->join('group_tests as g', 'g.id', '=', 't.group_test_id')
                ->join('groups as gg', 'gg.id', '=', 'g.group_id')
                ->join('tests as te', 'te.id', '=', 't.test_id')
                ->join('patients as p', 'p.id', '=', 'gg.patient_id')
                ->select('gg.barcode','te.name', 'p.code', 'p.name as patient_name', 't.created_at', 't.test_id')
                ->where('p.code', (int)$cek->PATIENT_ID_OPT)
                ->where('t.status', 'pending')
                ->get();
                // dd($cek);
                    if ($cek->isEmpty()) {
                    // Skip processing if $cekResult is empty
                    continue;
                }

            // dd($cek);
            foreach ($cek as $order) {
                $value = TestData1::where('PATIENT_ID_OPT', (int)$id)
                    ->where('RESULT_TEST_ID', $order->name)->first();
                   DB::enableQueryLog();    
             $group =    DB::table('group_test_results as t')
                    ->join('group_tests as g', 'g.id', '=', 't.group_test_id')
                    ->join('groups as gg', 'gg.id', '=', 'g.group_id')
                    ->join('tests as te', 'te.id', '=', 't.test_id')
                    ->join('patients as p', 'p.id', '=', 'gg.patient_id')
                    ->select('te.name', 'p.code', 'p.name as patient_name', 't  .created_at')
                    ->where('p.code', $id)
                    // ->where('t.created_at', $currentDateTimeString)
                    ->where('t.test_id', $order->test_id)
                    ->update([
                        't.created_at' => $currentDateTimeString,
                        't.updated_at' => $currentDateTimeString,
                        't.result' => !empty($value) ? $value->RESULT_VALUE : null,
                        't.status' => 'menunggu validasi'
                    ]);
                   // Get the last executed query
                // $lastQuery = last(DB::getQueryLog());

                // // Display the SQL query
                // dd($lastQuery);
            
            }
        Session::flash('success_transfer', 'transfer otomatis successfully.');


        }
       



        return response()->json('transfer successfully');
        // Implementasi senddata
    }

}
