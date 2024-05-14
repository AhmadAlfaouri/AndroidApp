<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Traits\GeneralTrait;
use App\Models\Catagory;
use App\Models\Product;
use Illuminate\Http\Request;

class CatagoryController extends Controller
{
    //
    use GeneralTrait;
    public function Add_Catagory(Request $request)
    {
        $data = $request->validate([
            'name' => 'required|string',
            'sub_name' => 'required|string'
        ]);
        $catagory = Catagory::create($data);
        $catagory->makeHidden('created_at', 'updated_at');
        return $this->returnData('catagory', $catagory, 'Add successfuly');
    }

    public function Edit_Catagory(Request $request)
    {

        $data = $request->validate([
            'id' => 'required|exists:catagories,id',
            'name' => 'required|string',
            'sub_name' => 'required|string'
        ]);
        $catagory = Catagory::where('id', $request->id)->first();
        $catagory->update($data);
        $catagory->makeHidden('created_at', 'updated_at');
        return $this->returnData('catagory', $catagory, 'edit successfuly');
    }

    public function Get_Catagories()
    {
        $catagories = Catagory::get();
        return $this->returnData('catagories', $catagories, 'This is all catagories');
    }
    public function Get_CatagoryByID(Request $request){

        $request->validate([
            'id' => 'required|exists:catagories,id',
        ]);
        $catagory= Catagory::where('id',$request->id)->first();
        $catagory->makeVisble('created_at','updated_at');
        return $this-> returnData('catagory',$catagory,'Get By Id');
    }

    public function Delete_Catagory(Request $request){

        $request->validate([
            'id' => 'required|exists:catagories,id',
        ]);
        $catagory= Catagory::where('id',$request->id)->first();
        $catagory->delete();
        return $this-> returnMSG('Deleted successfuly');
    }


}
