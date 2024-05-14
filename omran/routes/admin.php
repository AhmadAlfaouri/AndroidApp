<?php

use App\Http\Controllers\Admin\CatagoryController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware'=>['auth:sanctum','admin_role']],function () {
    Route::post('add-catagory', [CatagoryController::class, 'Add_Catagory']);
    Route::post('edit-catagory', [CatagoryController::class, 'Edit_Catagory']);
});
Route::post('delete-catagory',[CatagoryController::class,'Delete_Catagory']);
Route::post('add-product', [ProductController::class, 'Add_Product']);

