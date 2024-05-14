<?php

namespace App\Http\Controllers;

use App\Http\Traits\GeneralTrait;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    use GeneralTrait;
    public function register(Request $request)
    {

        $data = $request->validate([
            'name' => 'required|alpha',
            'email' => 'required|email|unique:users,email',
            'phone' => 'required|string',
            'address' => 'required|string',
            'password' => 'required|string|min:8',
        ]);
        $data['type'] = 'user';
        $user = User::create($data);
        return $this->returnData('user', $user, 'registered');
    }



    public function login(Request $request)
    {
        $data = $request->validate([
            'email' => 'required|email',
            'password' => 'required|string|min:8',
        ]);
        $user = User::where('email', $data['email'])->first();
        // $user->makeHidden('created_at','updated_at','type','phone');
        // $user['role']= $user->type =='user' ? 1:0 ;
        if ($user) {
            if (!Hash::check($data['password'], $user->password)) {
                return $this->returnError('incorrect password', 402);
            } else {
                // $token = DB::table('personal_access_tokens')
                //     ->where('tokenable_id', $user->id)
                //     ->first();

                if ($user->remember_token == null) {
                    $token = $user->createToken('auth_token')->plainTextToken;
                    $user['remember_token'] = $token;
                    $user->save();
                } else {
                    $token = $user->remember_token;
                }

                $message = [
                    'user' => $user,
                    'token' => $token,
                ];
                return $this->returnData('data', $message, 'logined successfuly');
            }
        } else {
            return $this->returnError('incorrect email', 402);
        }
    }
}
