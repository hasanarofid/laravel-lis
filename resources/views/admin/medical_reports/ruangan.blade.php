 @php
                   $grouptest = App\Models\GroupTest::where('group_id', $group['id'])->first();
            $ruangan = App\Models\RuanganM::find($grouptest->ruangan_id);
            // dd($ruangan);
       @endphp

       {{  !empty($ruangan) ? $ruangan->nama_ruangan : '-'  }}