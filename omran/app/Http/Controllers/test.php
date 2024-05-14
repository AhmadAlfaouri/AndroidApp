<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;

class test extends Controller
{
    //
    public function  test(Request $request)
    {
        $date = Carbon::now()->format('Ymd');
        $x = $date.'_'.rand().'_.'.$request->image->getClientOriginalExtension();
        return response()->json($x);
    }
}
