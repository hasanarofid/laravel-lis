<div class="row">

    
    <div class="col-lg-12">

        <div class="row">
         <div class="col-lg-4">
                <div class="form-group">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">
                            <i class="fa fa-code"></i>
                        </span>
                        </div>
                        <input type="text" class="form-control" placeholder="{{__('Kode Ruangan')}}" name="kode_ruangan" id="kode_ruangan" @if(isset($model)) value="{{$model->kode_ruangan}}" @elseif(old('kode_ruangan')) value="{{old('kode_ruangan')}}" @endif required>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="form-group">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">
                            <i class="fa fa-home"></i>
                        </span>
                        </div>
                        <input type="text" class="form-control" placeholder="{{__('Patient Name')}}" name="name" id="name" @if(isset($model)) value="{{$model->nama_ruangan}}" @elseif(old('name')) value="{{old('name')}}" @endif required>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="form-group">
                    <div class="form-group">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">
                                <i class="fas fa-globe"> STATUS</i>
                            </span>
                            </div>
                            <input type="checkbox" name="status" id="status" class="form-control" @if(isset($model)) value="{{$model->status}}" @elseif(old('status')) value="{{old('status')}}" @endif @if(isset($model) && $model->status == true) "selected"  @else "" @endif  >
                        </div>
                    </div>
                </div>
            </div>

</div>
