<?php

namespace App\Http\Controllers;

use App\Models\Catagories;
use App\Models\Products;
use App\Models\Reviews;
use Illuminate\Http\Request;

class CostomarController extends Controller
{

Public function catagories_Search(Request $request)
{
$data = Catagories::where('name' ,$request->name)->with('pro')->get();
return response()->json($data);
}

Public function price_Search(Request $request)
{
$data = Products::where('price' ,$request->price)->get();
return response()->json($data);
}

    public function add_review(Request $request)
    {
        $data['products_id'] = $request->products_id ;
        $data['user_id'] = $request->user_id;
        $data['reviews'] = $request->reviews;
        $data['description']=$request->description;
        $user =Reviews::create($data);
        return response()->json($data);

    }


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
