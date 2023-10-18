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
}
