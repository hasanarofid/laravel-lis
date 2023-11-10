 <table class="table  table-hover table-border">
                    <thead> 
                    <tr>
                        <th>No</th>
                        <th>Result Test</th>

                        <th>Result Value</th>
                    </tr>
                     </thead>
                     <tbody>
                     @php
                         $no = 1;
                     @endphp
                        @foreach ($data as $item)
                              <tr>
                              <td>{{ $no++  }}</td>
                              <td>{{ $item->RESULT_TEST_ID }}</td>
                              <td>{{ $item->RESULT_VALUE }}</td>
                              </td>


                              </tr>
                        @endforeach
                     </tbody>
                    </table>