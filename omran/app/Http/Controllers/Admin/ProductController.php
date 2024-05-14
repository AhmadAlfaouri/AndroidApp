<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Add_product_Request;
use App\Http\Traits\GeneralTrait;
use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    use GeneralTrait;

    protected function save_image($image)
    {

        $date = Carbon::now()->format('Ymd');
        $photo_extention = $image->getClientOriginalExtension();
        $photo_name = $date . '_' . rand() . '.' . $photo_extention;
        $path = 'images/products';
        $image->move($path, $photo_name);
        return $path . '/' . $photo_name;
    }
    public function Add_Product(Add_product_Request $request)
    {
        $data = $request->validated([]);
        $data['image'] = $this->save_image($data['image']);
        Product::create($data);
        return $this->returnMSG('Add product successfuly');
    }
}
