<?php

namespace App\Http\Controllers;

use App\Http\Traits\GeneralTrait;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    use GeneralTrait;
    public function count_user(Request $request){
        $count = User::count();
        return $this->returnData('count',$count,'the number of Users');
    }

}
