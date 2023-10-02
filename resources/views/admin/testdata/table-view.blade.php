   <table class="table align-items-center mb-0 table-primary table-hover table-bordered" id="tableContainer">
                <thead>
                  <tr>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Pilih</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">PATIENT ID</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">PATIENT NAME</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Total</th>
                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Timestamp</th>
                
                  </tr>
                </thead>
                <tbody>
                @php
                    $no = 1;
                @endphp
                @foreach ($tableData as $row)
          
              
        <tr>
            <td>{{ $no++ }}</td>

                        <td style="text-align: center;">
                         <input type="checkbox" value="{{ $row->created_at }}" name="pilih[]" >
                          </td>

            <td>{{ $row->code }}</td>
            <td>{{ $row->patient_name }}</td>
            <td>{{ $row->result_count }}</td>
            <td>{{ $row->created_at }}</td>


            <!-- Add more table cells as needed -->
        </tr>
        @endforeach
                </tbody>
                
              </table>