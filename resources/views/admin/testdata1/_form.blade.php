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
                        <input type="hidden" name="id[]" value="{{ $item->ID  }}">
                              <tr>
                              <td>{{ $no++  }}</td>
                              <td>{{ $item->RESULT_TEST_ID }}</td>
                              <td><input name="result[]" value="{{ $item->RESULT_VALUE }}" type="text" class="form-control" >
                              </td>


                              </tr>
                        @endforeach
                     </tbody>
                    </table>