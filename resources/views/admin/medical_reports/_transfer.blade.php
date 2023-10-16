  @php
                   $grouptest = App\Models\GroupTest::where('group_id', $group['id'])->first();
            $status = App\Models\GroupTestResult::where('group_test_id', $grouptest->id)->first();
       @endphp
@if($status->status == 'menunggu validasi')
    <div class="text-center"><i class="fa fa-check-double text-success"></i></div>
@else
    <div class="text-center"><i class="fa fa-times-circle text-danger"></i></div>
@endif