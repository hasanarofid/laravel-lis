<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\RuanganM;
use Str;
use DataTables;
use Excel;

class RuanganController extends Controller
{
    //index
     public function index()
    {
        $ruangan=RuanganM::all();
        return view('admin.ruangan.index',compact('ruangan'));
    }

     /**
    * get patients datatable
    *
    * @access public
    * @var  @Request $request
    */
    public function ajax(Request $request)
    {
        $model=RuanganM::orderBy('nama_ruangan');

        return DataTables::eloquent($model)

         ->editColumn('code',function($ruangan){
            return $ruangan['kode_ruangan'];
        })
                 ->editColumn('name',function($ruangan){
            return $ruangan['nama_ruangan'];
        })
        ->editColumn('status',function($ruangan){
            return ($ruangan['status'] == true) ? 'aktif' : 'tidak aktif';
        })
        ->addColumn('action',function($ruangan){
            return view('admin.ruangan._action',compact('ruangan'));
        })
        ->toJson();
    }

    //create ruangan
    public function create(){
        return view('admin.ruangan.create');
    }

     //update ruangan
    public function update($id,Request $request){
          $model = RuanganM::find($id);
           $model->kode_ruangan = $request->kode_ruangan;
        $model->nama_ruangan = $request->name;
        $model->status = isset($request->status) ? true : false;
        $model->save();

            session()->flash('success','ruangan updated successfully');

        return redirect()->route('admin.ruangan.index');

    }

    //simpan ruangan
    public function store(Request $request){

        // dd($request);
        $model = new RuanganM();
        $model->kode_ruangan = $request->kode_ruangan;
        $model->nama_ruangan = $request->name;
        $model->status = isset($request->status) ? true : false;
        $model->save();

        session()->flash('success','ruangan created successfully');

        return redirect()->route('admin.ruangan.index');
    }

    //detail
    public function detail($id){
        $model = RuanganM::find($id);
        return view('admin.ruangan.detail',compact('model'));
    }

        //detail
    public function edit($id){
         $model = RuanganM::find($id);
        return view('admin.ruangan.edit',compact('model'));
    }

     public function destroy($id)
    {
        $model=RuanganM::findOrFail($id);//get patient
        $model->delete();//delete patient
        session()->flash('success',__('ruangan deleted successfully'));
        return redirect()->route('admin.ruangan.index');
    }
}
