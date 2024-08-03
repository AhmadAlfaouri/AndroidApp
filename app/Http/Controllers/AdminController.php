<?php

namespace App\Http\Controllers;

use App\Http\Requests\AdminRequest;
use App\Models\Catagories;
use App\Models\Products;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{

    public function register_User( Request $request)
    {
        $data['name']    = $request->name;
        $data['phone']    = $request->phone;
        $data['email']    = $request->email;
        $data['password']    = Hash::make($request->password) ;
        $data['address']    = $request->address;
        $da = User::create($data);
        return response()->json($data);

    }

    public function login(Request $request)
    {
        $data = $request->only('email' ,'password');

        if(Auth::attempt($data)) {
            $user = Auth::user();
            $token = $user->createToken('auth_token')->plainTextToken;

            return response()->json([
                'token' => $token,
                'user' => $user,
            ]);

        }

        else{
            return response()->json('user  found' , 401);
        }
    }
    public function add_product(Request $request)
    {

        $data['catagories_id']=$request->catagories_id;
        $data['quanity'] = $request->quanity;
        $data['width'] = $request->width;
        $data['name'] = $request->name;
        $data['price'] = $request->price;
        $data['length'] = $request->length;
        $data['discount'] = $request->discount;
        $data['review_total'] = $request->review_total;
        $data['description'] = $request->description;
        $data['vector'] = $request->vector;
        $data['image'] = $request->image;
        $data['price_after_discount']=$request->price_after_discount;
        $user = Products::create($data);
        return response()->json($data);

    }

    public function delete_product($id)
    {
        $data=Products::find($id);
        $data->delete();
        return response()->json('delete_product');
    }
    public function add_Catagories(Request $request)
    {
        $data['name'] = $request->name;
        $data['sub_name'] = $request->sub_name;
        $user = Catagories::create($data);
        return response()->json('add_Catagories');

    }

    public function show_one_products($id)
    {
        $data = Products::where('id', $id)->first();
        return response()->json($data);
    }

        public function update_products(Request $request,$id)
    {
        $data=Products::where('id',$id)->first();
        $data->update([
            'catagories_id'=>$request->catagories_id ?? $data->catagories_id,
            'quanity'=>$request->quanity ??$data->quanity,
            'width'=>$request->width ?? $data->width,
            'name'=>$request->name ??$data->name,
            'price'=>$request->price ?? $data->price,
            'length'=>$request->length ??$data->length,
            'discount'=>$request->discount??$data->discount,
            'review_total'=>$request->review_total??$data->review_total,
            'description'=>$request->description??$data->description,
            'vector'=>$request->vector??$data->vector,
            'image'=>$request->image??$data->image,
        ]);
        return response()->json($data);
    }
    public function numbers_user()
    {

        $data=User::count();

        return response()->json([$data]);
    }
    public function numbers_products()
    {

        $data=Products::count();

        return response()->json([$data]);
    }
    public function show_products()
    {
        $data= Products::get();
        return response()->json($data);
    }
    public function show_one_user($id)
    {
        $data = User::where('id', $id)->first();
        return response()->json($data);
    }
    public function update_user(Request $request,$id)
    {
        $data=User::where('id',$id)->first();
        $data->update([
            'name'=>$request->name ?? $data->name,
            'phone'=>$request->phone ??$data->phone,
            'email'=>$request->email ?? $data->email,
            'password'=>$request->password ??$data->password,
            'address'=>$request->address ??$data->address,
        ]);
            return response()->json($data);
        }

}
