

        <a data-tooltip="Detail Test Data" class="btn btn-info btn-sm" href="{{route('admin.ruangan.detail',$ruangan['id'])}}">
        <i class="fa fa-info-circle" aria-hidden="true"></i>
    </a>


        <a class="btn btn-primary btn-sm" href="{{route('admin.ruangan.edit',$ruangan['id'])}}">
        <i class="fa fa-edit" aria-hidden="true"></i>
    </a>

    <form method="POST" action="{{route('admin.ruangan.destroy',$ruangan['id'])}}" class="d-inline">
        <input type="hidden" name="_method" value="delete">
        <button type="submit" class="btn btn-danger btn-sm delete_ruangan">
            <i class="fa fa-trash"></i>
        </button>
    </form>
