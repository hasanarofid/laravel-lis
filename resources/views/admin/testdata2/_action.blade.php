{{-- @can('edit_patient') --}}
    <a data-tooltip="Detail Test Data" class="btn btn-info btn-sm" href="{{route('admin.testdata2.detail',$patient['barcode'])}}">
        <i class="fa fa-info-circle" aria-hidden="true"></i>
    </a>

       <a data-tooltip="Edit Test Data" class="btn btn-primary btn-sm" href="{{route('admin.testdata2.edit',$patient['barcode'])}}">
        <i class="fa fa-edit" aria-hidden="true"></i>
    </a>

    
{{-- @endcan --}}

{{-- @can('delete_patient') --}}
    <form method="POST" action="{{route('admin.testdata2.destroy',$patient['barcode'])}}" class="d-inline">
        <input type="hidden" name="_method" value="post">
        <button data-tooltip="Hapus Test Data" type="submit" class="btn btn-danger btn-sm delete_testdata">
            <i class="fa fa-trash"></i>
        </button>
    </form>

    <a href="#" data-tooltip="Transfer Test Data"  onclick="transferData('{{  $patient['barcode'] }}')"   class="btn btn-sm bg-info text-white" ><i class="fa fa-paper-plane" aria-hidden="true"></i></a>
{{-- @endcan --}}